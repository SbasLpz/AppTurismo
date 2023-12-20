using AppTurismo.Models;
using AppTurismo.Service;
using AppTurismo.Views;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace AppTurismo.ViewModels
{
    public class PagoVM
    {
        public ICommand ComandoPago { get; set; }

        FirebaseHelper firebaseHelper = new FirebaseHelper();

        public PagoVM() {
            ComandoPago = new Command(ExecuteAddReservas);
        }

        public PagoVM(string idPromocion)
        {
            ComandoPago = new Command(ExecuteAddReservasPromociones);
        }


        private async void ExecuteAddReservas()
        {

            var reserva = new ReservaModel()
            {
                Id = Guid.NewGuid(),
                IdUsuario = Application.Current.Properties["UserId"].ToString(),
                IdDestino = Application.Current.Properties["DestinoId"].ToString()
            };

            await firebaseHelper.AddReserva(reserva);

            // Obtén la instancia de la interfaz de navegación desde la página actual
            var navigation = Application.Current.MainPage.Navigation;
            // Crea una nueva instancia de la página que deseas abrir
            var nuevaPagina = new MasterPage();
            // Usa el metodo PushAsync para agregar la nueva página a la pila de navegación
            await navigation.PushModalAsync(nuevaPagina);

            Xamarin.Forms.Application.Current.MainPage = new FlyoutPage
            {
                Flyout = new NavigationPage(new MasterPage()) { Title = "Menu", BarBackgroundColor = Color.FromHex("#77dd77") },
                Detail = new NavigationPage(new Feed()) { Title = "Feed", BarBackgroundColor = Color.FromHex("#77dd77") }
            };

        }

        private async void ExecuteAddReservasPromociones()
        {

            var reserva = new ReservaPromocionModel()
            {
                Id = Guid.NewGuid(),
                IdUsuario = Application.Current.Properties["UserId"].ToString(),
                IdPromocion = Application.Current.Properties["OfertsId"].ToString()
            };

            await firebaseHelper.AddReservaPromociones(reserva);

            // Obtén la instancia de la interfaz de navegación desde la página actual
            var navigation = Application.Current.MainPage.Navigation;
            // Crea una nueva instancia de la página que deseas abrir
            var nuevaPagina = new MasterPage();
            // Usa el metodo PushAsync para agregar la nueva página a la pila de navegación
            await navigation.PushModalAsync(nuevaPagina);

            Xamarin.Forms.Application.Current.MainPage = new FlyoutPage
            {
                Flyout = new NavigationPage(new MasterPage()) { Title = "Menu", BarBackgroundColor = Color.FromHex("#77dd77") },
                Detail = new NavigationPage(new Feed()) { Title = "Feed", BarBackgroundColor = Color.FromHex("#77dd77") }
            };

        }
    }
}
