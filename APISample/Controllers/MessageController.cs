using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace APISample.Controllers
{
    [Route("Msg/")]
    public class MessageController : ControllerBase
    {
        [HttpGet("Hi/{value}")]
        public string GetHello(string value)
        {
            return "Hello "+value;
        }
        [HttpGet("Hello/")]
        public ActionResult<string> GetHi(string value)
        {
            return "Hii "+value;
        }
       /* [HttpGet]
        public string Get()
        {
            return "No input Message";
        }
        [HttpGet("{greet}")]
        public ActionResult<string> Get(string greet)
        {
            return greet == "Hello" ? "Hi" : greet == "Hi" ? "Hello" :"Sorry!!Invalid Message..";
        }*/
        
    }
}