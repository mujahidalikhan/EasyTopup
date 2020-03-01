using Microsoft.AspNetCore.Mvc;
using EasyTopup.Data.Models;
using Microsoft.AspNetCore.Identity;
using EasyTopup.API.Repositories;
using System.Threading.Tasks;
using EasyTopup.Data.Response;
using System;
using System.Collections.Generic;
using EasyTopup.Data.ViewModels;
using EasyTopup.API.Helpers;

namespace EasyTopup.API.Controllers
{
    [Route("[controller]/[action]")]
    //[ApiController]
    public class TemplateController : ControllerBase
    {
        private readonly ITemplateRepository _templateRepository;

        private bool result = true;
        private string error = string.Empty;

        public TemplateController(ITemplateRepository templateRepository)
        {
            _templateRepository = templateRepository;
        }

        // POST: Template/GetAll
        [HttpPost]
        public async Task<object> GetAll([FromBody] PaginationViewModel paginationViewModel)
        {
            List<EmailTemplate> listEmailTemplate = new List<EmailTemplate>();
            try
            {
                listEmailTemplate = _templateRepository.GetAll(paginationViewModel.pageId, paginationViewModel.pageSize);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<List<EmailTemplate>>
            {
                Message = "Get all email template executed successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = listEmailTemplate
            };
        }

        // GET: Template/GetById
        [HttpGet]
        public async Task<object> GetById(int id)
        {
            EmailTemplate emailTemplate = new EmailTemplate();
            try
            {
                emailTemplate = _templateRepository.GetById(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<EmailTemplate>
            {
                Message = "Get by id email template executed successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = emailTemplate
            };
        }

        // GET: Template/GetByName
        [HttpGet]
        public async Task<object> GetByName(string name)
        {
            EmailTemplate emailTemplate = new EmailTemplate();
            try
            {
                emailTemplate = _templateRepository.GetByName(name);
                emailTemplate.Content = EmailHelper.Base64Decode(emailTemplate.Content);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<EmailTemplate>
            {
                Message = "Get by name email template executed successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = emailTemplate
            };
        }

        // POST: Template/Create
        [HttpPost]
        public async Task<object> Create([FromBody] EmailTemplate emailTemplate)
        {
            try
            {
                emailTemplate.Content = EmailHelper.Base64Encode(emailTemplate.Content);
                emailTemplate = _templateRepository.Create(emailTemplate);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<EmailTemplate>
            {
                Message = "Email template created successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = emailTemplate
            };
        }

        // POST: Template/Edit
        [HttpPost]
        public async Task<object> Edit([FromBody] EmailTemplate emailTemplate)
        {
            try
            {
                emailTemplate = _templateRepository.Edit(emailTemplate);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<EmailTemplate>
            {
                Message = "Email template edited successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = emailTemplate
            };
        }

        // POST: Template/Delete
        [HttpPost]
        public async Task<object> Delete(int id)
        {
            EmailTemplate emailTemplate = new EmailTemplate();
            try
            {
                emailTemplate = _templateRepository.Delete(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<EmailTemplate>
            {
                Message = "Email template deleted successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = emailTemplate
            };
        }

        // POST: Shop/Block
        [HttpPost]
        public async Task<object> Block([FromBody] int templateId)
        {
            EmailTemplate emailTemplate = new EmailTemplate();
            try
            {
                emailTemplate = _templateRepository.Block(templateId);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }
            return new SingleResponse<EmailTemplate>
            {
                Message = "Template blocked successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = emailTemplate
            };
        }
    }
}