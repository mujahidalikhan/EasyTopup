using Microsoft.AspNetCore.Mvc;
using EasyTopup.Data.Models;
using Microsoft.AspNetCore.Identity;
using EasyTopup.API.Repositories;
using System.Threading.Tasks;
using EasyTopup.Data.Response;
using System;
using System.Collections.Generic;
using EasyTopup.Data.ViewModels;

namespace EasyTopup.API.Controllers
{
    [Route("[controller]/[action]")]
    //[ApiController]
    public class CompanyController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ICompanyRepository _companyRepository;

        private bool result = true;
        private string error = string.Empty;

        public CompanyController(UserManager<ApplicationUser> userManager, ICompanyRepository companyRepository)
        {
            _userManager = userManager;
            _companyRepository = companyRepository;
        }

        // POST: Company/GetAll
        [HttpPost]
        public async Task<object> GetAll([FromBody] PaginationViewModel paginationViewModel)
        {
            List<Company> listCompany = new List<Company>();
            try
            {
                listCompany = _companyRepository.GetAll(paginationViewModel.pageId, paginationViewModel.pageSize);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<List<Company>>
            {
                Message = "Get all companies work successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = listCompany
            };
        }

        // POST: Company/GetById
        [HttpPost]
        public async Task<object> GetById(int id)
        {
            Company company = new Company();
            try
            {
                company = _companyRepository.GetById(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Company>
            {
                Message = "Get by id company executed successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = company
            };
        }

        // POST: Company/Create
        [HttpPost]
        public async Task<object> Create([FromBody] Company company)
        {
            try
            {
                company = _companyRepository.Create(company);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Company>
            {
                Message = "Company created successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = company
            };
        }

        // POST: Company/Edit
        [HttpPost]
        public async Task<object> Edit([FromBody]Company company)
        {
            try
            {
                company = _companyRepository.Edit(company);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Company>
            {
                Message = "Company edited successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = company
            };
        }

        // POST: Company/Delete
        [HttpPost]
        public async Task<object> Delete(int id)
        {
            Company company = new Company();
            try
            {
                company = _companyRepository.Delete(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Company>
            {
                Message = "Company deleted successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = company
            };
        }


        // POST: Company/Block
        [HttpPost]
        public async Task<object> Block([FromBody] int companyId)
        {
            Company company = new Company();
            try
            {
                company = _companyRepository.Block(companyId);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }
            return new SingleResponse<Company>
            {
                Message = "Get by id company executed successfully",
                DidError = !result,
                ErrorMessage = error,
                Token = string.Empty,
                Model = company
            };
        }
    }
}