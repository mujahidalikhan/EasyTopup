using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using EasyTopup.API.Entities;
using EasyTopup.Data.Models;
using EasyTopup.Data.ViewModels;

namespace EasyTopup.API.Repositories
{
    public class SaleRepository : ISaleRepository
    {
        private readonly ApplicationDbContext _context;

        public SaleRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<Sale> GetAll()
        {
            List<Sale> listSale = new List<Sale>();

            var query = $"EXEC GetAll; ";

            listSale = _context.Sale.FromSql(query).ToList();
            return listSale;
        }

        public Sale GetById(int id)
        {
            Sale sale = new Sale();

            var query = $"EXEC GetById '{id}'; ";

            sale = _context.Sale.FromSql(query).FirstOrDefault();
            return sale;
        }

        public CreateSaleViewModel Create(SaleViewModel saleViewModel)
        {
            var query = $"EXEC CreateSale '{saleViewModel.UserId}', '{saleViewModel.CardId}', 'false', '{DateTime.UtcNow}'; ";

            CreateSaleViewModel createSaleViewModel = _context.CreateSaleViewModel.FromSql(query).FirstOrDefault();

            return createSaleViewModel;
        }

        public Sale Edit(int id, Sale sale)
        {
            var query = $"EXEC Edit '{id}'; ";

            sale = _context.Sale.FromSql(query).FirstOrDefault();
            return sale;
        }

        public Sale Delete(int id)
        {
            Sale sale = new Sale();

            var query = $"EXEC Delete '{id}'; ";

            sale = _context.Sale.FromSql(query).FirstOrDefault();
            return sale;
        }

        public void Dispose()
        {
            _context.Dispose();
        }

        public List<Card> GetCardsByUserId(string userId, int pageId, int pageSize)
        {
            List<Card> listCards = new List<Card>();

            var query = $"EXEC GetCardsByUserId '{userId}', '{pageId}', '{pageSize}'; ";

            listCards = _context.Card.FromSql(query).ToList();
            return listCards;
        }
    }
    public interface ISaleRepository : IDisposable
    {
        List<Sale> GetAll();
        Sale GetById(int id);
        CreateSaleViewModel Create(SaleViewModel saleViewModel);
        Sale Edit(int id, Sale sale);
        Sale Delete(int id);
        List<Card> GetCardsByUserId(string userId, int pageId, int pageSize);
    }
}
