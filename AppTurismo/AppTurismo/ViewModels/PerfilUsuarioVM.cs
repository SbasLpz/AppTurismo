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
    public class PerfilUsuarioVM : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private string userId = Application.Current.Properties["UserId"].ToString();
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        private ObservableCollection<UsuarioModel> usuario;
        public ICommand cargarFeedUsuario { get; set; }
        public ICommand ComandoGoReviews { get; set; }
        public ICommand ComandoGoHistorial { get; set; }

        public ObservableCollection<UsuarioModel> usuarioFeed
        {
            get { return usuario; }
            set
            {
                usuario = value;
                OnPropertyChanged(nameof(usuarioFeed));
            }
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public PerfilUsuarioVM()
        {
            cargarFeedUsuario = new Command(ExecuteCargarUsuario);
            ExecuteCargarUsuario();
            ComandoGoReviews = new Command(ExecuteGoToReviews);
            ComandoGoHistorial = new Command(ExecuteGoToHistorial);
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

        private async void ExecuteGoToHistorial()
        {
            // Obtén la instancia de la interfaz de navegación desde la página actual
            var navigation = Application.Current.MainPage.Navigation;
            // Crea una nueva instancia de la página que deseas abrir
            var nuevaPagina = new Historial();
            // Usa el metodo PushAsync para agregar la nueva página a la pila de navegación
            await navigation.PushModalAsync(nuevaPagina);
        }

        private async void ExecuteCargarUsuario()
        {
            try
            {
                var result = await firebaseHelper.GetUsuarioById(userId);
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
