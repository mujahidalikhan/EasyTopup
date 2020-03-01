using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EasyTopup.Data.Models
{
    public class ShopUser
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ShopUserId { get; set; }

        [Required]
        [Column(TypeName = "int")]
        public int ShopId { get; set; }

        [Required]
        [Column(TypeName = "nvarchar(450)")]
        public string UserId { get; set; }

        [Required]
        [Column(TypeName = "bit")]
        public bool IsDelete { get; set; }

        [Required]
        [Column(TypeName = "datetime")]
        public DateTime Timestamp { get; set; }
    }
}
