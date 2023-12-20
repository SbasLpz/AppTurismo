using AppTurismo.Models;
using AppTurismo.ViewModels;
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
    public partial class Promociones : ContentPage
    {

        public Promociones()
        {
            InitializeComponent();
            BindingContext = new PromocionesVM();
            (BindingContext as PromocionesVM)?.ExecuteCargarOfertas();
        }

        private void OnPageAppearing(object sender, EventArgs e)
        {
            if (BindingContext is PromocionesVM viewModel)
            {
                viewModel.cargarFeedOfertas.Execute(null);
                viewModel.ComandoMasInformacion.Execute(null);
            }
        }
    }
}