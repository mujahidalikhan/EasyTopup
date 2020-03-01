using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using EasyTopup.API.Entities;
using EasyTopup.Data.Models;
using EasyTopup.Data.ViewModels;

namespace EasyTopup.API.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly ApplicationDbContext _context;

        public UserRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<UserViewModel> GetAll(string userId, int pageId, int pageSize)
        {
            List<UserViewModel> listUserViewModel = new List<UserViewModel>();

            var query = $"EXEC GetAllUsers '{userId}', '{pageId}', '{pageSize}'; ";

            listUserViewModel = _context.UserViewModel.FromSql(query).ToList();
            return listUserViewModel;
        }


        public ApplicationUser SaveSettings(string userId, string userRole, int companyId, int shopId)
        {
            var query = $"EXEC SaveSettings '{userId}', '{userRole}', '{companyId}', '{shopId}', '{0}', '{DateTime.UtcNow}'; ";

            ApplicationUser applicationUser = _context.Users.FromSql(query).FirstOrDefault();
            return applicationUser;
        }

        public UserCompanyShopViewModel InsertUserToCompanyShop(string userId, int companyId, int shopId, string createdBy)
        {
            var query = $"EXEC InsertUserToCompanyShop '{userId}', '{companyId}', '{shopId}', '{createdBy}', '{0}', '{DateTime.UtcNow}'; ";

            UserCompanyShopViewModel userCompanyShopViewModel = _context.UserCompanyShopViewModel.FromSql(query).FirstOrDefault();
            return userCompanyShopViewModel;
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
    public interface IUserRepository : IDisposable
    {
        List<UserViewModel> GetAll(string userId, int pageId, int pageSize);
        ApplicationUser SaveSettings(string userId, string userRole, int companyId, int shopId);

        UserCompanyShopViewModel InsertUserToCompanyShop(string userId, int companyId, int shopId, string createdBy);
    }
}
