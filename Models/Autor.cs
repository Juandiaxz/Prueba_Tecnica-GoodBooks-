using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;

namespace GoodBooks.Models
{
    public class Autor
    {
        [Key]
        public int AutorID { get; set; }

        [Required(ErrorMessage = "El nombre del autor es obligatorio.")]
        [MinLength(3, ErrorMessage = "El nombre debe tener al menos 3 caracteres.")]
        [StringLength(100, ErrorMessage = "El nombre no puede tener más de 100 caracteres.")]
        public string Nombre { get; set; }

        
        public ICollection<Libro> Libros { get; set; } = new List<Libro>();
    }
}
