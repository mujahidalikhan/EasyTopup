using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using EasyTopup.API.Entities;
using EasyTopup.Data.Models;

namespace EasyTopup.API.Repositories
{
    public class TemplateRepository : ITemplateRepository
    {
        private readonly ApplicationDbContext _context;

        public TemplateRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<EmailTemplate> GetAll(int pageId, int pageSize)
        {
            List<EmailTemplate> listEmailTemplate = new List<EmailTemplate>();

            var query = $"EXEC GetAllTemplates '{pageId}', '{pageSize}'; ";

            listEmailTemplate = _context.EmailTemplate.FromSql(query).ToList();
            return listEmailTemplate;
        }

        public EmailTemplate GetById(int id)
        {
            EmailTemplate emailTemplate = new EmailTemplate();

            var query = $"EXEC GetByIdTemplate '{id}'; ";

            emailTemplate = _context.EmailTemplate.FromSql(query).FirstOrDefault();
            return emailTemplate;
        }

        public EmailTemplate GetByName(string name)
        {
            EmailTemplate emailTemplate = new EmailTemplate();

            var query = $"EXEC GetByNameTemplate '{name}'; ";

            emailTemplate = _context.EmailTemplate.FromSql(query).FirstOrDefault();
            return emailTemplate;
        }

        public EmailTemplate Create(EmailTemplate emailTemplate)
        {
            var query = $"EXEC CreateTemplate '{emailTemplate.Name}', '{emailTemplate.Content}', '{emailTemplate.IsDelete}', '{DateTime.UtcNow}'; ";

            emailTemplate = _context.EmailTemplate.FromSql(query).FirstOrDefault();
            return emailTemplate;
        }

        public EmailTemplate Edit(EmailTemplate emailTemplate)
        {
            var query = $"EXEC EditTemplate '{emailTemplate.EmailTemplateId}', '{emailTemplate.Name}', '{emailTemplate.Content}', '{emailTemplate.IsDelete}', '{DateTime.UtcNow}'; ";

            emailTemplate = _context.EmailTemplate.FromSql(query).FirstOrDefault();
            return emailTemplate;
        }

        public EmailTemplate Delete(int id)
        {
            EmailTemplate emailTemplate = new EmailTemplate();

            var query = $"EXEC Delete '{id}'; ";

            emailTemplate = _context.EmailTemplate.FromSql(query).FirstOrDefault();
            return emailTemplate;
        }

        public void Dispose()
        {
            _context.Dispose();
        }

        public EmailTemplate Block(int templateId)
        {
            EmailTemplate emailTemplate = new EmailTemplate();

            var query = $"EXEC TemplateBlock '{templateId}'; ";

            emailTemplate = _context.EmailTemplate.FromSql(query).FirstOrDefault();
            return emailTemplate;
        }
    }
    public interface ITemplateRepository : IDisposable
    {
        List<EmailTemplate> GetAll(int pageId, int pageSize);
        EmailTemplate GetById(int id);
        EmailTemplate GetByName(string name);
        EmailTemplate Create(EmailTemplate shop);
        EmailTemplate Edit(EmailTemplate shop);
        EmailTemplate Delete(int id);
        EmailTemplate Block(int templateId);
    }
}
