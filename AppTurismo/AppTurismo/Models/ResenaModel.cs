using System;
using SQLite;

namespace AppTurismo.Models
{
	public class ResenaModel
	{
        [PrimaryKey, AutoIncrement]
        public Guid Id { get; set; }

        public string IdDestino { get; set; }

        public string IdUsuario { get; set; }
        
        public int estrellas { get; set; }

        [MaxLength(150)]
        public string comentario { get; set; }

        public string nombreUser { get; set; }
    }
}

