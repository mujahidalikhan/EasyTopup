using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using EasyTopup.Web.Extensions;
using EasyTopup.Data.ViewModels;
using Newtonsoft.Json;
using EasyTopup.Data.Response;
using EasyTopup.Data.Models;

namespace EasyTopup.Web.Controllers
{
    public class CardController : Controller
    {
        // GET: Card
        public async Task<ActionResult> Index()
        {
            if (!LocalStorageExtensions.ValidSession(ControllerContext.ActionDescriptor.ControllerName))
            {
                LocalStorageExtensions.Clear();
                return RedirectToAction(nameof(AccountController.Login), "Account");
            }
            CardViewModel cardViewModel = new CardViewModel();
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
                    cardViewModel.listCards = content.Model;
                    return View(cardViewModel);
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return View(cardViewModel);
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return View(cardViewModel);
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(CardViewModel cardViewModel)
        {
            try
            {
                string userId = LocalStorageExtensions.Get(StorageType.UserId);
                cardViewModel.UserId = userId;
                cardViewModel.Photo = cardViewModel.base64Picture;
                string response = await APICallerExtensions.APICallAsync("Card/Create", cardViewModel, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(CardController.Index), "Card");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<Card>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(CardController.Index), "Card");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(CardController.Index), "Card");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(CardController.Index), "Card");
            }
        }

        [HttpPost]
        public async Task<IActionResult> Block(int cardId)
        {
            try
            {
                string response = await APICallerExtensions.APICallAsync("Card/Block", cardId, false, HttpContext.Session.GetObject(StorageType.Token).ToString());
                if (response.ToLower().Contains("exception:"))
                {
                    ModelState.AddModelError(string.Empty, response);
                    return RedirectToAction(nameof(CardController.Index), "Card");
                }
                var content = JsonConvert.DeserializeObject<SingleResponse<Card>>(response);
                if (!content.DidError)
                {
                    return RedirectToAction(nameof(CardController.Index), "Card");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, content.Message);
                    return RedirectToAction(nameof(CardController.Index), "Card");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
                return RedirectToAction(nameof(CardController.Index), "Card");
            }
        }
    }
}