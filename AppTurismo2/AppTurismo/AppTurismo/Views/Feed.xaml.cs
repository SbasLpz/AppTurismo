using AppTurismo.ViewModels;
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
    public partial class Feed: ContentPage
    {
        public Feed()
        {
            InitializeComponent();
            BindingContext = new FeedVM();
            Console.WriteLine("HOLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
            //Appearing += OnPageAppearing;
            (BindingContext as FeedVM)?.ExecuteCargarFeed();

            
        }

        private void OnPageAppearing(object sender, EventArgs e)
        {
            // Cuando la página está a punto de aparecer, ejecuta el comando cargarFeed
            if (BindingContext is FeedVM viewModel)
            {
                viewModel.cargarFeed.Execute(null);
                viewModel.ComandoVermas.Execute(null);
            }
        }

        private void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            //string searchValue = txtSearch.Text;
            //if (!String.IsNullOrEmpty(searchValue))
            //{
            //    var tareas = await tareaRepository.GetAllByName(searchValue);
            //    TareasListView.ItemsSource = null;
            //    TareasListView.ItemsSource = tareas;
            //}
            //else
            //{
            //    OnAppearing();
            //}
        }

        private void TxtSearch_SearchButtonPressed(object sender, EventArgs e)
        {
            //string searchValue = txtSearch.Text;
            //if (!String.IsNullOrEmpty(searchValue))
            //{
            //    var students = await tareaRepository.GetAllByName(searchValue);
            //    TareasListView.ItemsSource = null;
            //    TareasListView.ItemsSource = students;
            //}
            //else
            //{
            //    OnAppearing();
            //}
        }

    }
}