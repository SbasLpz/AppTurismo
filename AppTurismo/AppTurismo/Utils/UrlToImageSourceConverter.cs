using System;
using System.Globalization;
using Xamarin.Forms;

namespace AppTurismo.Utils
{
	public class UrlToImageSourceConverter : IValueConverter
    {
		public UrlToImageSourceConverter() 
		{

		}

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string url && Uri.IsWellFormedUriString(url, UriKind.Absolute))
            {
                return ImageSource.FromUri(new Uri(url));
            }
            else
            {
                // Si la URL no es válida, devuelve la URL de la imagen por defecto
                return "imagen_icon.png"; // Reemplaza con la ruta de tu imagen por defecto
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}

