using Microsoft.AspNetCore.Mvc;
using EasyTopup.Data.Models;
using Microsoft.AspNetCore.Identity;
using EasyTopup.API.Repositories;
using System.Threading.Tasks;
using EasyTopup.Data.Response;
using System;
using System.Collections.Generic;

namespace EasyTopup.API.Controllers
{
    [Route("[controller]/[action]")]
    //[ApiController]
    public class DashboardController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IDashboardRepository _dashboardRepository;

        public DashboardController(UserManager<ApplicationUser> userManager, IDashboardRepository dashboardRepository)
        {
            _userManager = userManager;
            _dashboardRepository = dashboardRepository;
        }

    }
}