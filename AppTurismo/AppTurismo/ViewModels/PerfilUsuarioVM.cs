using System;
using System.Collections.Generic;
using System.Text;
using AppTurismo.Models;

namespace AppTurismo.ViewModels
{
    public class PerfilUsuarioVM: INotifyPropertyChanged
    {
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        private ObservableCollection<UsuarioModel> usuario;
        public ICommand cargarFeedUsuario { get; }

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
            ExecuteCargarUsuario();
        }

        public async void ExecuteCargarUsuario()
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
