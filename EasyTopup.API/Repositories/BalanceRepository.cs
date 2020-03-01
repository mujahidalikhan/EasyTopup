using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using EasyTopup.API.Entities;
using EasyTopup.Data.Models;

namespace EasyTopup.API.Repositories
{
    public class BalanceRepository : IBalanceRepository
    {
        private readonly ApplicationDbContext _context;

        public BalanceRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<Balance> GetAll()
        {
            List<Balance> listBalance = new List<Balance>();

            var query = $"EXEC GetAll; ";

            listBalance = _context.Balance.FromSql(query).ToList();
            return listBalance;
        }

        public Balance GetById(int id)
        {
            Balance balance = new Balance();

            var query = $"EXEC GetById '{id}'; ";

            balance = _context.Balance.FromSql(query).FirstOrDefault();
            return balance;
        }

        public Balance Create(Balance balance)
        {
            var query = $"EXEC CreateBalance '{balance.UserId}', '{balance.Amount}', '{balance.AddedBy}', '{balance.IsDelete}', '{DateTime.UtcNow}'; ";

            balance = _context.Balance.FromSql(query).FirstOrDefault();

            return balance;
        }

        public Balance Edit(Balance balance)
        {
            var query = $"EXEC Edit '{balance.BalanceId}'; ";

            balance = _context.Balance.FromSql(query).FirstOrDefault();
            return balance;
        }

        public Balance Delete(int id)
        {
            Balance balance = new Balance();

            var query = $"EXEC Delete '{id}'; ";

            balance = _context.Balance.FromSql(query).FirstOrDefault();
            return balance;
        }

        public void Dispose()
        {
            _context.Dispose();
        }

    }
    public interface IBalanceRepository : IDisposable
    {
        List<Balance> GetAll();
        Balance GetById(int id);
        Balance Create(Balance balance);
        Balance Edit(Balance balance);
        Balance Delete(int id);
    }
}
