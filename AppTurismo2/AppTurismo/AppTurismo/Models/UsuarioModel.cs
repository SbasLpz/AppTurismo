using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppTurismo.Models
{
    public class UsuarioModel
    {
        [PrimaryKey, AutoIncrement]
        public Guid Id { get; set; }
        [MaxLength(30)]
        public string nombres { get; set; }
        [MaxLength(30)]
        public string apellidos { get; set; }
        [MaxLength(15)]
        public string telefono { get; set; }
        [MaxLength(20)]
        public string tarjeta { get; set; }
        [MaxLength(40)]
        public string correo { get; set; }
        [MaxLength(30)]
        public string contra { get; set; }
        [MaxLength(10)]
        public string activo { get; set; }
    }
}
