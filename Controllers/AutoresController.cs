using GoodBooks.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace GoodBooks.Controllers
{
    public class AutoresController : Controller
    {

        private readonly GoodBooksContext _context;

        public AutoresController(GoodBooksContext context)
        { 
            _context = context;
        }

        //JUAND:21/03/2025 Vista agregar un autor
        public IActionResult Create() 
        { 
            return View();
        
        }


        // 🔹 POST: Recibe los datos del formulario y los guarda en la BD
        [HttpPost]
        [ValidateAntiForgeryToken] // Protege contra ataques CSRF
        public IActionResult Create(Autor autor)
        {
            if (ModelState.IsValid) 
            {
                _context.Autores.Add(autor); 
                _context.SaveChanges(); 
                return RedirectToAction("Index", "Home"); 
            }
            return View(autor); 
        }

    }
}
