using Microsoft.AspNetCore.Mvc;
using EasyTopup.Data.Models;
using Microsoft.AspNetCore.Identity;
using EasyTopup.API.Repositories;
using System.Threading.Tasks;
using EasyTopup.Data.Response;
using System;
using System.Collections.Generic;
using EasyTopup.Data.ViewModels;

namespace EasyTopup.API.Controllers
{
    [Route("[controller]/[action]")]
    //[ApiController]
    public class RemainingBalanceController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IRemainingBalanceRepository _remainingBalanceRepository;

        private bool result = true;
        private string error = string.Empty;

        public RemainingBalanceController(UserManager<ApplicationUser> userManager, IRemainingBalanceRepository remainingBalanceRepository)
        {
            _userManager = userManager;
            _remainingBalanceRepository = remainingBalanceRepository;
        }

        // GET: RemainingBalance/GetAll
        [HttpGet]
        public async Task<object> GetAll()
        {
            List<RemainingBalance> listBalance = new List<RemainingBalance>();
            try
            {
                listBalance = _remainingBalanceRepository.GetAll();
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<List<RemainingBalance>>
            {
                Message = "Get all remainingBalance execute successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = listBalance
            };
        }

        // GET: RemainingBalance/GetById
        [HttpGet]
        public async Task<object> GetById(int id)
        {
            RemainingBalance remainingBalance = new RemainingBalance();
            try
            {
                remainingBalance = _remainingBalanceRepository.GetById(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<RemainingBalance>
            {
                Message = "Get by id remainingBalance execute successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = remainingBalance
            };
        }

        // POST: RemainingBalance/Create
        [HttpPost]
        public async Task<object> Create([FromBody]RemainingBalance remainingBalance)
        {
            try
            {
                remainingBalance = _remainingBalanceRepository.Create(remainingBalance);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<RemainingBalance>
            {
                Message = "Balance created successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = remainingBalance
            };
        }

        // POST: RemainingBalance/Edit
        [HttpPost]
        public async Task<object> Edit([FromBody] RemainingBalance remainingBalance)
        {
            try
            {
                remainingBalance = _remainingBalanceRepository.Edit(remainingBalance);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<RemainingBalance>
            {
                Message = "Balance edited successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = remainingBalance
            };
        }

        // POST: RemainingBalance/Delete
        [HttpPost]
        public async Task<object> Delete(int id)
        {
            RemainingBalance remainingBalance = new RemainingBalance();
            try
            {
                remainingBalance = _remainingBalanceRepository.Delete(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<RemainingBalance>
            {
                Message = "RemainingBalance deleted successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = remainingBalance
            };
        }


        // POST: RemainingBalance/GetByUserId
        [HttpPost]
        public async Task<object> GetByUserId([FromBody] RemainingBalanceViewModel remainingBalanceViewModel)
        {
            RemainingBalance remainingBalance = new RemainingBalance();
            try
            {
                remainingBalance = _remainingBalanceRepository.GetByUserId(remainingBalanceViewModel.UserId);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<RemainingBalance>
            {
                Message = "Get by userid remainingBalance executed successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = remainingBalance
            };
        }
    }
}