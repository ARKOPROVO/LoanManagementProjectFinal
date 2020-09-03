using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace UserManagement.Models
{
    public class LoginResponse
    {
        public string UserRole { get; set; }
        public string Token { get; set; }
    }
}
