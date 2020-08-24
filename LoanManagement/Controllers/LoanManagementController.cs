using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LoanManagement.Data;
using LoanManagement.Models;
using LoanManagement.Repository.Implementation;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LoanManagement.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoanManagementController : ControllerBase
    {
        LoanDBContext _loanDBContext;
        LoanManagementRepository _loanManagementRepository;
        private readonly ILogger _logger;
        public LoanManagementController(LoanDBContext loanDBContext, ILogger<LoanManagementController> logger)
        {
            _loanDBContext = loanDBContext;
            _loanManagementRepository = new LoanManagementRepository(_loanDBContext);
            _logger = logger;
        }
        // GET: api/<LoanManagementController>
        //[HttpGet]
        //public IEnumerable<User> Get()
        //{
        //    //return new string[] { "value1", "value2" };
        //    return _loanDBContext.Users;
        //}

        #region Moved to another Controller
        // GET: api/LoanManagement/login
        //[HttpGet]
        //[Route("login")]
        //public IActionResult ConfirmLogin(string userid, string password)
        //{
        //    //var user = _loanDBContext.Users.Find(userid);
        //    var user = _loanDBContext.Users.FirstOrDefault(p => p.UserId== userid);
        //    if(user == null)
        //    {
        //        return NotFound("User doesn't exist");
        //    }
        //    else if(user.Password != password)
        //    {
        //        return BadRequest("password doesn't match");
        //    }
        //    else
        //    {
        //        return Ok(user.Role);
        //    }
        //}

        #endregion

        // GET api/LoanManagement/searchLoan
        [HttpGet]
        [Route("searchLoan")]
        public IActionResult GetSearchResult(string borrowerName, int loanId, int loanAmount)
        {
            try
            {
                var loan = _loanManagementRepository.GetSearchResult(borrowerName, loanId, loanAmount);
                _logger.LogInformation("GetSearchResult Controller returning search result");
                return Ok(loan);
            }
            catch(Exception ex)
            {
                _logger.LogInformation("GetSearchResult Controller exception : "+ex);
                throw ex;
            }
            
        }

        // POST /api/LoanManagement/addLoan
        [HttpPost]
        [Route("addLoan")]
        public IActionResult AddLoan([FromBody] LoanDetail loanDetail)
        {
            try
            {
                if(String.IsNullOrEmpty(loanDetail.BorrowerName) || loanDetail.LoanAmount == 0 || loanDetail.LoanTerm == 0 || String.IsNullOrEmpty(loanDetail.LoanType)
                    || String.IsNullOrEmpty(loanDetail.AddressLine1) || String.IsNullOrEmpty(loanDetail.City) || String.IsNullOrEmpty(loanDetail.ZipCode))
                {
                    _logger.LogInformation("AddLoan Controller unsuccessful due to improper information");
                    return Ok("Not proper or enough information");
                }
                var result = _loanManagementRepository.AddLoan(loanDetail);
                if (result)
                {
                    _logger.LogInformation("AddLoan Controller successful");
                    return Ok("Successful");
                }
                else
                {
                    _logger.LogInformation("AddLoan Controller unsuccessful");
                    return Ok("Unsuccessful");
                }
            }
            catch(Exception ex)
            {
                _logger.LogInformation("AddLoan Controller exception : " + ex);
                throw ex;
            }


        }

        // PUT /api/LoanManagement/editLoan/{loanId}
        [HttpPut]
        [Route("editLoan/{loanId}")]
        public IActionResult EditLoan(int loanId, [FromBody] LoanDetail loanDetail)
        {
            try
            {
                if (String.IsNullOrEmpty(loanDetail.BorrowerName) || loanDetail.LoanAmount == 0 || loanDetail.LoanTerm == 0 || String.IsNullOrEmpty(loanDetail.LoanType)
                    || String.IsNullOrEmpty(loanDetail.AddressLine1) || String.IsNullOrEmpty(loanDetail.City) || String.IsNullOrEmpty(loanDetail.ZipCode))
                {
                    _logger.LogInformation("EditLoan Controller unsuccessful due to improper information");
                    return Ok("Not proper or enough information");
                }
                var result = _loanManagementRepository.EditLoan(loanId, loanDetail);

                if (result)
                {
                    _logger.LogInformation("EditLoan Controller successful");
                    return Ok("Successful");
                }
                else
                {
                    _logger.LogInformation("EditLoan Controller unsuccessful");
                    return Ok("Unsuccessful");
                }
            }
            catch(Exception ex)
            {
                _logger.LogInformation("EditLoan Controller exception : " + ex);
                throw ex;
            }

        }

        // DELETE api/<LoanManagementController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
