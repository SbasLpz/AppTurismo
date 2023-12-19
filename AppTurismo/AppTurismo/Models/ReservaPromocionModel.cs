using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppTurismo.Models
{
    public class ReservaPromocionModel
    {
        [PrimaryKey, AutoIncrement]
        public Guid Id { get; set; }
        public string IdUsuario { get; set; }
        public string IdPromocion { get; set; }
    }
}
