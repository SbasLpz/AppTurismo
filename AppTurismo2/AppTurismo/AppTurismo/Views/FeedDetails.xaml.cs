using System;
using System.Collections.Generic;
using System.Globalization;
using AppTurismo.Models;
using AppTurismo.Service;
using AppTurismo.Utils;
using AppTurismo.ViewModels;
using Xamarin.Forms;

namespace AppTurismo.Views
{	
	public partial class FeedDetails : ContentPage
	{

        FirebaseHelper firebaseHelper = new FirebaseHelper();
        UrlToImageSourceConverter urlConverter = new UrlToImageSourceConverter();
        private string userId = Application.Current.Properties["UserId"].ToString();
        private string destinoId = Application.Current.Properties["DestinoId"].ToString();

        public FeedDetails (DestinosModel destino)
		{
			InitializeComponent ();
			BindingContext = new FeedDetailsVM();
            //imgFoto.Source = (ImageSource)urlConverter.Convert(destino.imagen, typeof(ImageSource), null, CultureInfo.CurrentUICulture);

            var convertedImage = urlConverter.Convert(destino.imagen, typeof(ImageSource), null, CultureInfo.CurrentUICulture) as ImageSource;
            if (convertedImage != null)
            {
                imgFoto.Source = convertedImage;
            }
            else
            {
                // Manejar el caso en que la conversión no sea exitosa
                // Puedes asignar una imagen predeterminada o manejar el error de otra manera.
                imgFoto.Source = ImageSource.FromFile("imagen_icon.png");
            }

            lblName.Text = destino.nombre;
			lblUbi.Text = destino.ubicacion;
			lblCategoria.Text = destino.categoria;
            checkComentario();

            comentariosListView.RefreshCommand = new Command(() => {
                OnAppearing();
            });
        }

        protected override async void OnAppearing()
        {
            var result = await firebaseHelper.GetResenaByIds(userId, destinoId);
            if (result != null)
            {
                FrameComment.IsVisible = false;
                Console.WriteLine("ESTE USER YA COMENTO");
            } else
            {
                Console.WriteLine("EL USER NO HA HECHO NINGUN COMENTARIO=S");
            }

            var comments = await firebaseHelper.GetComentarios02(destinoId);
            comentariosListView.ItemsSource = null;
            comentariosListView.ItemsSource = comments;
            comentariosListView.IsRefreshing = false;
        }

        public async void checkComentario()
        {
            var result = await firebaseHelper.GetResenaByIds(userId, destinoId);
            if (result != null)
            {
                FrameComment.IsVisible = false;
                Console.WriteLine("ESTE USER YA COMENTO");
            }
            else
            {
                Console.WriteLine("EL USER NO HA HECHO NINGUN COMENTARIO");
                Console.WriteLine("idUser: "+userId+" destino: "+destinoId);
            }
        }
    }
}

