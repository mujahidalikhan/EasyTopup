using Microsoft.AspNetCore.Mvc;
using EasyTopup.Data.Models;
using Microsoft.AspNetCore.Identity;
using EasyTopup.API.Repositories;
using System.Threading.Tasks;
using EasyTopup.Data.Response;
using System;
using System.Collections.Generic;
using EasyTopup.Data.ViewModels;
using System.IO;

namespace EasyTopup.API.Controllers
{
    [Route("[controller]/[action]")]
    //[ApiController]
    public class CodeController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ICodeRepository _codeRepository;

        private bool result = true;
        private string error = string.Empty;

        public CodeController(UserManager<ApplicationUser> userManager, ICodeRepository codeRepository)
        {
            _userManager = userManager;
            _codeRepository = codeRepository;
        }

        // GET: Code/GetAll
        [HttpGet]
        public async Task<object> GetAll()
        {
            List<Code> listCode = new List<Code>();
            try
            {
                listCode = _codeRepository.GetAll();
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<List<Code>>
            {
                Message = "Get all code execute successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = listCode
            };
        }

        // GET: Code/GetById
        [HttpGet]
        public async Task<object> GetById(int id)
        {
            Code code = new Code();
            try
            {
                code = _codeRepository.GetById(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Code>
            {
                Message = "Get by id code execute successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = code
            };
        }

        // POST: Code/Create
        [HttpPost]
        public async Task<object> Create([FromBody]CodeViewModel codeViewModel)
        {
            List<Code> listCodes = new List<Code>();
            try
            {
                if (!codeViewModel.IsRange)
                {
                    if (!string.IsNullOrEmpty(codeViewModel.Codes))
                    {
                        using (StringReader reader = new StringReader(codeViewModel.Codes))
                        {
                            string codeNumber = string.Empty;
                            do
                            {
                                Code code = new Code();
                                codeNumber = reader.ReadLine();
                                if (!string.IsNullOrEmpty(codeNumber))
                                {
                                    code.CardId = codeViewModel.CardId;
                                    code.Number = codeNumber;
                                    code.IsSold = false;
                                    code.AddedBy = codeViewModel.UserId;
                                    code.IsRange = codeViewModel.IsRange;
                                    code.IsDelete = false;
                                    code.Timestamp = DateTime.UtcNow;

                                    listCodes.Add(code);
                                }
                            } while (codeNumber != null);
                        }

                        listCodes = _codeRepository.Create(listCodes);
                    }
                }
                else
                {
                    if (!string.IsNullOrEmpty(codeViewModel.CodesFrom) && !string.IsNullOrEmpty(codeViewModel.CodesTo))
                    {
                        long codeFrom = Convert.ToInt64(codeViewModel.CodesFrom);
                        long codeTo = Convert.ToInt64(codeViewModel.CodesTo);
                        for (long codeNumber = codeFrom; codeNumber <= codeTo; codeNumber++)
                        {
                            Code code = new Code();
                            code.CardId = codeViewModel.CardId;
                            code.Number = codeNumber.ToString();
                            code.IsSold = false;
                            code.AddedBy = codeViewModel.UserId;
                            code.IsRange = codeViewModel.IsRange;
                            code.IsDelete = false;
                            code.Timestamp = DateTime.UtcNow;

                            listCodes.Add(code);
                        }
                        listCodes = _codeRepository.Create(listCodes);
                    }
                }
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<List<Code>>
            {
                Message = "Codes created successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = listCodes
            };
        }

        // POST: Code/Edit
        [HttpPost]
        public async Task<object> Edit([FromBody] Code code)
        {
            try
            {
                code = _codeRepository.Edit(code);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Code>
            {
                Message = "Code edited successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = code
            };
        }

        // POST: Code/Delete
        [HttpPost]
        public async Task<object> Delete(int id)
        {
            Code code = new Code();
            try
            {
                code = _codeRepository.Delete(id);
            }
            catch (Exception ex)
            {
                result = false;
                error = ex.Message;
            }

            return new SingleResponse<Code>
            {
                Message = "Code deleted successfully",
                DidError = false,
                ErrorMessage = string.Empty,
                Token = string.Empty,
                Model = code
            };
        }
    }
}