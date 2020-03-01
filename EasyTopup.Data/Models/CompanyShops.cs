using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EasyTopup.Data.Models
{
    public class CompanyShops
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CompanyShopsId { get; set; }

        [Required]
        public int CompanyId { get; set; }

        [Required]
        public int ShopId { get; set; }
    }
}
