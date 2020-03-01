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
    public class ShopController : Controller
    {
        // GET: Shop
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
                string response = await APICallerExtensions.APICallAsync("Shop/GetAll", paginationViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return View();
                }
                ShopViewModel shopViewModel = new ShopViewModel();
                var content = JsonConvert.DeserializeObject<SingleResponse<List<Shop>>>(response);
                if (!content.DidError)
                {
                    shopViewModel.listShops = content.Model;

                    PaginationViewModel paginationViewModel2 = new PaginationViewModel()
                    {
                        pageId = 1,
                        pageSize = -1,
                    };
                    string response2 = await APICallerExtensions.APICallAsync("Company/GetAll", paginationViewModel2, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                    if (response.ToLower().Contains("exception:"))
                    {
                        ModelState.AddModelError(string.Empty, response2);
                    }
                    var content2 = JsonConvert.DeserializeObject<SingleResponse<List<Company>>>(response2);
                    if (!content.DidError)
                    {
                        shopViewModel.listCompanies = content2.Model;
                    }

                    return View(shopViewModel);
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
        public async Task<IActionResult> Create(ShopViewModel shopViewModel)
        {
            try
            {
                shopViewModel.UserId = LocalStorageExtensions.Get(StorageType.UserId);
                shopViewModel.Photo = shopViewModel.base64Picture;
                string response = await APICallerExtensions.APICallAsync("Shop/Create", shopViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(ShopController.Index), "Shop");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<Shop>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(ShopController.Index), "Shop");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(ShopController.Index), "Shop");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(ShopController.Index), "Shop");
            }
        }

        [HttpPost]
        public async Task<IActionResult> Block(int shopId)
        {
            try
            {
                string response = await APICallerExtensions.APICallAsync("Shop/Block", shopId, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(ShopController.Index), "Shop");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<Shop>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(ShopController.Index), "Shop");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(ShopController.Index), "Shop");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(ShopController.Index), "Shop");
            }
        }
    }
}