using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppTurismo.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class OfertasDescuentos : ContentPage
    {
        public ObservableCollection<Oferta> Ofertas { get; set; }

        public OfertasDescuentos()
        {
            InitializeComponent();
            Ofertas = new ObservableCollection<Oferta>
            {
                new Oferta
                {
                    ImagenSource = "https://www.guanacastetours.com/wp-content/uploads/2018/02/catarata-mapache-kid-min.jpg",
                    Titulo = "Tour Cuadriciclo",
                    Descuento = "Descuento del 20%",
                    Compania = "Tours Guanacaste",
                    Precio = "10,000 por cuadraciclo",
                    InformacionCommand = new Command(() => MostrarInformacion("Tour Cuadriciclo"))
                },
                new Oferta
                {
                    ImagenSource = "HotelOferta.jpg",
                    Descuento = "Descuento del 15%",
                    Titulo = "Hotel Playa Paradise",
                    Compania = "Compañía: Guanacaste Tours",
                    Precio = "Precio: ₡50,000 por persona",
                    InformacionCommand = new Command(() => MostrarInformacion("Hotel Playa Paradise"))
                }
            };

            BindingContext = this;
        }

        private void MostrarInformacion(string titulo)
        {
            DisplayAlert("Información", $"Detalles de {titulo}", "OK");
        }
    }

    public class Oferta
    {
        public string ImagenSource { get; set; }
        public string Titulo { get; set; }
        public string Descuento { get; set; }
        public string Compania { get; set; }
        public string Precio { get; set; }
        public ICommand InformacionCommand { get; set; }
    }
}