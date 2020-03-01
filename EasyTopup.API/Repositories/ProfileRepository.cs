using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using EasyTopup.API.Entities;
using EasyTopup.Data.Models;
using EasyTopup.Data.ViewModels;

namespace EasyTopup.API.Repositories
{
    public class ProfileRepository : IProfileRepository
    {
        private readonly ApplicationDbContext _context;

        public ProfileRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public ProfileViewModel GetProfile(string userId)
        {
            ProfileViewModel profileViewModel = new ProfileViewModel();

            var query = $"EXEC GetProfile '{userId}'; ";

            profileViewModel = _context.ProfileViewModel.FromSql(query).FirstOrDefault();
            return profileViewModel;
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
    public interface IProfileRepository : IDisposable
    {
        ProfileViewModel GetProfile(string userId);
    }
}
