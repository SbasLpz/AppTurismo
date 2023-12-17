using System;
using System.ComponentModel;
using System.Threading;
//using Acr.UserDialogs;
using AppTurismo.Models;
using AppTurismo.Service;
using Xamarin.Forms;

namespace AppTurismo.ViewModels
{
	public class AdminDestinoVM : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        public Command commandSave { get; set; }
        public DestinosModel destino { get; set; }

        public AdminDestinoVM()
		{
            destino = new DestinosModel();
            commandSave = new Command(ExecuteAgregarDestino);
		}

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private async void ExecuteAgregarDestino()
        {

            if (Validar(destino))
            {
                var isSaved = await firebaseHelper.AgregarDestino(destino);

                if (isSaved)
                {
                    //UserDialogs.Instance.Alert("Destino agregado", "Resultado", "Aceptar");
                    //await DisplayAlert("Información", "Registro ha sido almacenado", "Ok");
                    //UserDialogs.Instance.Alert("Registro ha sido almacenado", "Información", "Ok");
                    Clear();
                }
                else
                {
                    //await DisplayAlert("Erro", "Error al almacenar", "Ok");
                    //UserDialogs.Instance.Alert("Algo salio mal...", "Error", "Aceptar");
                }

            }
        }

        private bool Validar(DestinosModel destino)
        {
            bool respuesta = true;
            string mensaje = "";

            if (string.IsNullOrEmpty(destino.nombre) && string.IsNullOrEmpty(destino.descripcion) && string.IsNullOrEmpty(destino.imagen) && string.IsNullOrEmpty(destino.ubicacion))
            {
                mensaje += "Todos los campos son requeridos.\n";
            }

            if (mensaje.Length > 0)
            {
                //DisplayAlert("Alerta", mensaje, "Ok");
                //UserDialogs.Instance.Alert(mensaje, "Alerta", "Aceptar");
                respuesta = false;

            }

            return respuesta;
        }

        private void Clear()
        {
            destino.nombre = string.Empty;
            destino.descripcion = string.Empty;
            destino.ubicacion = string.Empty;
            destino.imagen = string.Empty;
            destino.ubicacion = string.Empty;
            destino.precio = 0;
        }
    }
}

