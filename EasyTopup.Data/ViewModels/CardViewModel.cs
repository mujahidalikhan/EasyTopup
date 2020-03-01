using EasyTopup.Data.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EasyTopup.Data.ViewModels
{
    public class CardViewModel
    {
        [Key]
        public int CompanyId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Photo { get; set; }
        public decimal Amount { get; set; }
        public bool IsDelete { get; set; }
        public DateTime Timestamp { get; set; }
        public string base64Picture { get; set; }
        public List<Card> listCards { get; set; }

        public string UserId { get; set; }

    }
}
