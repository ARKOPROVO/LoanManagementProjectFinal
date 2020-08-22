﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UserManagement.Data;
using UserManagement.Models;
using UserManagement.Repository.Interface;

namespace UserManagement.Repository.Implementation
{
    public class UserLoginRepository : IUserLoginRepository
    {
        UserDBContext _userDBContext;
        public UserLoginRepository(UserDBContext userDBContext)
        {
            _userDBContext = userDBContext;
        }
        public User ConfirmLogin(string userid, string password)
        {
            var user = _userDBContext.Users.FirstOrDefault(p => p.UserId == userid);
            //if (user == null)
            //{
            //    return NotFound("User doesn't exist");
            //}
            //else if (user.Password != password)
            //{
            //    return BadRequest("password doesn't match");
            //}
            //else
            //{
            //    return Ok(user.Role);
            //}
            return user;
        }
    }
}