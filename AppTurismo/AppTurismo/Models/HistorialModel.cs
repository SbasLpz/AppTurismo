using System;
using System.Collections.Generic;
using System.Text;

namespace AppTurismo.Models
{
    public class HistorialModel
    {
        public HistorialModel (string name, string price, string type, string imagen)
        {
            this.name = name;
            this.price = price;
            this.type = type;
            this.imagen = imagen;
        }

        public string name { get; set; }
        public string price { get; set; }
        public string type { get; set; }
        public string imagen { get; set; }
    }
}
