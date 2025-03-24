using Microsoft.EntityFrameworkCore;

namespace GoodBooks.Models
{
    public class GoodBooksContext:DbContext
    {
        public GoodBooksContext(DbContextOptions<GoodBooksContext>options)
        : base(options) { }

        public DbSet<Libro> Libros { get; set;}
        public DbSet<Autor> Autores { get; set;}

    }
}
