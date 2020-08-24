using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using UserManagement.Data;
using UserManagement.Models;
using UserManagement.Repository.Interface;

namespace UserManagement.Repository.Implementation
{
    public class UserLoginRepository : IUserLoginRepository
    {
        UserDBContext _userDBContext;
        private IConfiguration _config;
        public UserLoginRepository(UserDBContext userDBContext, IConfiguration config)
        {
            _userDBContext = userDBContext;
            _config = config;
        }
        //public User ConfirmLogin(string userid, string password)
        //{
        //    var user = _userDBContext.Users.FirstOrDefault(p => p.UserId == userid);

        //    return user;
        //}
        public string ConfirmLogin(string userid, string password)
        {
            var user = _userDBContext.Users.FirstOrDefault(p => p.UserId == userid);
            if (user != null)
            {
                var tokenString = GenerateJSONWebToken(user);
                //response = Ok(new { token = tokenString });
                return tokenString;
            }
            return "";
        }
        private string GenerateJSONWebToken(User userInfo)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);
            var claims = new[] {
                new Claim(JwtRegisteredClaimNames.Sub, userInfo.Role),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
            };
            var token = new JwtSecurityToken(_config["Jwt:Issuer"],
              _config["Jwt:Issuer"],
              claims,
              expires: DateTime.Now.AddMinutes(120),
              signingCredentials: credentials);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }
    }
}
