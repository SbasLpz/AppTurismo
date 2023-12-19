using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Windows.Input;
using AppTurismo.Models;
using AppTurismo.Service;
using Xamarin.Forms;

namespace AppTurismo.ViewModels
{
    public class PerfilUsuarioVM: INotifyPropertyChanged
    {
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        private UsuarioModel usuario;

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public ICommand cargarFeedUsuario { get; }

        public UsuarioModel userInfo
        {
            get { return usuario; }
            set
            {
                usuario = value;
                OnPropertyChanged(nameof(usuario));
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
                    this.usuario = result.FirstOrDefault();
                else
                {
                    this.usuario = null;
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
