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
    public class CardController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ICardRepository _cardRepository;

        private bool result = true;
        private string error = string.Empty;

        public CardController(UserManager<ApplicationUser> userManager, ICardRepository cardRepository)
        {
            _userManager = userManager;
            _cardRepository = cardRepository;
        }

        // POST: Card/GetAll
        [HttpPost]
        public async Task<object> GetAll([FromBody] PaginationViewModel paginationViewModel)
        {
            List<Card> listCard = new List<Card>();
            try
            {
                listCard = _cardRepository.GetAll(paginationViewModel.userId, paginationViewModel.pageId, paginationViewModel.pageSize);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<List<Card>>
            {
                Message = "Get all card executed successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = listCard
            };
        }

        // POST: Card/GetById
        [HttpPost]
        public async Task<object> GetById(int id)
        {
            Card card = new Card();
            try
            {
                card = _cardRepository.GetById(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Card>
            {
                Message = "Get by id card execute successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = card
            };
        }

        // POST: Card/Create
        [HttpPost]
        public async Task<object> Create([FromBody] CardViewModel cardViewModel)
        {
            Card card = new Card();
            try
            {
                card = _cardRepository.Create(cardViewModel);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Card>
            {
                Message = "Card created successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = card
            };
        }

        // POST: Card/Edit
        [HttpPost]
        public async Task<object> Edit([FromBody] Card card)
        {
            try
            {
                card = _cardRepository.Edit(card);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Card>
            {
                Message = "Card edited successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = card
            };
        }

        // POST: Card/Delete
        [HttpPost]
        public async Task<object> Delete(int id)
        {
            Card card = new Card();
            try
            {
                card = _cardRepository.Delete(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Card>
            {
                Message = "Card deleted successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = card
            };
        }

        // POST: Card/Block
        [HttpPost]
        public async Task<object> Block([FromBody] int cardId)
        {
            Card card = new Card();
            try
            {
                card = _cardRepository.Block(cardId);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }
            return new SingleResponse<Card>
            {
                Message = "Card blocked successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = card
            };
        }
    }
}