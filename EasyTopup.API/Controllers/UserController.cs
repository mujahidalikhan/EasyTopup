using Microsoft.AspNetCore.Mvc;
using EasyTopup.Data.Models;
using Microsoft.AspNetCore.Identity;
using EasyTopup.API.Repositories;
using System.Threading.Tasks;
using EasyTopup.Data.Response;
using System;
using System.Collections.Generic;
using EasyTopup.Data.ViewModels;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Linq;
using EasyTopup.API.Helpers;
using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Hosting;

namespace EasyTopup.API.Controllers
{
    [Route("[controller]/[action]")]
    //[ApiController]
    public class UserController : ControllerBase
    {
        public static IHostingEnvironment _hostingEnvironment { get; set; }

        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IUserRepository _userRepository;
        private readonly ICompanyRepository _companyRepository;
        private readonly IShopRepository _shopRepository;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly IConfiguration _configuration;
        private readonly ITemplateRepository _templateRepository;
        private readonly IBalanceRepository _balanceRepository;

        private bool result = true;
        private string error = string.Empty;

        public UserController(UserManager<ApplicationUser> userManager, IUserRepository userRepository,
            ICompanyRepository companyRepository, IShopRepository shopRepository,
            RoleManager<IdentityRole> roleManager, IConfiguration configuration, ITemplateRepository templateRepository,
            IBalanceRepository balanceRepository)
        {
            _userManager = userManager;
            _userRepository = userRepository;
            _companyRepository = companyRepository;
            _shopRepository = shopRepository;
            _roleManager = roleManager;
            _configuration = configuration;
            _templateRepository = templateRepository;
            _balanceRepository = balanceRepository;

        }

        // POST: User/GetAll
        [HttpPost]
        public async Task<object> GetAll([FromBody] PaginationViewModel paginationViewModel)
        {
            CreateUserViewModel createUserViewModel = new CreateUserViewModel();

            try
            {
                createUserViewModel.listUsers = new List<UserViewModel>();
                createUserViewModel.listUsers = _userRepository.GetAll(paginationViewModel.userId, paginationViewModel.pageId, paginationViewModel.pageSize);
                createUserViewModel.listCompanies = new List<Company>();
                createUserViewModel.listCompanies = _companyRepository.GetAll(1, -1);
                createUserViewModel.listShops = new List<Shop>();
                createUserViewModel.listShops = _shopRepository.GetAll(paginationViewModel.userId, 1, -1);

                createUserViewModel.listUserRoles = new List<SelectListItem>();
                List<string> roles = _roleManager.Roles.Where(r => !(r.Name.Contains("Admin"))).Select(x => x.Name).ToList();
                foreach (var item in roles)
                {
                    SelectListItem listItem = new SelectListItem
                    {
                        Text = item,
                        Value = item
                    };
                    createUserViewModel.listUserRoles.Add(listItem);
                }
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<CreateUserViewModel>
            {
                Message = "Get all users work successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = createUserViewModel
            };
        }


        // POST: User/SaveSettings
        [HttpPost]
        public async Task<object> SaveSettings([FromBody] UserSettingsViewModel userSettingsViewModel)
        {
            ApplicationUser applicationUser = new ApplicationUser();
            try
            {
                applicationUser = _userRepository.SaveSettings(userSettingsViewModel.UserId, userSettingsViewModel.UserRole, userSettingsViewModel.CompanyId, userSettingsViewModel.ShopId);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<ApplicationUser>
            {
                Message = "User settings saved successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = applicationUser
            };
        }

        // POST: User/Shops
        [HttpPost]
        public async Task<object> GetCompaniesShops()
        {
            LayoutViewModel layoutViewModel = new LayoutViewModel();
            try
            {
                //layoutViewModel.listCompanies = _companyRepository.GetAll(1, -1);
                //layoutViewModel.listShops = _shopRepository.GetAll(1, -1);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<LayoutViewModel>
            {
                Message = "Companies and Shops information get successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = layoutViewModel
            };
        }

        // POST: User/Create
        [HttpPost]
        public async Task<object> Create([FromBody] CreateUserViewModel createUserViewModel)
        {
            try
            {
                var user = new ApplicationUser
                {
                    UserName = createUserViewModel.Email,
                    Email = createUserViewModel.Email,
                    FirstName = createUserViewModel.FirstName,
                    LastName = createUserViewModel.LastName,
                    IsActive = true,
                    IsCompanySelected = true,
                    IsShopSelected = true,
                };
                string password = GenerateRandomPassword();
                var result = await _userManager.CreateAsync(user, password);

                if (result.Succeeded)
                {
                    await _userManager.AddToRoleAsync(user, createUserViewModel.UserRole);

                    UserCompanyShopViewModel userCompanyShopViewModel = _userRepository.InsertUserToCompanyShop(user.Id, createUserViewModel.CompanyId, createUserViewModel.ShopId, createUserViewModel.CreatedBy);

                    await SendEmailAsync(userCompanyShopViewModel.Email, password, userCompanyShopViewModel.UserName, userCompanyShopViewModel.CompanyName, userCompanyShopViewModel.ShopName);

                    return new SingleResponse<ApplicationUser>
                    {
                        Message = "User created successfully",
                        DidError = false,
                        ErrorMessage = string.Empty,
                        Token = string.Empty,
                        Model = user
                    };
                }
                else
                {
                    return new SingleResponse<ApplicationUser>
                    {
                        Message = result.Errors.FirstOrDefault().Description,
                        DidError = true,
                        ErrorMessage = string.Empty,
                        Token = string.Empty,
                        Model = user
                    };
                }
            }
            catch (Exception ex)
            {
                return new SingleResponse<ApplicationUser>
                {
                    Message = string.Empty,
                    DidError = true,
                    ErrorMessage = ex.Message,
                    Token = string.Empty,
                    Model = null
                };
            }
        }

        private async Task SendEmailAsync(string email, string password, string name, string company, string shop)
        {
            try
            {
                var apiKey = _configuration["SendGrid:EmailApiKey"];
                var webUrl = string.Empty;
                if (_hostingEnvironment.IsDevelopment())
                {
                    webUrl = _configuration["WebSettings:WebUrlDev"];
                }
                else
                {
                    webUrl = _configuration["WebSettings:WebUrlProd"];
                }

                EmailTemplate emailTemplate = _templateRepository.GetByName("UserCreated");
                string content = EmailHelper.Base64Decode(emailTemplate.Content);

                content = content.Replace("{website}", webUrl);
                content = content.Replace("{email}", email);
                content = content.Replace("{password}", password);
                content = content.Replace("{name}", name);
                content = content.Replace("{company}", company);
                content = content.Replace("{shop}", shop);

                await EmailHelper.EmailExecute(apiKey, email, name, content);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// Generates a Random Password
        /// respecting the given strength requirements.
        /// </summary>
        /// <param name="opts">A valid PasswordOptions object
        /// containing the password strength requirements.</param>
        /// <returns>A random password</returns>
        private string GenerateRandomPassword(PasswordOptions opts = null)
        {
            if (opts == null) opts = new PasswordOptions()
            {
                RequiredLength = 8,
                RequiredUniqueChars = 4,
                RequireDigit = true,
                RequireLowercase = true,
                RequireNonAlphanumeric = true,
                RequireUppercase = true
            };

            string[] randomChars = new[] {
                "ABCDEFGHJKLMNOPQRSTUVWXYZ",    // uppercase 
                "abcdefghijkmnopqrstuvwxyz",    // lowercase
                "0123456789",                   // digits
                "!@$?_-"                        // non-alphanumeric
            };
            Random rand = new Random(Environment.TickCount);
            List<char> chars = new List<char>();

            if (opts.RequireUppercase)
                chars.Insert(rand.Next(0, chars.Count),
                    randomChars[0][rand.Next(0, randomChars[0].Length)]);

            if (opts.RequireLowercase)
                chars.Insert(rand.Next(0, chars.Count),
                    randomChars[1][rand.Next(0, randomChars[1].Length)]);

            if (opts.RequireDigit)
                chars.Insert(rand.Next(0, chars.Count),
                    randomChars[2][rand.Next(0, randomChars[2].Length)]);

            if (opts.RequireNonAlphanumeric)
                chars.Insert(rand.Next(0, chars.Count),
                    randomChars[3][rand.Next(0, randomChars[3].Length)]);

            for (int i = chars.Count; i < opts.RequiredLength
                || chars.Distinct().Count() < opts.RequiredUniqueChars; i++)
            {
                string rcs = randomChars[rand.Next(0, randomChars.Length)];
                chars.Insert(rand.Next(0, chars.Count),
                    rcs[rand.Next(0, rcs.Length)]);
            }

            return new string(chars.ToArray());
        }

        // POST: User/AddBalance
        [HttpPost]
        public async Task<object> AddBalance([FromBody] Balance balance)
        {
            try
            {
                try
                {
                    balance = _balanceRepository.Create(balance);
                }
                catch (Exception ex)
                {
                    result = false;
                    error = ex.Message;
                }

                return new SingleResponse<Balance>
                {
                    Message = "Balance added successfully",
                    DidError = false,
                    ErrorMessage = string.Empty,
                    Token = string.Empty,
                    Model = balance
                };
            }
            catch (Exception ex)
            {
                return new SingleResponse<Balance>
                {
                    Message = string.Empty,
                    DidError = true,
                    ErrorMessage = ex.Message,
                    Token = string.Empty,
                    Model = null
                };
            }
        }

        // POST: User/Block
        [HttpPost]
        public async Task<object> Block([FromBody] string userId)
        {
            try
            {
                ApplicationUser user = await _userManager.FindByIdAsync(userId);
                user.IsActive = false;
                await _userManager.UpdateAsync(user);

                return new SingleResponse<ApplicationUser>
                {
                    Message = "User blocked successfully",
                    DidError = false,
                    ErrorMessage = string.Empty,
                    Token = string.Empty,
                    Model = user
                };
            }
            catch (Exception ex)
            {
                return new SingleResponse<Balance>
                {
                    Message = string.Empty,
                    DidError = true,
                    ErrorMessage = ex.Message,
                    Token = string.Empty,
                    Model = null
                };
            }
        }
    }
}