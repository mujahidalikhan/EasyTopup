using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using EasyTopup.API.Entities;
using EasyTopup.Data.Models;
using EasyTopup.Data.ViewModels;

namespace EasyTopup.API.Repositories
{
    public class CodeRepository : ICodeRepository
    {
        private readonly ApplicationDbContext _context;

        public CodeRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<Code> GetAll()
        {
            List<Code> listCode = new List<Code>();

            var query = $"EXEC GetAll; ";

            listCode = _context.Code.FromSql(query).ToList();
            return listCode;
        }

        public Code GetById(int id)
        {
            Code code = new Code();

            var query = $"EXEC GetById '{id}'; ";

            code = _context.Code.FromSql(query).FirstOrDefault();
            return code;
        }

        public List<Code> Create(List<Code> listCodes)
        {
            int count = 0;
            foreach (var entityToInsert in listCodes)
            {
                ++count;
                AddToContext(entityToInsert, count, listCodes.Count, true);
            }
            return listCodes;
        }
        private void AddToContext(Code entity, int count, int commitCount, bool recreateContext)
        {
            _context.Set<Code>().Add(entity);

            if (count % commitCount == 0)
            {
                _context.SaveChanges();
            }
        }

        public Code Edit(Code code)
        {
            var query = $"EXEC Edit '{code.CodeId}'; ";

            code = _context.Code.FromSql(query).FirstOrDefault();
            return code;
        }

        public Code Delete(int id)
        {
            Code code = new Code();

            var query = $"EXEC Delete '{id}'; ";

            code = _context.Code.FromSql(query).FirstOrDefault();
            return code;
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
    public interface ICodeRepository : IDisposable
    {
        List<Code> GetAll();
        Code GetById(int id);
        List<Code> Create(List<Code> clistCodes);
        Code Edit(Code code);
        Code Delete(int id);
    }
}
