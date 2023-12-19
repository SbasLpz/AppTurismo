using AppTurismo.Service;
using AppTurismo.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.AndroidSpecific;
using Xamarin.Forms.Xaml;

namespace AppTurismo.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class InicioSesion : ContentPage
    {
        public InicioSesion()
        {
            InitializeComponent();
            BindingContext = new InicioSesionVM();
            Title = "Inicio de Sesión";

            NavigationPage.SetTitleView(this, new Label
            {
                Text = Title,
                TextColor = Color.White,
                FontSize = 20,
                HorizontalOptions = LayoutOptions.CenterAndExpand,
            });
        }

        //envia a registro
        private void btnRegistro_Clicked(object sender, EventArgs e)
        {
            Xamarin.Forms.Application.Current.MainPage = new MainPage();
        }

        //inicio con facebook
        private void inicioFace_Clicked(object sender, EventArgs e)
        {
            Xamarin.Forms.Application.Current.MainPage = new AutorizacionFacebook();
        }
        //inicio de sesion con correo
        private async void btnInicio_Clicked(object sender, EventArgs e)
        {
            FirebaseHelper firebaseHelper = new FirebaseHelper();
            try
            {
                string correo = txtCorreo.Text;
                string contra = txtContra.Text;

                //validacion nulos
                if (string.IsNullOrEmpty(correo) || string.IsNullOrEmpty(contra))
                {
                    await DisplayAlert("Error", "Por favor ingrese sus datos", "Aceptar");
                    return;
                }
                //valida el usuario
                else if (correo != null && contra != null)
                {
                    var result = await firebaseHelper.InicioSesion(correo, contra);
                    if (result != null)
                    {
                        MessagingCenter.Send(this, "UserFromIS", result);
                        Xamarin.Forms.Application.Current.Properties["UserId"] = result.Id;
                        var navigation = Xamarin.Forms.Application.Current.MainPage.Navigation;
                        

                        Xamarin.Forms.Application.Current.MainPage = new FlyoutPage
                        {
                            Flyout = new NavigationPage(new MasterPage()) { Title = "Menu", BarBackgroundColor = Color.FromHex("#77dd77") },
                            Detail = new NavigationPage(new Feed()) { Title = "Feed", BarBackgroundColor = Color.FromHex("#77dd77") }
                        };
                       
                        contra = null;
                    }
                    //mensaje en caso de que el usuario no pueda ser validado
                    else
                    {
                        await DisplayAlert("Error", "Credenciales Incorrectas", "Aceptar");
                    }
                }
            }
            //mensaje de error en caso de problemas
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Error al iniciar sesion: {ex.Message}", "Aceptar");
            }
        }

    }
}