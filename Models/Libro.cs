using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace GoodBooks.Models
{
    public class Libro
    {

        [Key]
        public int ID { get; set; }

        [Required(ErrorMessage = "El título es obligatorio")]
        public string Titulo {get; set; }

        [Required(ErrorMessage = "El campo Autor es obligatorio.")]
        [Range(1, int.MaxValue, ErrorMessage = "Seleccione un autor válido.")]
        public int AutorID { get; set; }

        [ForeignKey("AutorID")]
        public virtual Autor Autor {  get; set; }


    }
}
