using EasyTopup.Data.Models;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EasyTopup.Data.ViewModels
{
    public class TemplateViewModel
    {
        public int EmailTemplateId { get; set; }

        public string Name { get; set; }

        public string Content { get; set; }

        public bool IsDelete { get; set; }

        public DateTime Timestamp { get; set; }

        public List<EmailTemplate> listTemplate { get; set; }

    }
}
