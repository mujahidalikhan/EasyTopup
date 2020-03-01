using Microsoft.AspNetCore.Mvc;
using EasyTopup.Data.Models;
using Microsoft.AspNetCore.Identity;
using EasyTopup.API.Repositories;
using System.Threading.Tasks;
using EasyTopup.Data.Response;
using System;
using System.Collections.Generic;
using EasyTopup.Data.ViewModels;
using EasyTopup.API.Helpers;

namespace EasyTopup.API.Controllers
{
    [Route("[controller]/[action]")]
    //[ApiController]
    public class ProfileController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IProfileRepository _profileRepository;
        private readonly ICompanyRepository _companyRepository;
        private readonly IShopRepository _shopRepository;

        private bool result = true;
        private string error = string.Empty;

        public ProfileController(UserManager<ApplicationUser> userManager, IProfileRepository profileRepository, 
            ICompanyRepository companyRepository,
            IShopRepository shopRepository)
        {
            _userManager = userManager;
            _profileRepository = profileRepository;
            _companyRepository = companyRepository;
            _shopRepository = shopRepository;
        }

        // GET: Profile
        [HttpPost]
        public async Task<object> Get([FromBody] ProfileViewModel profileViewModel)
        {
            try
            {
                profileViewModel = _profileRepository.GetProfile(profileViewModel.UserId);
                profileViewModel.listCompanies = _companyRepository.GetAll(1, -1);
                profileViewModel.listShops = _shopRepository.GetAll(profileViewModel.UserId, 1, -1);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<ProfileViewModel>
            {
                Message = "User information get successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = profileViewModel
            };
        }

        [HttpPost]
        public async Task<object> Save([FromBody] ProfileViewModel profileViewModel)
        {
            var user = await _userManager.FindByIdAsync(profileViewModel.UserId);

            user.FirstName = profileViewModel.FirstName;
            user.LastName = profileViewModel.LastName;
            user.PhoneNumber = profileViewModel.Phone;
            user.Description = profileViewModel.Description;

            if (!string.IsNullOrEmpty(profileViewModel.base64Picture))
            {
                user.Picture = profileViewModel.base64Picture;
            }

            var result = await _userManager.UpdateAsync(user);

            return new SingleResponse<ApplicationUser>
            {
                Message = "Profile saved successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = user
            };
        }

        [HttpPost]
        public async Task<object> ChangePassword([FromBody] ProfileViewModel profileViewModel)
        {
            var user = await _userManager.FindByIdAsync(profileViewModel.UserId);
            try
            {
                var result = await _userManager.ChangePasswordAsync(user, profileViewModel.CurrentPassword, profileViewModel.NewPassword);
            }
            catch (Exception ex)
            {
            }
            
            return new SingleResponse<ApplicationUser>
            {
                Message = "Password changed successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = user
            };
        }

    }
}