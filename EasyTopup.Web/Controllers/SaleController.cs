using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using EasyTopup.Web.Extensions;
using EasyTopup.Data.ViewModels;
using Newtonsoft.Json;
using EasyTopup.Data.Models;
using EasyTopup.Data.Response;

namespace EasyTopup.Web.Controllers
{
    public class SaleController : Controller
    {
        // GET: Sale
        public async Task<ActionResult> Index()
        {
            if (!LocalStorageExtensions.ValidSession(ControllerContext.ActionDescriptor.ControllerName))
            {
                LocalStorageExtensions.Clear();
                return RedirectToAction(nameof(AccountController.Login), "Account");
            }
            SaleViewModel saleViewModel = new SaleViewModel();
            try
            {
                saleViewModel.UserId = LocalStorageExtensions.Get(StorageType.UserId);
                saleViewModel.pageId = 1;
                saleViewModel.pageSize = -1;
                string response = await APICallerExtensions.APICallAsync("Sale/GetCardsByUserId", saleViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return View();
                }

                var content = JsonConvert.DeserializeObject<SingleResponse<SaleViewModel>>(response);
                if (!content.DidError)
                {
                    saleViewModel = content.Model;
                    return View(saleViewModel);
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return View(saleViewModel);
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return View(saleViewModel);
            }
        }

        [HttpPost]
        public async Task<IActionResult> Create([FromBody]SaleViewModel saleViewModel)
        {
            try
            {
                //SaleViewModel saleViewModel = new SaleViewModel();
                string userId = LocalStorageExtensions.Get(StorageType.UserId);
                saleViewModel.UserId = userId;
                string response = await APICallerExtensions.APICallAsync("Sale/Create", saleViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return Json(response);
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<CreateSaleViewModel>>(response);
                if (!content.DidError)
                {
                    //Get Remaining Balance
                    RemainingBalanceViewModel remainingBalanceViewModel = new RemainingBalanceViewModel()
                    {
                        UserId = userId
                    };

                    string responseBalance = await APICallerExtensions.APICallAsync("RemainingBalance/GetByUserId", remainingBalanceViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                    if (responseBalance.ToLower().Contains("exception:"))
                    {
                        ModelState.AddModelError(string.Empty, responseBalance);
                    }
                    var contentBalance = JsonConvert.DeserializeObject<SingleResponse<RemainingBalance>>(responseBalance);
                    if (!contentBalance.DidError)
                    {
                        if (contentBalance.Model != null)
                            LocalStorageExtensions.Store(StorageType.Balance, contentBalance.Model.CurrentAmount.ToString());
                    }

                    return Json(content.Model);
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return Json(content.Message);
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return Json(ex.Message);
            }
        }

    }
}