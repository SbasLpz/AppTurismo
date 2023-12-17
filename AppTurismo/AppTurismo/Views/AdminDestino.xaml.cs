using System;
using System.Collections.Generic;
using AppTurismo.ViewModels;
using Xamarin.Forms;

namespace AppTurismo.Views
{	
	public partial class AdminDestino : ContentPage
	{	
		public AdminDestino ()
		{
			InitializeComponent ();
            BindingContext = new AdminDestinoVM();
        }
	}
}

