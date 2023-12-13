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
	public partial class Mapa : ContentPage
	{
		public Mapa ()
		{
			InitializeComponent ();

            webViewMapaContent.Source = new HtmlWebViewSource
            {
                Html = @"
                    <html>
                    <head>
                        <link rel=""stylesheet"" href=""https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"" />
                        <style>
                            #map {
                                height: 100%;
                            }

                            .leaflet-control-attribution, .leaflet-popup-content {
                                display: none !important;
                            }
                        </style>
                        <script src=""https://unpkg.com/leaflet@1.7.1/dist/leaflet.js""></script>
                    </head>
                    <body>
                        <div id=""map""></div>
                        <script>
                            var mymap = L.map('map').setView([10.2548, -85.4132], 9);
                            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(mymap);
                        </script>
                    </body>
                    </html>"
            };

            Title = "Mapa Interactivo";

            NavigationPage.SetTitleView(this, new Label
            {
                Text = Title,
                FontAttributes = FontAttributes.Bold,
                TextColor = Color.White,
                FontSize = 20,
                HorizontalOptions = LayoutOptions.CenterAndExpand,
            });
        }
	}
}