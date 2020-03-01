using System;
using System.Collections.Generic;
using EasyTopup.Data.Models;

namespace EasyTopup.Data.ViewModels
{
    public class ShopViewModel
    {
        public int ShopId { get; set; }
        public string RegistrationNumber { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Photo { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public bool IsDelete { get; set; }
        public DateTime Timestamp { get; set; }

        public string base64Picture { get; set; }


        public List<Shop> listShops { get; set; }

        public string UserId { get; set; }
        public int CompanyId { get; set; }

        public List<Company> listCompanies { get; set; }

    }

    public class ShopListViewModel
    {
        public List<Shop> listShops { get; set; }
    }
}
