using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EasyTopup.Data.Models
{
    public class Code
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CodeId { get; set; }

        [Required]
        [Column(TypeName = "int")]
        public int CardId { get; set; }

        [Column(TypeName = "varchar(500)")]
        public string Number { get; set; }

        [Column(TypeName = "bit")]
        public bool IsSold { get; set; }

        [Column(TypeName = "varchar(100)")]
        public string AddedBy { get; set; }

        [Required]
        [Column(TypeName = "bit")]
        public bool IsRange { get; set; }

        [Required]
        [Column(TypeName = "bit")]
        public bool IsDelete { get; set; }

        [Required]
        [Column(TypeName = "datetime")]
        public DateTime Timestamp { get; set; }
    }
}
