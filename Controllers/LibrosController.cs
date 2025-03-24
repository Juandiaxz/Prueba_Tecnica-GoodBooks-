using GoodBooks.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace GoodBooks.Controllers
{
    public class LibrosController : Controller
    {
        private readonly GoodBooksContext _context;
        
        public LibrosController(GoodBooksContext context)
        {
            _context = context;
        
        }

        public IActionResult Create()
        {
            ViewBag.Autores = new SelectList(_context.Autores, "AutorID", "Nombre");
            return View();
        }


        // JUAN 21/03/2025 Guardar el nuevo libro en la base de datos
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Libro libro)
        {
            ModelState.Remove("Autor");

            if (!ModelState.IsValid)
            {
                Console.WriteLine("ModelState inválido. Errores:");
                
                foreach (var key in ModelState.Keys)
                {
                    var state = ModelState[key];
                    foreach (var error in state.Errors)
                    {
                        Console.WriteLine($"Campo: {key} - Error: {error.ErrorMessage}");
                    }
                }

                ViewBag.Autores = new SelectList(_context.Autores, "AutorID", "Nombre");
                return View(libro);
            }


            _context.Libros.Add(libro);
            _context.SaveChanges();
            return RedirectToAction("Index", "Home");
        }



    }
}
