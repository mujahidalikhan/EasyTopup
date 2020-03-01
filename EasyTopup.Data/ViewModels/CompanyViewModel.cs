using System;
using System.Collections.Generic;
using EasyTopup.Data.Models;

namespace EasyTopup.Data.ViewModels
{
    public class CompanyViewModel
    {
        public int CompanyId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Photo { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public bool IsDelete { get; set; }
        public DateTime Timestamp { get; set; }

        public string base64Picture { get; set; }

        public List<Company> listCompanies { get; set; }
    }

}
