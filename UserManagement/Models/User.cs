﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace UserManagement.Models
{
    public class User
    {
        public string Username { get; set; }
        public string UserId { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }
    }
}
