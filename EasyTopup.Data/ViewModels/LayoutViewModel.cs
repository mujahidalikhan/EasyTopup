using System;
using System.Collections.Generic;
using EasyTopup.Data.Models;

namespace EasyTopup.Data.ViewModels
{
    public class LayoutViewModel
    {
        public int CompanyId { get; set; }
        public int ShopId { get; set; }
        public List<Company> listCompanies { get; set; }

        public List<Shop> listShops { get; set; }
    }
}
