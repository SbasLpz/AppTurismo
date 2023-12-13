using AppTurismo.Service;
using AppTurismo.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace AppTurismo.ViewModels
{
    public class InicioSesionVM : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        public ICommand IniciarSesion { get; }
        FirebaseHelper firebaseHelper = new FirebaseHelper();

        private string txtCorreo;
        private string txtContra;

        public string Correo
        {
            get { return txtCorreo; }
            set
            {
                txtCorreo = value;
                OnPropertyChanged(nameof(Correo));
            }
        }

        public string Contra
        {
            get { return txtContra; }
            set
            {
                txtContra = value;
                OnPropertyChanged(nameof(Contra));
            }
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public InicioSesionVM()
        {
            IniciarSesion = new Command(ExecuteInicioSesion);
        }

        private async void ExecuteInicioSesion()
        {
            //var user = new UsuarioModel
            //{
            //    nombres = txtNombres,
            //    apellidos = txtApellidos,
            //    contra = txtContra,
            //    telefono = txtTelefono,
            //    tarjeta = txtNumTarjeta,
            //    correo = txtCorreo,
            //    activo = "true"
            //};

            //await firebaseHelper.AddUsuario(user);

            if (txtCorreo != "" && txtContra != "")
            {
                var result = await firebaseHelper.InicioSesion(txtCorreo, txtContra);
                if (result != null)
                {
                    Debug.WriteLine("CREDEMNCIALES CORRECTAS");
                    MessagingCenter.Send(this, "UserFromIS", result);

                    Application.Current.Properties["UserId"] = result.Id;
                    var navigation = Application.Current.MainPage.Navigation;
                    await navigation.PushAsync(new Feed());
                } else
                {
                    Debug.WriteLine("CREDEMNCIALES NO CORRECTAS");
                }
            } else
            {
                Debug.WriteLine("Campos vacios....");
            }

          
        }
    }
}
