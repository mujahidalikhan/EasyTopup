using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EasyTopup.Data.Models
{
    public class Balance
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int BalanceId { get; set; }

        [Required]
        [Column(TypeName = "nvarchar(450)")]
        public string UserId { get; set; }

        [Required]
        [Column(TypeName = "decimal(18, 2)")]
        public decimal Amount { get; set; }

        [Required]
        [Column(TypeName = "nvarchar(450)")]
        public string AddedBy { get; set; }

        [Required]
        [Column(TypeName = "bit")]
        public bool IsDelete { get; set; }

        [Required]
        [Column(TypeName = "datetime")]
        public DateTime Timestamp { get; set; }

    }
}
