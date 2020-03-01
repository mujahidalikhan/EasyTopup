using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using EasyTopup.API.Entities;
using EasyTopup.Data.Models;

namespace EasyTopup.API.Repositories
{
    public class CompanyRepository : ICompanyRepository
    {
        private readonly ApplicationDbContext _context;

        public CompanyRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<Company> GetAll(int pageId, int pageSize)
        {
            List<Company> listCompany = new List<Company>();

            var query = $"EXEC GetAllCompanies '{pageId}', '{pageSize}'; ";

            listCompany = _context.Company.FromSql(query).ToList();
            return listCompany;
        }

        public Company GetById(int id)
        {
            Company company = new Company();

            var query = $"EXEC GetByIdCompany '{id}'; ";

            company = _context.Company.FromSql(query).FirstOrDefault();
            return company;
        }

        public Company Create(Company company)
        {
            var query = $"EXEC CreateCompany '{company.Name}', '{company.Description}', '{company.Photo}', '{company.Phone}', '{company.Address}', '{company.IsDelete}', '{DateTime.UtcNow}'; ";

            company = _context.Company.FromSql(query).FirstOrDefault();
            return company;
        }

        public Company Edit(Company company)
        {
            var query = $"EXEC EditCompany '{company.CompanyId}', '{company.Name}', '{company.Description}', '{company.Photo}', '{company.Phone}', '{company.Address}', '{company.IsDelete}', '{DateTime.UtcNow}'; ";

            company = _context.Company.FromSql(query).FirstOrDefault();
            return company;
        }

        public Company Delete(int id)
        {
            Company company = new Company();

            var query = $"EXEC Delete '{id}'; ";

            company = _context.Company.FromSql(query).FirstOrDefault();
            return company;
        }

        public Company Block(int companyId)
        {
            Company company = new Company();

            var query = $"EXEC CompanyBlock '{companyId}'; ";

            company = _context.Company.FromSql(query).FirstOrDefault();
            return company;
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
    public interface ICompanyRepository : IDisposable
    {
        List<Company> GetAll(int pageId, int pageSize);
        Company GetById(int id);
        Company Create(Company company);
        Company Edit(Company company);
        Company Delete(int id);
        Company Block(int companyId);
    }
}
