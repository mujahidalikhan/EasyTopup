using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using EasyTopup.API.Entities;
using EasyTopup.Data.Models;
using EasyTopup.Data.ViewModels;

namespace EasyTopup.API.Repositories
{
    public class ShopRepository : IShopRepository
    {
        private readonly ApplicationDbContext _context;

        public ShopRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<Shop> GetAll(string userId, int pageId, int pageSize)
        {
            List<Shop> listShop = new List<Shop>();

            var query = $"EXEC GetAllShops '{userId}', '{pageId}', '{pageSize}'; ";

            listShop = _context.Shop.FromSql(query).ToList();
            return listShop;
        }

        public Shop GetById(int id)
        {
            Shop shop = new Shop();

            var query = $"EXEC GetByIdShop '{id}'; ";

            shop = _context.Shop.FromSql(query).FirstOrDefault();
            return shop;
        }

        public Shop Create(ShopViewModel shopViewModel)
        {
            var query = $"EXEC CreateShop '{shopViewModel.UserId}', '{shopViewModel.CompanyId}', '{shopViewModel.RegistrationNumber}', '{shopViewModel.Name}', '{shopViewModel.Description}', '{shopViewModel.Photo}', '{shopViewModel.Phone}', '{shopViewModel.Address}', '{shopViewModel.IsDelete}', '{DateTime.UtcNow}'; ";

            Shop shop = _context.Shop.FromSql(query).FirstOrDefault();
            return shop;
        }

        public Shop Edit(Shop shop)
        {
            var query = $"EXEC EditShop '{shop.ShopId}', '{shop.Name}', '{shop.Description}', '{shop.Photo}', '{shop.Phone}', '{shop.Address}', '{shop.IsDelete}', '{DateTime.UtcNow}'; ";

            shop = _context.Shop.FromSql(query).FirstOrDefault();
            return shop;
        }

        public Shop Delete(int id)
        {
            Shop shop = new Shop();

            var query = $"EXEC Delete '{id}'; ";

            shop = _context.Shop.FromSql(query).FirstOrDefault();
            return shop;
        }

        public void Dispose()
        {
            _context.Dispose();
        }

        public Shop Block(int shopId)
        {
            Shop shop = new Shop();

            var query = $"EXEC ShopBlock '{shopId}'; ";

            shop = _context.Shop.FromSql(query).FirstOrDefault();
            return shop;
        }
    }
    public interface IShopRepository : IDisposable
    {
        List<Shop> GetAll(string userId, int pageId, int pageSize);
        Shop GetById(int id);
        Shop Create(ShopViewModel shopViewModel);
        Shop Edit(Shop shop);
        Shop Delete(int id);
        Shop Block(int shopId);
    }
}
