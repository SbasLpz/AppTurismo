using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Text;
using System.Windows.Input;
using AppTurismo.Models;
using AppTurismo.Service;
using AppTurismo.Views;
using Xamarin.Forms;

namespace AppTurismo.ViewModels
{
    public class PerfilUsuarioVM
    {
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        private ObservableCollection<UsuarioModel> usuario;
        public ICommand cargarFeedUsuario { get; set; }
        public ICommand ComandoGoReviews { get; set; }

        public ObservableCollection<UsuarioModel> usuarioFeed
        {
            get { return usuario; }
            set
            {
                usuario = value;
            }
        }

        public PerfilUsuarioVM()
        {
            cargarFeedUsuario = new Command(ExecuteCargarUsuario);
            ComandoGoReviews = new Command(ExecuteGoToReviews);
        }

        private async void ExecuteGoToReviews()
        {
            // Obtén la instancia de la interfaz de navegación desde la página actual
            var navigation = Application.Current.MainPage.Navigation;
            // Crea una nueva instancia de la página que deseas abrir
            var nuevaPagina = new Resenas();
            // Usa el metodo PushAsync para agregar la nueva página a la pila de navegación
            await navigation.PushModalAsync(nuevaPagina);
        }

        private async void ExecuteCargarUsuario()
        {
            try
            {
                var result = await firebaseHelper.GetUsuarioById("8ea4d5e1-bd71-41bc-96be-8ae595feefba");
                if (result != null)
                {
                    usuarioFeed = new ObservableCollection<UsuarioModel>(result);
                }
                else
                {
                    usuarioFeed = null;
                }
            }
            catch (Firebase.Database.FirebaseException ex)
            {
                // Imprimir detalles sobre la excepción
                Console.WriteLine($"Error: {ex.Message}");
                Console.WriteLine($"StackTrace: {ex.StackTrace}");
                // Puedes agregar más información si es necesario
            }

        }
    }
}
