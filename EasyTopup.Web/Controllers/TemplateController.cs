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
    public class TemplateController : Controller
    {
        // GET: Template
        public async Task<ActionResult> Index()
        {
            if (!LocalStorageExtensions.ValidSession(ControllerContext.ActionDescriptor.ControllerName))
            {
                LocalStorageExtensions.Clear();
                return RedirectToAction(nameof(AccountController.Login), "Account");
            }

            TemplateViewModel templateViewModel = new TemplateViewModel();
            templateViewModel.listTemplate = new List<EmailTemplate>();

            try
            {
                
                PaginationViewModel paginationViewModel = new PaginationViewModel()
                {
                    pageId = 1,
                    pageSize = -1,
                };
                string response = await APICallerExtensions.APICallAsync("Template/GetAll", paginationViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return View();
                }
                
                var content = JsonConvert.DeserializeObject<SingleResponse<List<EmailTemplate>>>(response);
                if (!content.DidError)
                {
                    templateViewModel.listTemplate = content.Model;
                    return View(templateViewModel);
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return View(templateViewModel);
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return View(templateViewModel);
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(TemplateViewModel templateViewModel)
        {
            try
            {
                string response = await APICallerExtensions.APICallAsync("Template/Create", templateViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(TemplateController.Index), "Template");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<TemplateViewModel>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(TemplateController.Index), "Template");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(TemplateController.Index), "Template");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(TemplateController.Index), "Template");
            }
        }

        [HttpPost]
        public async Task<IActionResult> Block(int templateId)
        {
            try
            {
                string response = await APICallerExtensions.APICallAsync("Template/Block", templateId, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(TemplateController.Index), "Template");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<TemplateViewModel>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(TemplateController.Index), "Template");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(TemplateController.Index), "Template");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(TemplateController.Index), "Template");
            }
        }
    }
}