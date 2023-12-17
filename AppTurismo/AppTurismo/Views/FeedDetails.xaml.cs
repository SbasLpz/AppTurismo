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
            var convertedImage = urlConverter.Convert(destino.imagen, typeof(ImageSource), null, CultureInfo.CurrentUICulture) as ImageSource;
            if (convertedImage != null)
            {
                imgFoto.Source = convertedImage;
            }
            else
            {
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
            }
        }
    }
}

