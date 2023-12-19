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
            promocionesListView.RefreshCommand = new Command(() => {
                OnAppearing();
            });
            OnAppearing();
            //BindingContext = new PromocionesVM();
            //(BindingContext as PromocionesVM)?.ExecuteCargarOfertas();

        }

        protected async void OnPageAppearing(object sender, EventArgs e)
        {
            var obj = new PromocionesVM();
            var promociones = await obj.ExecuteCargarOfertas();
            promocionesListView.ItemsSource = promociones;
            promocionesListView.IsRefreshing = false;

        }
    }

}