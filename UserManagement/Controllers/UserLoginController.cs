using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
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
        public UserLoginController(UserDBContext userDBContext, ILogger<UserLoginController> logger)
        {
            _userDBContext = userDBContext;
            _userLoginRepository = new UserLoginRepository(_userDBContext);
            _logger = logger;
        }
        // GET: api/<UserLoginController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<UserLoginController>/5
        [HttpGet]
        [Route("login")]
        public IActionResult ConfirmLogin(string userid, string password)
        {
            try
            {
                //var user = _loanDBContext.Users.Find(userid);
                //var user = _userDBContext.Users.FirstOrDefault(p => p.UserId == userid);
                var user = _userLoginRepository.ConfirmLogin(userid, password);
                if (user == null)
                {
                    _logger.LogInformation("ConfirmLogin Controller returned User doesn't exist");
                    return NotFound("User doesn't exist");
                }
                else if (user.Password != password)
                {
                    _logger.LogInformation("ConfirmLogin Controller returned password doesn't match");
                    return BadRequest("password doesn't match");
                }
                else
                {
                    _logger.LogInformation("ConfirmLogin Controller returned role");
                    return Ok(user.Role);
                }
            }
            catch (Exception ex)
            {
                _logger.LogInformation("Caught exception" + ex + "in ConfirmLogin API controller");
                return (IActionResult)ex;
            }
        }
    }
}
