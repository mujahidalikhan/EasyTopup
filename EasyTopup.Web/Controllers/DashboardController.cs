using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using EasyTopup.Web.Extensions;

namespace EasyTopup.Web.Controllers
{
    public class DashboardController : Controller
    {
        // GET: Dashboard
        public ActionResult Index()
        {
            if (!LocalStorageExtensions.ValidSession(ControllerContext.ActionDescriptor.ControllerName))
            {
                LocalStorageExtensions.Clear();
                return RedirectToAction(nameof(AccountController.Login), "Account");
            }
            return View();
        }

    }
}