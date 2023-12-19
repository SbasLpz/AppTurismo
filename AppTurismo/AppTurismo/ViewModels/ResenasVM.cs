using AppTurismo.Models;
using AppTurismo.Service;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Text;
using System.Xml.Linq;
using Xamarin.Forms;

namespace AppTurismo.ViewModels
{
    public class ResenasVM
    {
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        private string userId = Application.Current.Properties["UserId"].ToString();
        private List<ResenaModel> _comentariosList;

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }


        public List<ResenaModel> ComentariosList
        {
            get { return _comentariosList; }
            set
            {
                    _comentariosList = value;
            }
        }

        public ResenasVM() { 
            loadComments();
        }
        public async void loadComments()
        {
            var comentarios = await firebaseHelper.GetComentariosByUser(userId);
            if (comentarios != null && comentarios.Count > 0)
            {
                ComentariosList = comentarios;
            }
            else
            {
                Console.WriteLine("***COMENTARIOS NO OBTENIDOS***");
            }

        }

    }
}
