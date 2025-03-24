using System.Diagnostics;
using GoodBooks.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace GoodBooks.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly GoodBooksContext _context;


        //Acceder a la base de datos
        public HomeController(GoodBooksContext context)
        {
            _context = context;
        
        }


        //Retornar los libros
        public IActionResult Index()
        {
            var libros = _context.Libros.Include(l => l.Autor).ToList();
            return View(libros);
        }

    }
}
