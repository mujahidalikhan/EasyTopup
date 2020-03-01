using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasyTopup.Data.Models
{
    public class ApplicationUserListViewModel
    {
        public string UserEmail { get; set; }
        public IList<string> Roles { get; set; }

        public string UserId { get; set; }
        public string FirstName{ get; set; }
        public string LastName { get; set; }
    }
}
