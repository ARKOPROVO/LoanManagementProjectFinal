using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UserManagement.Models;

namespace UserManagement.Repository.Interface
{
    interface IUserLoginRepository
    {
        public LoginResponse ConfirmLogin(string userid, string password);
    }
}
