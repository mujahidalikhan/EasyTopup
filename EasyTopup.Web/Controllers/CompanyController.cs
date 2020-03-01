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
    public class CompanyController : Controller
    {
        // GET: Company
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
                    pageId = 1,
                    pageSize = -1,
                };
                string response = await APICallerExtensions.APICallAsync("Company/GetAll", paginationViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return View();
                }
                CompanyViewModel companyViewModel = new CompanyViewModel();
                var content = JsonConvert.DeserializeObject<SingleResponse<List<Company>>>(response);
                if (!content.DidError)
                {
                    companyViewModel.listCompanies = content.Model;
                    return View(companyViewModel);
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
        public async Task<IActionResult> Create(CompanyViewModel companyViewModel)
        {
            try
            {
                companyViewModel.Photo = companyViewModel.base64Picture;
                string response = await APICallerExtensions.APICallAsync("Company/Create", companyViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(CompanyController.Index), "Company");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<Company>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(CompanyController.Index), "Company");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(CompanyController.Index), "Company");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(CompanyController.Index), "Company");
            }
        }

        [HttpPost]
        public async Task<IActionResult> Block(int companyId)
        {
            try
            {
                string response = await APICallerExtensions.APICallAsync("Company/Block", companyId, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(CompanyController.Index), "Company");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<Company>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(CompanyController.Index), "Company");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(CompanyController.Index), "Company");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(CompanyController.Index), "Company");
            }
        }
    }
}