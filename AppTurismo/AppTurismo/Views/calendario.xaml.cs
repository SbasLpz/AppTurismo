using AppTurismo.ViewModels;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.IO;
using AppTurismo.Models;



namespace AppTurismo.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class calendario : ContentPage
    {

     
        private Dictionary<DateTime,List<string>> actividadesPorFecha = new Dictionary<DateTime, List<string>>();

        private ObservableCollection<string> _actividades = new ObservableCollection<string>();

        public ObservableCollection<string> Actividades
        {
            get { return _actividades; }
            set
            {
                if (_actividades != value)
                {
                    _actividades = value;
                    OnPropertyChanged(nameof(Actividades));
                }
            }
        }
        private ObservableCollection<string> actividades = new ObservableCollection<string>();

        public calendario()
        {
            InitializeComponent();
            BindingContext = this;
            calendar.IsVisible = true;
              inicializarActividades();
              calendar.DateSelected += Calendario_DateSelected;
              MostrarFechaSeleccionada();
              calendar.MinimumDate = DateTime.Now.Date;
            actividadesListView.ItemsSource = actividades;

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
            var actividadesFecha1 = new List<string>
            {
             "Pesca deportiva",
             "Surf",
             "Degustacion de comidas"
             };

            var actividadesFecha2 = new List<string>
              {
               "Senderismo",
               "Buceo"
               };

           
            actividadesPorFecha.Add(DateTime.Parse("2023-12-28"), actividadesFecha1);
            actividadesPorFecha.Add(DateTime.Parse("2023-12-30"), actividadesFecha2);

            

            // Actualizar la fuente de datos del ListView
            actividadesListView.ItemsSource = actividades;

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




        private const string ActividadesFileName = "actividades.json";
        private HashSet<string> actividadesAgregadasEnClick = new HashSet<string>();
        private void btnAddActividad_Clicked(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string selectedActivity = clickedButton.CommandParameter as string;


            if (actividadesAgregadasEnClick.Contains(selectedActivity))
            {
                DisplayAlert("Alerta", "Esa actividad ya fue agregada", "Aceptar");
                return;
            }

            DateTime fechaActividad = actividadesPorFecha.FirstOrDefault(pair => pair.Value.Contains(selectedActivity)).Key;
            actividadesAgregadasEnClick.Add(selectedActivity);
            actividadesAgregadasEnClick.Add(fechaActividad.ToString());
            actividades.Add(selectedActivity);
            actividades.Add(fechaActividad.ToString());
            
            (BindingContext as calendario)?.Actividades.Add(selectedActivity);
            
            GuardarActividadesEnArchivo();
            lblActividadSeleccionada.Text = $"Actividades seleccionadas: {string.Join(", ", actividades)}";
            lblFechaSeleccionada.Text = $"Fecha: {fechaActividad.ToString("yyyy-MM-dd")}";
        }


        private void GuardarActividadesEnArchivo()
        {
            string filePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), ActividadesFileName);
            string actividadesJson = JsonConvert.SerializeObject(actividades);
            File.WriteAllText(filePath, actividadesJson);
        }

        private List<string> CargarActividadesDesdeArchivo()
        {
            string filePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), ActividadesFileName);

            if (File.Exists(filePath))
            {
                string actividadesJson = File.ReadAllText(filePath);
                List<string> actividadesGuardadas = JsonConvert.DeserializeObject<List<string>>(actividadesJson);

                return actividadesGuardadas;
            }

            return new List<string>();
        }

        private async void MostrarActividadesPage(List<string> actividades)
        {
            await Navigation.PushModalAsync(new ListaActividades(actividades));
        }

        private void btnMostrarActividades_Clicked(object sender, EventArgs e)
        {
            List<string> actividadesGuardadas = CargarActividadesDesdeArchivo();
            MostrarActividadesPage(actividadesGuardadas);
        }
    }
}