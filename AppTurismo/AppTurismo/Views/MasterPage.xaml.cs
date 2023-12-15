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
    public partial class MasterPage : ContentPage
    {
        public MasterPage()
        {
            InitializeComponent();
        }

        private async void OnItemSelected(object sender, ItemTappedEventArgs e)
        {
            var selectedItem = e.Item as string;
            switch (selectedItem)
            {
                case "Destinos":
                    await (App.Current.MainPage as FlyoutPage).Detail.Navigation.PushAsync(new Feed());
                    break;
                case "Paquetes":
                    await (App.Current.MainPage as FlyoutPage).Detail.Navigation.PushAsync(new Feed());
                    break;
                case "Ofertas y descuentos":
                    await (App.Current.MainPage as FlyoutPage).Detail.Navigation.PushAsync(new OfertasDescuentos());
                    break;
                case "Calendario":
                    await (App.Current.MainPage as FlyoutPage).Detail.Navigation.PushAsync(new calendario());
                    break;
                case "Perfil de usuario":
                    await (App.Current.MainPage as FlyoutPage).Detail.Navigation.PushAsync(new PerfilUsuario());
                    break;

            }

              (App.Current.MainPage as FlyoutPage).IsPresented = false;
        }

    }
}