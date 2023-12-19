using AppTurismo.Models;
using AppTurismo.Service;
using AppTurismo.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace AppTurismo.ViewModels
{
    public class HistorialVM : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        private ObservableCollection<HistorialModel> historial;
        private string userId = Application.Current.Properties["UserId"].ToString();
        public ICommand cargarHistorial { get; set; }

        public ObservableCollection<HistorialModel> reservaciones
        {
            get { return historial; }
            set
            {
                historial = value;
                OnPropertyChanged(nameof(reservaciones));
            }
        }

        public HistorialVM()
        {
            cargarHistorial = new Command(ExecuteCargarHistorial);
            ExecuteCargarHistorial();
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async void ExecuteCargarHistorial()
        {

            try
            {
                reservaciones = new ObservableCollection<HistorialModel>();

                var reservacionesPromociones = await firebaseHelper.GetReservasPromocionesByUser(userId);
                var reservacionesLugares = await firebaseHelper.GetReservasByUser(userId);

                foreach (var reservation in reservacionesLugares)
                {
                    var placeInfo = await firebaseHelper.GetDestinosById(reservation.IdDestino);
                    reservaciones.Add(new HistorialModel(placeInfo.FirstOrDefault().descripcion, placeInfo.FirstOrDefault().precio.ToString(), "Reserva Lugares", placeInfo.FirstOrDefault().imagen));
                }

                foreach (var promReservation in reservacionesPromociones)
                {
                    var placeInfo = await firebaseHelper.GetOfertasById(promReservation.IdPromocion);
                    reservaciones.Add(new HistorialModel(placeInfo.FirstOrDefault().Titulo, placeInfo.FirstOrDefault().Precio, "Reserva Promocion", placeInfo.FirstOrDefault().ImageSource));
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
