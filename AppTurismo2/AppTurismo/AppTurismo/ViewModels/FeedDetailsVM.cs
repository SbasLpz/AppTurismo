using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows.Input;
using AppTurismo.Models;
using AppTurismo.Service;
using Xamarin.Forms;
using static SQLite.SQLite3;

namespace AppTurismo.ViewModels
{
	public class FeedDetailsVM : INotifyPropertyChanged
    {
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        //public ResenaModel resena { get; set; }
        private string userId = Application.Current.Properties["UserId"].ToString();
        private string destinoId = Application.Current.Properties["DestinoId"].ToString();
        public ICommand commandAddComment { get; set; }
        private int _estrellas = 3;
        private string _comment = "";
        private ObservableCollection<ResenaModel> _comentariosList;

        public int Estrellas
        {
            get { return _estrellas; }
            set
            {
                if (_estrellas != value)
                {
                    _estrellas = value;
                    OnPropertyChanged(nameof(Estrellas));
                }
            }
        }

        public string Comment
        {
            get { return _comment; }
            set
            {
                if (_comment != value)
                {
                    _comment = value;
                    OnPropertyChanged(nameof(Comment));
                }
            }
        }

        public ObservableCollection<ResenaModel> ComentariosList
        {
            get { return _comentariosList; }
            set
            {
                if (_comentariosList != value)
                {
                    _comentariosList = value;
                    OnPropertyChanged(nameof(Comment));
                }
            }
        }

        public FeedDetailsVM()
		{
            Console.WriteLine("USER ID: "+userId);
            Console.WriteLine("DESTINO ID: "+destinoId);
            commandAddComment = new Command(ExecuteAddComment);
            loadComments();
		}

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async void ExecuteAddComment()
        {
            var result = await firebaseHelper.GetResenaByIds(userId, destinoId);

            if (result == null)
            {
                //agrega la reseña sin no existe
                var resModel = new ResenaModel
                {
                    IdUsuario = userId,
                    IdDestino = destinoId,
                    estrellas = Estrellas,
                    comentario = Comment
                };

                await firebaseHelper.AddComment(resModel);

                Comment = string.Empty;
                Estrellas = 3;

            }
            else {
                //obtiene la reseña si existe para actualizarla

            }
        }

        public async void loadComments()
        {
            var comentarios = await firebaseHelper.GetComentarios02(destinoId);
            if (comentarios != null && comentarios.Count > 0)
            {
                ComentariosList = new ObservableCollection<ResenaModel>(comentarios);
                Console.WriteLine("***COMENTARIOS OBTENIDOS***");
                Console.WriteLine("ID USUARIO OBTENIDOO"+ ComentariosList[0].nombreUser);
            } else
            {
                Console.WriteLine("***COMENTARIOS NO OBTENIDOS***");
            }
            
        }
    }
}

