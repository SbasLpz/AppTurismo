using AppTurismo.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;




namespace AppTurismo
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();


            //MainPage = new MainPage();

            //******************************************************************************************
            //pagina de inicio de sesion
            MainPage = new NavigationPage(new InicioSesion())
             {
                 BarBackgroundColor = Color.FromHex("#77dd77"),
             };

            //calendario
            /*   MainPage = new NavigationPage(new InicioSesion())
               {
                   BarBackgroundColor = Color.FromHex("#77dd77"),
               };
            */

            //mapa
            /* MainPage = new NavigationPage(new Mapa())
             {
                 BarBackgroundColor = Color.FromHex("#77dd77"),
             };*/


            //******************************************************************************************

        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
