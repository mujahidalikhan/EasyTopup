using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using EasyTopup.Web.Extensions;
using EasyTopup.Data.ViewModels;
using EasyTopup.Data.Response;
using Newtonsoft.Json;
using EasyTopup.Data.Models;

namespace EasyTopup.Web.Controllers
{
    public class CodeController : Controller
    {
        // GET: Code
        public async Task<ActionResult> Index()
        {
            if (!LocalStorageExtensions.ValidSession(ControllerContext.ActionDescriptor.ControllerName))
            {
                LocalStorageExtensions.Clear();
                return RedirectToAction(nameof(AccountController.Login), "Account");
            }

            CodeViewModel codeViewModel = new CodeViewModel();
            try
            {
                PaginationViewModel paginationViewModel = new PaginationViewModel()
                {
                    userId = LocalStorageExtensions.Get(StorageType.UserId),
                    pageId = 1,
                    pageSize = -1,
                };
                string response = await APICallerExtensions.APICallAsync("Card/GetAll", paginationViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return View();
                }

                var content = JsonConvert.DeserializeObject<SingleResponse<List<Card>>>(response);
                if (!content.DidError)
                {
                    codeViewModel.listCards = content.Model;
                    codeViewModel.IsRange = true;
                    return View(codeViewModel);
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return View(codeViewModel);
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return View(codeViewModel);
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(CodeViewModel codeViewModel)
        {
            try
            {
                string userId = LocalStorageExtensions.Get(StorageType.UserId);
                codeViewModel.UserId = userId;
                if(codeViewModel.AddType == "Range") { codeViewModel.IsRange = true; }
                else if (codeViewModel.AddType == "Bulk") { codeViewModel.IsRange = false; }
                string response = await APICallerExtensions.APICallAsync("Code/Create", codeViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(CodeController.Index), "Code");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<List<Code>>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(CodeController.Index), "Code");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(CodeController.Index), "Code");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(CodeController.Index), "Code");
            }
        }

    }
}