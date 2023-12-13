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

        }

        //inicio con facebook
        private void inicioFace_Clicked(object sender, EventArgs e)
        {

        }
        //inicio de sesion con correo
        private void btnInicio_Clicked(object sender, EventArgs e)
        {

        }

    }
}