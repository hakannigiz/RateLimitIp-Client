﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Reflection.Metadata.Ecma335;

namespace RateLimit.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    public class ProductController : ControllerBase
    {
        [HttpGet]
        public IActionResult GetProduct()
        {
            return Ok(new { Id = 1, Name = "Kalem", Price = 20 });
        }

        // *GET* api/product/kalem/20
        [HttpGet("{name}/{price}")]
        public IActionResult GetProduct(string name,int price)
        {
            return Ok(name);
        }

        [HttpPost]
        public IActionResult SaveProduct()
        {
            return Ok(new { Status ="Success" });

        }

        [HttpPut]
        public IActionResult UpdateProduct() 
        {
            return Ok();
        }
    }
}
