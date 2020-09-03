using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using UserManagement.Data;
using UserManagement.Repository.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace UserManagement.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserLoginController : ControllerBase
    {
        UserDBContext _userDBContext;
        UserLoginRepository _userLoginRepository;
        private readonly ILogger _logger;
        IConfiguration _config;
        public UserLoginController(UserDBContext userDBContext, ILogger<UserLoginController> logger, IConfiguration config)
        {
            _userDBContext = userDBContext;
            _config = config;
            _logger = logger;
            _userLoginRepository = new UserLoginRepository(_userDBContext,_config);
        }
        // GET: api/<UserLoginController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<UserLoginController>/5
        //[HttpGet("login/{userid}/{password}")]
        [HttpGet()]
        [Route("login/{userid}/{password}")]
        [AllowAnonymous]
        public IActionResult ConfirmLogin(string userid, string password)
        {
            //try
            //{

            //    var user = _userLoginRepository.ConfirmLogin(userid, password);
            //    if (user == null)
            //    {
            //        _logger.LogInformation("ConfirmLogin Controller returned User doesn't exist");
            //        return NotFound("User doesn't exist");
            //    }
            //    else if (user.Password != password)
            //    {
            //        _logger.LogInformation("ConfirmLogin Controller returned password doesn't match");
            //        return BadRequest("password doesn't match");
            //    }
            //    else
            //    {
            //        _logger.LogInformation("ConfirmLogin Controller returned role");
            //        return Ok(user.Role);
            //    }
            //}
            //catch (Exception ex)
            //{
            //    _logger.LogInformation("Caught exception" + ex + "in ConfirmLogin API controller");
            //    return (IActionResult)ex;
            //}
            try
            {
                var tokenModel = _userLoginRepository.ConfirmLogin(userid, password);
                _logger.LogInformation("ConfirmLogin Controller returned token");
                //return Ok(new { token = tokenString });
                return Ok(tokenModel);
                //return tokenString;
            }
            catch (Exception ex)
            {
                _logger.LogInformation("Caught exception" + ex.Message + "in ConfirmLogin API controller");
                throw ex;
            }
        }
    }
}
