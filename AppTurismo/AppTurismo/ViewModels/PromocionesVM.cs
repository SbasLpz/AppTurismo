using AppTurismo.Models;
using AppTurismo.Service;
using AppTurismo.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
        private ObservableCollection<OfertasModel> ofertas;
        public ICommand ComandoVermas { get; set; }
        public ICommand cargarFeed { get; }
        
        public ObservableCollection<OfertasModel> listaFeed
        {
            get { return ofertas; }
            set
            {
                ofertas = value;
                OnPropertyChanged(nameof(listaFeed));
            }
        }

        public PromocionesVM()
        {
            cargarFeed = new Command(ExecuteCargarFeed);
            ExecuteCargarFeed();
            ComandoVermas = new Command<OfertasModel>(ExecuteVerMas);
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async void ExecuteCargarFeed()
        {
            try
            {
                var result = await firebaseHelper.GetOfertas();
                if (result != null)
                {
                    Debug.WriteLine("DESTINOS OBTENIDOSSS !!!!!");
                    listaFeed = new ObservableCollection<DestinosModel>(result);
                    Debug.WriteLine("CANTIDAD DESTINOS: " + listaFeed.Count);
                    Debug.WriteLine("---------: " + listaFeed[0].nombre);
                    Debug.WriteLine("IMAGEN A USAR----: " + listaFeed[0].imagen);
                    //MessagingCenter.Send(this, "UserFromIS", result);
                }
                else
                {
                    Debug.WriteLine("DATOS NO OBTENIDOS OH NO !!");
                    listaFeed = null;
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
        private async void ExecuteVerMas(OfertasModel destino)
        {
            Application.Current.Properties["DestinoId"] = destino.Id;
            var navigation = Application.Current.MainPage.Navigation;
            var nuevaPagina = new FeedDetails(destino);
            await navigation.PushModalAsync(nuevaPagina);
        }
    }
}
