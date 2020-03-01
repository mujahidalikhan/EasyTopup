using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using EasyTopup.API.Entities;
using EasyTopup.Data.Models;
using EasyTopup.Data.ViewModels;

namespace EasyTopup.API.Repositories
{
    public class CardRepository : ICardRepository
    {
        private readonly ApplicationDbContext _context;

        public CardRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<Card> GetAll(string userId, int pageId, int pageSize)
        {
            List<Card> listCard = new List<Card>();

            var query = $"EXEC GetAllCards '{userId}', '{pageId}', '{pageSize}'; ";

            listCard = _context.Card.FromSql(query).ToList();
            return listCard;
        }

        public Card GetById(int id)
        {
            Card card = new Card();

            var query = $"EXEC GetById '{id}'; ";

            card = _context.Card.FromSql(query).FirstOrDefault();
            return card;
        }

        public Card Create(CardViewModel cardViewModel)
        {
            var query = $"EXEC CreateCard '{cardViewModel.UserId}', '{cardViewModel.CompanyId}', '{cardViewModel.Name}', '{cardViewModel.Description}', '{cardViewModel.Photo}', '{cardViewModel.Amount}', '{cardViewModel.IsDelete}', '{DateTime.UtcNow}'; ";

            Card card = _context.Card.FromSql(query).FirstOrDefault();
            return card;
        }

        public Card Edit(Card card)
        {
            var query = $"EXEC Edit '{card.CardId}'; ";

            card = _context.Card.FromSql(query).FirstOrDefault();
            return card;
        }

        public Card Delete(int id)
        {
            Card card = new Card();

            var query = $"EXEC Delete '{id}'; ";

            card = _context.Card.FromSql(query).FirstOrDefault();
            return card;
        }

        public void Dispose()
        {
            _context.Dispose();
        }

        public Card Block(int cardId)
        {
            Card card = new Card();

            var query = $"EXEC CardBlock '{cardId}'; ";

            card = _context.Card.FromSql(query).FirstOrDefault();
            return card;
        }
    }
    public interface ICardRepository : IDisposable
    {
        List<Card> GetAll(string userId, int pageId, int pageSize);
        Card GetById(int id);
        Card Create(CardViewModel cardViewModel);
        Card Edit(Card card);
        Card Delete(int id);
        Card Block(int cardId);
    }
}
