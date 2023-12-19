using AppTurismo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppTurismo.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PromocionesDetails : ContentPage
    {
        public PromocionesDetails(PromocionesModel oferta)
        {
            InitializeComponent();
        }
    }
}