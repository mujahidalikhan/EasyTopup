using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using EasyTopup.Data.Models;

namespace EasyTopup.Data.ViewModels
{
    public class ProfileViewModel
    {
        [Key]
        public string UserId { get; set; }
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public string Picture { get; set; }
        public string Description { get; set; }
        public string Phone { get; set; }

        public string base64Picture { get; set; }

        public int CompanyId { get; set; }
        public int ShopId { get; set; }
        public List<Company> listCompanies { get; set; }
        public List<Shop> listShops { get; set; }

        public string CurrentPassword { get; set; }
        public string NewPassword { get; set; }
    }
}
