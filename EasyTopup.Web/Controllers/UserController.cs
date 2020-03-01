using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using EasyTopup.Data.Models;
using EasyTopup.Data.Response;
using EasyTopup.Data.ViewModels;
using EasyTopup.Web.Extensions;

namespace EasyTopup.Web.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        public async Task<ActionResult> Index()
        {
            if (!LocalStorageExtensions.ValidSession(ControllerContext.ActionDescriptor.ControllerName))
            {
                LocalStorageExtensions.Clear();
                return RedirectToAction(nameof(AccountController.Login), "Account");
            }

            try
            {
                PaginationViewModel paginationViewModel = new PaginationViewModel()
                {
                    userId = LocalStorageExtensions.Get(StorageType.UserId),
                    pageId = 1,
                    pageSize = -1,
                };
                string response = await APICallerExtensions.APICallAsync("User/GetAll", paginationViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return View();
                }
                CreateUserViewModel createUserViewModel = new CreateUserViewModel();
                var content = JsonConvert.DeserializeObject<SingleResponse<CreateUserViewModel>>(response);
                if (!content.DidError)
                {
                    createUserViewModel = content.Model;
                    return View(createUserViewModel);
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return View();
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return View();
            }
        }

        [HttpPost]
        public async Task<JsonResult> SaveSettings(UserSettingsViewModel userSettingsViewModel)
        {
            try
            {
                string response = await APICallerExtensions.APICallAsync("User/SaveSettings", userSettingsViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return Json(new
                    {
                        result = false,
                        error = response
                    });
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<ApplicationUser>>(response);
                if (!content.DidError)
                {
                    if (content.Model.IsCompanySelected)
                    {
                        LocalStorageExtensions.Store(StorageType.IsCompanySelected, "true");
                    }
                    if (content.Model.IsShopSelected)
                    {
                        LocalStorageExtensions.Store(StorageType.IsShopSelected, "true");
                    }

                    return Json(new
                    {
                        content.Model,
                    });
                }
                else
                {
                    return Json(new
                    {
                        result = false,
                        error = content == null ? "Content is null or empty" : content.ErrorMessage
                    });
                }
            }
            catch (Exception ex)
            {
                return Json(new
                {
                    result = false,
                    error = ex.Message
                });
            }
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(CreateUserViewModel createUserViewModel)
        {
            try
            {
                string userRole = LocalStorageExtensions.Get(StorageType.Role);
                if (userRole == "Company")
                {
                    createUserViewModel.UserRole = "Shop";
                    createUserViewModel.CompanyId = 0;
                }
                createUserViewModel.Picture = createUserViewModel.base64Picture;
                createUserViewModel.CreatedBy = LocalStorageExtensions.Get(StorageType.UserId);

                string response = await APICallerExtensions.APICallAsync("User/Create", createUserViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(UserController.Index), "User");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<CreateUserViewModel>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(UserController.Index), "User");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(UserController.Index), "User");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(UserController.Index), "User");
            }
        }

        [HttpPost]
        public async Task<IActionResult> AddBalance(Balance balance)
        {
            try
            {
                balance.AddedBy = LocalStorageExtensions.Get(StorageType.UserId);

                string response = await APICallerExtensions.APICallAsync("User/AddBalance", balance, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(UserController.Index), "User");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<Balance>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(UserController.Index), "User");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(UserController.Index), "User");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(UserController.Index), "User");
            }
        }


        [HttpPost]
        public async Task<IActionResult> Block(string userId)
        {
            try
            {
                string response = await APICallerExtensions.APICallAsync("User/Block", userId, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(UserController.Index), "User");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<ApplicationUser>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(UserController.Index), "User");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(UserController.Index), "User");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(UserController.Index), "User");
            }
        }
    }
}