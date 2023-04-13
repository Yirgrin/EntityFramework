using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using EntityFramework.Models;

namespace EntityFramework.Controllers
{
    public class DestinationsController : Controller
    {
        private readonly TestEntityContext _context;

        public DestinationsController(TestEntityContext context)
        {
            _context = context;
        }

        // GET: Destinations
        public async Task<IActionResult> Index()
        {
              return _context.Destinations != null ? 
                          View(await _context.Destinations.ToListAsync()) :
                          Problem("Entity set 'TestEntityContext.Destinations'  is null.");
        }
    }

}
