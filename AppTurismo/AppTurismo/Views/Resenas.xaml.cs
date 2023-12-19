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
    public partial class Resenas : ContentPage
    {
        public Resenas()
        {
            InitializeComponent();
            BindingContext = new ResenasVM();
        }
    }
}