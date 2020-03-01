using EasyTopup.Data.Models;
using System;
using System.Collections.Generic;

namespace EasyTopup.Data.ViewModels
{
    public class CodeViewModel
    {
        public string UserId { get; set; }
        public int CardId { get; set; }
        public bool IsRange { get; set; }
        public string AddType { get; set; }
        public string CodesFrom { get; set; }
        public string CodesTo { get; set; }
        public string Codes { get; set; }
        public List<Code> listCodes { get; set; }
        public List<Card> listCards { get; set; }
    }
}
