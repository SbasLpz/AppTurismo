using AppTurismo.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace AppTurismo
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            BindingContext = new RegistroVM();

            // Suscribirse al mensaje para mostrar la alerta
            MessagingCenter.Subscribe<RegistroVM>(this, "MostrarAlerta", async (sender) =>
            {
                await DisplayAlert("Error de duplicados", "El telefono, tarjeta o correo ya se encuentras registrados en el sistema.", "Aceptar");
            });
        }

        private void txtNumTarjeta_TextChanged(object sender, TextChangedEventArgs e)
        {
            //if (txtNumTarjeta.Text.Length >= 4 && txtNumTarjeta.Text.Length == txtNumTarjeta.Text.Length + 1)
            //{
            //    txtNumTarjeta.Text = txtNumTarjeta.Text.Insert(4, " ");
            //}

            if (txtNumTarjeta.Text.Length == 4 || txtNumTarjeta.Text.Length == 8+1 || txtNumTarjeta.Text.Length == 12+2)
            {
                txtNumTarjeta.Text = txtNumTarjeta.Text.Insert(txtNumTarjeta.Text.Length, " ");
                Debug.WriteLine("Escpacion TARGETAAA.");
            }
        }
    }
}
