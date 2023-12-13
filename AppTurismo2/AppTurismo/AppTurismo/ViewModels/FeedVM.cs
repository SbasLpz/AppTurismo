using AppTurismo.Models;
using AppTurismo.Service;
using AppTurismo.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace AppTurismo.ViewModels
{
    public class FeedVM : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        private ObservableCollection<DestinosModel> lista;
        public ICommand ComandoVermas { get; set; }
        //private List<DestinosModel> lista;

        public ICommand cargarFeed { get; }

        public ObservableCollection<DestinosModel> listaFeed
        {
            get { return lista; }
            set
            {
                //if (lista != value)
                //{
                //    lista = value;
                //    OnPropertyChanged(nameof(listaFeed));
                //}
                lista = value;
                OnPropertyChanged(nameof(listaFeed));
            }
        }

        //public List<DestinosModel> listaFeed
        //{
        //    get { return lista; }
        //    set
        //    {
        //        if (lista != value)
        //        {
        //            lista = value;
        //            OnPropertyChanged(nameof(listaFeed));
        //        }
        //    }
        //}

        public FeedVM()
        {
            cargarFeed = new Command(ExecuteCargarFeed);
            ExecuteCargarFeed();
            ComandoVermas = new Command<DestinosModel>(ExecuteVerMas);
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async void ExecuteCargarFeed()
        {
            try
            {
                // Código que realiza la operación en la base de datos de Firebase
                var result = await firebaseHelper.GetDestinos();
                if (result != null)
                {
                    Debug.WriteLine("DESTINOS OBTENIDOSSS !!!!!");
                    listaFeed = new ObservableCollection<DestinosModel>(result);
                    Debug.WriteLine("CANTIDAD DESTINOS: "+listaFeed.Count);
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

        private async void ExecuteVerMas(DestinosModel destino)
        {
            Console.WriteLine("Hola buen Q TAL ?");

            Console.WriteLine("DESTINOOOOO__ID: " + destino.Id);
            Application.Current.Properties["DestinoId"] = destino.Id;
            //var tarea = (DestinosModel)((Button)sender).CommandParameter;
            // Obtén la instancia de la interfaz de navegación desde la página actual
            var navigation = Application.Current.MainPage.Navigation;

            // Crea una nueva instancia de la página que deseas abrir
            var nuevaPagina = new FeedDetails(destino);

            // Usa el metodo PushAsync para agregar la nueva página a la pila de navegación
            await navigation.PushAsync(nuevaPagina);
        }


    }
}

