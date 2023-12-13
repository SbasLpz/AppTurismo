using AppTurismo.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;




namespace AppTurismo.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class calendario : ContentPage
    {

       // private ObservableCollection<Actividad> actividades;
        private Dictionary<DateTime,List<string>> actividadesPorFecha = new Dictionary<DateTime, List<string>>();
        public calendario()
        {
            InitializeComponent();
              calendar.IsVisible = true;
              inicializarActividades();
              calendar.DateSelected += Calendario_DateSelected;
              MostrarFechaSeleccionada();
              calendar.MinimumDate = DateTime.Now.Date;

            Title = "Turismo";

            NavigationPage.SetTitleView(this, new Label
            {
                Text = Title,
                FontAttributes = FontAttributes.Bold,
                TextColor = Color.White,
                FontSize = 20,
                HorizontalOptions = LayoutOptions.CenterAndExpand,
            });

        }



        
        private void Calendario_DateSelected(object sender, DateChangedEventArgs e)
        {
            MostrarFechaSeleccionada();
        }


        private void MostrarFechaSeleccionada()
        {
            
            DateTime fechaSeleccionada = calendar.Date;

            var Actividades = ObtenerActividadesParaFecha(fechaSeleccionada);
            actividadesListView.ItemsSource = Actividades;
        }

        private void inicializarActividades()
        {
            var actividades = new List<string>
              {
                  "Pesca deportiva",
                  "Surf",
                  "Degustacion de comidas"
              };
            actividadesPorFecha.Add(DateTime.Parse("2023-12-15"), actividades);
        }

        private List<string> ObtenerActividadesParaFecha(DateTime fecha)
        {

           
            if (actividadesPorFecha.TryGetValue(fecha, out var actividades))
            {
                return actividades;
            }
            else
            {
                return new List<string> { "No hay actividades para esta fecha." };
            }
        }


    }
}