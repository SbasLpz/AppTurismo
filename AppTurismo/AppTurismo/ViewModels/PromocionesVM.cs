using AppTurismo.Models;
using AppTurismo.Service;
using AppTurismo.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace AppTurismo.ViewModels
{
    public class PromocionesVM : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        private ObservableCollection<PromocionesModel> ofertas;
        public ICommand ComandoMasInformacion { get; set; }
        public ICommand cargarFeedOfertas { get; }

        public ObservableCollection<PromocionesModel> ofertaFeed
        {
            get { return ofertas; }
            set
            {
                ofertas = value;
                OnPropertyChanged(nameof(ofertaFeed));
            }
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async Task<List<PromocionesModel>> ExecuteCargarOfertas()
        {
            var result = new List<PromocionesModel>();
            try
            {
                result = await firebaseHelper.GetOfertas();
                if (result != null)
                {
                    Debug.WriteLine("DESTINOS OBTENIDOSSS !!!!!");
                    ofertaFeed = new ObservableCollection<PromocionesModel>(result);

                }
                else
                {
                    Debug.WriteLine("DATOS NO OBTENIDOS OH NO !!");
                    ofertaFeed = null;
                }

            }
            catch (Exception ex)
            {
                // Imprimir detalles sobre la excepción
                Console.WriteLine($"Error: {ex.Message}");
                Console.WriteLine($"StackTrace: {ex.StackTrace}");
                // Puedes agregar más información si es necesario
            }

            return result;

        }

        private async void ExecuteMasInformacion(PromocionesModel oferta)
        {

            Debug.WriteLine("Hola");

            var navigation = Application.Current.MainPage.Navigation;

            // Crea una nueva instancia de la página que deseas abrir
            var nuevaPagina = new PromocionesDetails(oferta);

            // Usa el metodo PushAsync para agregar la nueva página a la pila de navegación
            await navigation.PushModalAsync(nuevaPagina);
        }
    }
}