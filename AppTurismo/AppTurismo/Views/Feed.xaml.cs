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
            string searchValue = ((SearchBar)sender).Text;
            (BindingContext as FeedVM)?.searchTextChanged.Execute(searchValue);
        }

        private void OnPlayaClicked(object sender, EventArgs e)
        {
            (BindingContext as FeedVM)?.CommandFiltroCategoria.Execute("playa");
        }

        private void OnRestauranteClicked(object sender, EventArgs e)
        {
            (BindingContext as FeedVM)?.CommandFiltroCategoria.Execute("restaurante");
        }

        private void OnHotelClicked(object sender, EventArgs e)
        {
            (BindingContext as FeedVM)?.CommandFiltroCategoria.Execute("hotel");
        }

        private void OnTodosClicked(object sender, EventArgs e)
        {
            (BindingContext as FeedVM)?.CommandFiltroCategoria.Execute("todos");
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