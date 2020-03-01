using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EasyTopup.Data.Models
{
    public class RemainingBalance
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int RemainingBalanceId { get; set; }

        [Required]
        [Column(TypeName = "nvarchar(450)")]
        public string UserId { get; set; }


        [Column(TypeName = "int")]
        public int SaleId { get; set; }
        [Column(TypeName = "int")]
        public int BalanceId { get; set; }

        [Column(TypeName = "decimal(18, 2)")]
        public decimal SaleAmount { get; set; }
        [Column(TypeName = "decimal(18, 2)")]
        public decimal BalanceAmount { get; set; }

        [Column(TypeName = "decimal(18, 2)")]
        public decimal CurrentAmount { get; set; }

        [Required]
        [Column(TypeName = "bit")]
        public bool IsAmountAdded { get; set; }

        [Required]
        [Column(TypeName = "bit")]
        public bool IsDelete { get; set; }

        [Required]
        [Column(TypeName = "datetime")]
        public DateTime Timestamp { get; set; }
    }
}
