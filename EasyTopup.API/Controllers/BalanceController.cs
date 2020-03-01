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
    public class BalanceController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IBalanceRepository _balanceRepository;

        private bool result = true;
        private string error = string.Empty;

        public BalanceController(UserManager<ApplicationUser> userManager, IBalanceRepository balanceRepository)
        {
            _userManager = userManager;
            _balanceRepository = balanceRepository;
        }

        // GET: Balance/GetAll
        [HttpGet]
        public async Task<object> GetAll()
        {
            List<Balance> listBalance = new List<Balance>();
            try
            {
                listBalance = _balanceRepository.GetAll();
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<List<Balance>>
            {
                Message = "Get all balance execute successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = listBalance
            };
        }

        // GET: Balance/GetById
        [HttpGet]
        public async Task<object> GetById(int id)
        {
            Balance balance = new Balance();
            try
            {
                balance = _balanceRepository.GetById(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Balance>
            {
                Message = "Get by id balance execute successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = balance
            };
        }

        // POST: Balance/Create
        [HttpPost]
        public async Task<object> Create([FromBody]Balance balance)
        {
            try
            {
                balance = _balanceRepository.Create(balance);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Balance>
            {
                Message = "Balance created successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = balance
            };
        }

        // POST: Balance/Edit
        [HttpPost]
        public async Task<object> Edit([FromBody] Balance balance)
        {
            try
            {
                balance = _balanceRepository.Edit(balance);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Balance>
            {
                Message = "Balance edited successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = balance
            };
        }

        // POST: Balance/Delete
        [HttpPost]
        public async Task<object> Delete(int id)
        {
            Balance balance = new Balance();
            try
            {
                balance = _balanceRepository.Delete(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Balance>
            {
                Message = "Balance deleted successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = balance
            };
        }

    }
}