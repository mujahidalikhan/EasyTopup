using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using EasyTopup.API.Entities;
using EasyTopup.Data.Models;

namespace EasyTopup.API.Repositories
{
    public class RemainingBalanceRepository : IRemainingBalanceRepository
    {
        private readonly ApplicationDbContext _context;

        public RemainingBalanceRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<RemainingBalance> GetAll()
        {
            List<RemainingBalance> listRemainingBalance = new List<RemainingBalance>();

            var query = $"EXEC GetAll; ";

            listRemainingBalance = _context.RemainingBalance.FromSql(query).ToList();
            return listRemainingBalance;
        }

        public RemainingBalance GetById(int id)
        {
            RemainingBalance remainingBalance = new RemainingBalance();

            var query = $"EXEC GetById '{id}'; ";

            remainingBalance = _context.RemainingBalance.FromSql(query).FirstOrDefault();
            return remainingBalance;
        }

        public RemainingBalance Create(RemainingBalance remainingBalance)
        {
            var query = $"EXEC CreateRemainingBalance '{remainingBalance.UserId}', '{remainingBalance.BalanceAmount}', '{remainingBalance.UserId}', '{remainingBalance.IsDelete}', '{DateTime.UtcNow}'; ";

            remainingBalance = _context.RemainingBalance.FromSql(query).FirstOrDefault();

            return remainingBalance;
        }

        public RemainingBalance Edit(RemainingBalance remainingBalance)
        {
            var query = $"EXEC Edit '{remainingBalance.RemainingBalanceId}'; ";

            remainingBalance = _context.RemainingBalance.FromSql(query).FirstOrDefault();
            return remainingBalance;
        }

        public RemainingBalance Delete(int id)
        {
            RemainingBalance remainingBalance = new RemainingBalance();

            var query = $"EXEC Delete '{id}'; ";

            remainingBalance = _context.RemainingBalance.FromSql(query).FirstOrDefault();
            return remainingBalance;
        }

        public void Dispose()
        {
            _context.Dispose();
        }

        public RemainingBalance GetByUserId(string userId)
        {
            RemainingBalance remainingBalance = new RemainingBalance();

            var query = $"EXEC GetBalanceByUserId '{userId}'; ";

            remainingBalance = _context.RemainingBalance.FromSql(query).FirstOrDefault();
            return remainingBalance;
        }
    }
    public interface IRemainingBalanceRepository : IDisposable
    {
        List<RemainingBalance> GetAll();
        RemainingBalance GetById(int id);
        RemainingBalance Create(RemainingBalance remainingBalance);
        RemainingBalance Edit(RemainingBalance remainingBalance);
        RemainingBalance Delete(int id);
        RemainingBalance GetByUserId(string userId);
    }
}
