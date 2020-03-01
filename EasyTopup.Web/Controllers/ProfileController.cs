using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using EasyTopup.Data.Models;
using EasyTopup.Data.Response;
using EasyTopup.Data.ViewModels;
using EasyTopup.Web.Extensions;

namespace EasyTopup.Web.Controllers
{
    public class ProfileController : Controller
    {
        public static IHostingEnvironment _hostingEnvironment { get; set; }

        // GET: Profile
        public async Task<ActionResult> Index()
        {
            try
            {
                if (!LocalStorageExtensions.ValidSession(ControllerContext.ActionDescriptor.ControllerName))
                {
                    LocalStorageExtensions.Clear();
                    return RedirectToAction(nameof(AccountController.Login), "Account");
                }

                string userId = LocalStorageExtensions.Get(StorageType.UserId).ToString();// HttpContext.Session.GetObject(StorageType.UserId).ToString();

                ProfileViewModel profileViewModel = new ProfileViewModel();

                profileViewModel.UserId = userId;
                string response = await APICallerExtensions.APICallAsync("Profile/Get", profileViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return View();
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<ProfileViewModel>>(response);
                if (!content.DidError)
                {
                    if (string.IsNullOrEmpty(content.Model.Picture))
                    {

                        if (_hostingEnvironment.IsDevelopment())
                        {
                            content.Model.Picture = "/app-assets/images/user.png";
                        }
                        else
                        {
                            content.Model.Picture = "../app-assets/images/user.png";
                        }
                    }

                    return View(content.Model);
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
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Update(ProfileViewModel profileViewModel)
        {
            try
            {
                string response = await APICallerExtensions.APICallAsync("Profile/Save", profileViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return View(profileViewModel);
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<ApplicationUser>>(response);
                if (!content.DidError)
                {
                    LocalStorageExtensions.Store(StorageType.Picture, content.Model.Picture);
                    return RedirectToAction("Index");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return View(profileViewModel);
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return View(profileViewModel);
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> ChangePassword(ProfileViewModel profileViewModel)
        {
            try
            {
                string response = await APICallerExtensions.APICallAsync("Profile/ChangePassword", profileViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return View(profileViewModel);
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<ApplicationUser>>(response);
                if (!content.DidError)
                {
                    LocalStorageExtensions.Store(StorageType.Picture, content.Model.Picture);
                    return RedirectToAction("Index");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return View(profileViewModel);
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return View(profileViewModel);
            }
        }

    }
}