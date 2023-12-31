﻿using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;

namespace AppTurismo.Models
{
    public class PromocionesModel
    {
        [PrimaryKey]
        public string Id { get; set; }
        public string ImageSource { get; set; }
        public string Titulo { get; set; }
        public string Descuento { get; set; }
        public string Compania { get; set; }
        public string Precio { get; set; }
    }
}
