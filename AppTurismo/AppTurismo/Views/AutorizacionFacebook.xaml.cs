using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppTurismo.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AutorizacionFacebook : ContentPage
    {
        public AutorizacionFacebook()
        {
            InitializeComponent();
        }

        private void btnCancelar_Clicked(object sender, EventArgs e)
        {
            Application.Current.MainPage = new InicioSesion();
        }

        private void btnConfirmar_Clicked(object sender, EventArgs e)
        {
            Application.Current.MainPage = new FlyoutPage
            {
                Flyout = new NavigationPage(new MasterPage()) { Title = "Menu", BarBackgroundColor = Color.FromHex("#77dd77") },
                Detail = new NavigationPage(new Feed()) { Title = "Feed", BarBackgroundColor = Color.FromHex("#77dd77") }
            };

        }
    }
}