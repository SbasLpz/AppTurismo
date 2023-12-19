using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppTurismo.Models
{
    public class ReservaModel
    {
        [PrimaryKey, AutoIncrement]
        public Guid Id { get; set; }
        public string IdUsuario { get; set; }
        public string IdDestino { get; set; }
    }
}
