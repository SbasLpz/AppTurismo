using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppTurismo.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ListaActividades : ContentPage
    {
        private const string ActividadesFileName = "actividades.json";

        private List<string> actividades;
        public ListaActividades(List<string> actividades)
        {
            InitializeComponent();
            actividadesListView.ItemsSource = actividades;
            actividades = new List<string>();
            CargarActividadesDesdeArchivo();
            MostrarActividades();
        }

        private void btnEliminarActividad_Clicked(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string actividadAEliminar = clickedButton.CommandParameter as string;

            if (!string.IsNullOrEmpty(actividadAEliminar))
            {
               
                actividades.Remove(actividadAEliminar);
                GuardarActividadesEnArchivo();
                MostrarActividades();
            }
        }

        private void GuardarActividadesEnArchivo()
        {
            string filePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), ActividadesFileName);
            string actividadesJson = JsonConvert.SerializeObject(actividades);
            File.WriteAllText(filePath, actividadesJson);
        }

        private void MostrarActividades()
        {
            actividadesListView.ItemsSource = actividades;
        }
        private void CargarActividadesDesdeArchivo()
        {
            string filePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "actividades.json");

            if (File.Exists(filePath))
            {
                string actividadesJson = File.ReadAllText(filePath);
                actividades = JsonConvert.DeserializeObject<List<string>>(actividadesJson);
            }
        }
    }
}