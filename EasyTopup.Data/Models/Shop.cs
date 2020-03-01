using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EasyTopup.Data.Models
{
    public class Shop
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ShopId { get; set; }

        [Column(TypeName = "varchar(100)")]
        public string RegistrationNumber { get; set; }

        [Required]
        [Column(TypeName = "varchar(100)")]
        public string Name { get; set; }

        [Column(TypeName = "varchar(500)")]
        public string Description { get; set; }

        [Column(TypeName = "varchar(MAX)")]
        public string Photo { get; set; }

        [Column(TypeName = "varchar(100)")]
        public string Phone { get; set; }

        [Column(TypeName = "varchar(500)")]
        public string Address { get; set; }

        [Required]
        [Column(TypeName = "bit")]
        public bool IsDelete { get; set; }

        [Required]
        [Column(TypeName = "datetime")]
        public DateTime Timestamp { get; set; }
    }
}
