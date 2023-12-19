using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppTurismo.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppTurismo.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PerfilUsuario : ContentPage
    {
        public PerfilUsuario()
        {
            InitializeComponent();
            BindingContext = new PerfilUsuarioVM();
            (BindingContext as PerfilUsuarioVM)?.ExecuteCargarFeed();
        }
    }
}