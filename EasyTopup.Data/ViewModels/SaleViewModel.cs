using EasyTopup.Data.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EasyTopup.Data.ViewModels
{
    public class SaleViewModel
    {
        [Key]
        public string UserId { get; set; }
        public int CardId { get; set; }

        public int pageId { get; set; }
        public int pageSize { get; set; }

        public List<Card> listCards { get; set; }

        public CreateSaleViewModel createSaleViewModel { get; set; }
    }

    public class CreateSaleViewModel
    {
        [Key]
        public string Code { get; set; }
        public string CardName { get; set; }
        public string CardDescription { get; set; }
        public decimal Amount { get; set; }
        public string CompanyName { get; set; }
        public string CompanyDescription { get; set; }
        public string CompanyPhoto { get; set; }
        public string ShopName { get; set; }
        public string ShopAddress { get; set; }
        public string ShopPhone { get; set; }
        public string ShopDescription { get; set; }
        public string ShopPhoto { get; set; }
        public int SaleId { get; set; }
        public DateTime SaleTime { get; set; }
        public string SoldByEmail { get; set; }

        public string SoldByName { get; set; }
    }
}
