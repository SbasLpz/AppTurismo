﻿using AppTurismo.Models;
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
        public ICommand cargarFeedOfertas { get; set; }

        public ObservableCollection<PromocionesModel> ofertaFeed
        {
            get { return ofertas; }
            set
            {
                ofertas = value;
                OnPropertyChanged(nameof(ofertaFeed));
            }
        }

        public PromocionesVM()
        {
            cargarFeedOfertas = new Command(ExecuteCargarOfertas);
            ExecuteCargarOfertas();
            ComandoMasInformacion = new Command<PromocionesModel>(ExecuteMasInformacion);
            }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async void ExecuteCargarOfertas()
        {
         
            try
            {
               var result = await firebaseHelper.GetOfertas();
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
            catch (Firebase.Database.FirebaseException ex)
            {
                // Imprimir detalles sobre la excepción
                Console.WriteLine($"Error: {ex.Message}");
                Console.WriteLine($"StackTrace: {ex.StackTrace}");
                // Puedes agregar más información si es necesario
            }

        }

        private async void ExecuteMasInformacion(PromocionesModel oferta)
        {
            Application.Current.Properties["OfertsId"] = oferta.Id;
            var navigation = Application.Current.MainPage.Navigation;

            // Crea una nueva instancia de la página que deseas abrir
            var nuevaPagina = new Pago(oferta.Id);

            // Usa el metodo PushAsync para agregar la nueva página a la pila de navegación
            await navigation.PushModalAsync(nuevaPagina);
        }
    }
}