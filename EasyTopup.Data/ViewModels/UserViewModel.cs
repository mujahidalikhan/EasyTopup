using EasyTopup.Data.Models;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EasyTopup.Data.ViewModels
{
    public class UserViewModel
    {
        [Key]
        public string UserId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Company { get; set; }
        public string Shop { get; set; }
        public string Role { get; set; }
        public bool IsActive { get; set; }

    }

    public class UserSettingsViewModel
    {
        public string UserId { get; set; }
        public string UserRole { get; set; }
        public int CompanyId { get; set; }
        public int ShopId { get; set; }
    }

    public class CreateUserViewModel
    {
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Picture { get; set; }
        public string base64Picture { get; set; }
        public string Description { get; set; }
        public bool IsActive { get; set; }
        public bool IsCompanySelected { get; set; }
        public bool IsShopSelected { get; set; }

        public int CompanyId { get; set; }
        public int ShopId { get; set; }
        public string UserRole { get; set; }

        public List<UserViewModel> listUsers { get; set; }
        public List<SelectListItem> listUserRoles { get; set; }
        public List<Shop> listShops { get; set; }
        public List<Company> listCompanies { get; set; }

        public string CreatedBy { get; set; }

    }

    public class UserCompanyShopViewModel
    {
        [Key]
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public int CompanyId { get; set; }
        public int ShopId { get; set; }
        public string CompanyName { get; set; }
        public string ShopName { get; set; }
    }
}
