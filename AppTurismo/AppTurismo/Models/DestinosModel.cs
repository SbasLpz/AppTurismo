using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppTurismo.Models
{
    public class DestinosModel
    {
        [PrimaryKey]
        public string Id { get; set; }
        [MaxLength(20)]
        public string categoria { get; set; }
        [MaxLength(45)]
        public string nombre { get; set; }
        [MaxLength(100)]
        public string imagen { get; set; }
        [MaxLength(150)]
        public string descripcion { get; set; }
        [MaxLength(50)]
        public string ubicacion { get; set; }
        public int precio { get; set; }
    }
}
