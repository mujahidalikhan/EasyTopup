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
    public class ShopController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IShopRepository _shopRepository;

        private bool result = true;
        private string error = string.Empty;

        public ShopController(UserManager<ApplicationUser> userManager, IShopRepository shopRepository)
        {
            _userManager = userManager;
            _shopRepository = shopRepository;
        }

        // POST: Shop/GetAll
        [HttpPost]
        public async Task<object> GetAll([FromBody] PaginationViewModel paginationViewModel)
        {
            List<Shop> listShop = new List<Shop>();
            try
            {
                listShop = _shopRepository.GetAll(paginationViewModel.userId, paginationViewModel.pageId, paginationViewModel.pageSize);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<List<Shop>>
            {
                Message = "Get all shop executed successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = listShop
            };
        }

        // GET: Shop/GetById
        [HttpGet]
        public async Task<object> GetById(int id)
        {
            Shop shop = new Shop();
            try
            {
                shop = _shopRepository.GetById(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Shop>
            {
                Message = "Get by id shop execute successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = shop
            };
        }

        // POST: Shop/Create
        [HttpPost]
        public async Task<object> Create([FromBody] ShopViewModel shopViewModel)
        {
            Shop shop = new Shop();
            try
            {
                shop = _shopRepository.Create(shopViewModel);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Shop>
            {
                Message = "Shop created successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = shop
            };
        }

        // POST: Shop/Edit
        [HttpPost]
        public async Task<object> Edit([FromBody] Shop shop)
        {
            try
            {
                shop = _shopRepository.Edit(shop);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Shop>
            {
                Message = "Shop edited successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = shop
            };
        }

        // POST: Shop/Delete
        [HttpPost]
        public async Task<object> Delete(int id)
        {
            Shop shop = new Shop();
            try
            {
                shop = _shopRepository.Delete(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Shop>
            {
                Message = "Shop deleted successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = shop
            };
        }

        // POST: Shop/Block
        [HttpPost]
        public async Task<object> Block([FromBody] int shopId)
        {
            Shop shop = new Shop();
            try
            {
                shop = _shopRepository.Block(shopId);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }
            return new SingleResponse<Shop>
            {
                Message = "Shop blocked successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = shop
            };
        }
    }
}