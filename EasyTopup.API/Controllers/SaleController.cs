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
    public class SaleController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ISaleRepository _saleRepository;

        private bool result = true;
        private string error = string.Empty;

        public SaleController(UserManager<ApplicationUser> userManager, ISaleRepository saleRepository)
        {
            _userManager = userManager;
            _saleRepository = saleRepository;
        }

        // GET: Sale/GetAll
        [HttpGet]
        public async Task<object> GetAll()
        {
            List<Sale> listSale = new List<Sale>();
            try
            {
                listSale = _saleRepository.GetAll();
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<List<Sale>>
            {
                Message = "Get all sale execute successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = listSale
            };
        }

        // GET: Sale/GetById
        [HttpGet]
        public async Task<object> GetById(int id)
        {
            Sale sale = new Sale();
            try
            {
                sale = _saleRepository.GetById(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Sale>
            {
                Message = "Get by id sale execute successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = sale
            };
        }

        // POST: Sale/Create
        [HttpPost]
        public async Task<object> Create([FromBody]SaleViewModel saleViewModel)
        {
            CreateSaleViewModel createSaleViewModel = new CreateSaleViewModel();
            try
            {
                createSaleViewModel = _saleRepository.Create(saleViewModel);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<CreateSaleViewModel>
            {
                Message = "Sale created successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = createSaleViewModel
            };
        }

        // POST: Sale/Edit
        [HttpPost]
        public async Task<object> Edit(int id, [Bind("SaleId,ShopId,Amount,AddedBy,IsDelete,Timestamp")] Sale sale)
        {
            try
            {
                sale = _saleRepository.Edit(id, sale);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Sale>
            {
                Message = "Sale edited successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = sale
            };
        }

        // POST: Sale/Delete
        [HttpPost]
        public async Task<object> Delete(int id)
        {
            Sale sale = new Sale();
            try
            {
                sale = _saleRepository.Delete(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Sale>
            {
                Message = "Sale deleted successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = sale
            };
        }

        // POST: Sale/GetCardsByUserId
        [HttpPost]
        public async Task<object> GetCardsByUserId([FromBody] SaleViewModel saleViewModel)
        {
            try
            {
                saleViewModel.listCards = _saleRepository.GetCardsByUserId(saleViewModel.UserId, saleViewModel.pageId, saleViewModel.pageSize);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<SaleViewModel>
            {
                Message = "Get all card executed successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = saleViewModel
            };
        }

    }
}