using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Threading.Tasks;
using System.Windows.Input;
using AppTurismo.Models;
using AppTurismo.Service;
using AppTurismo.Views;
using Firebase.Database;
using Newtonsoft.Json;
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
        private bool isFrameVisible;
        private bool isFrameUpdateVisible;
        private ResenaModel commentFUpdate { get; set; }
        public ICommand commandUpdateComment { get; set; }
        public ICommand commandGoToPay { get; set; }

        public ResenaModel CommentFUpdate
        {
            get { return commentFUpdate; }
            set
            {
                if (commentFUpdate != value)
                {
                    commentFUpdate = value;
                    OnPropertyChanged(nameof(CommentFUpdate));
                }
            }
        }

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

        public bool IsFrameVisible
        {
            get { return isFrameVisible; }
            set
            {
                if (isFrameVisible != value)
                {
                    isFrameVisible = value;
                    OnPropertyChanged(nameof(IsFrameVisible));
                }
            }
        }

        public bool IsFrameUpdateVisible
        {
            get { return isFrameUpdateVisible; }
            set
            {
                if (isFrameUpdateVisible != value)
                {
                    isFrameUpdateVisible = value;
                    OnPropertyChanged(nameof(IsFrameUpdateVisible));
                }
            }
        }

        public FeedDetailsVM()
		{
            commentFUpdate = new ResenaModel();
            Console.WriteLine("USER ID: "+userId);
            Console.WriteLine("DESTINO ID: "+destinoId);
            commandAddComment = new Command(ExecuteAddComment);
            loadComments();
            loadCommnetFUpdate();
            commandUpdateComment = new Command(ExecuteUpdateComment);
            commandGoToPay = new Command(ExecuteGoToPay);

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
                IsFrameVisible = false;
                //IsFrameUpdateVisible = true;
                MessagingCenter.Send<object>(this, "RecargarPantalla");

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
                Console.WriteLine("ID USUARIO OBTENIDOO" + ComentariosList[0].nombreUser);
            }
            else
            {
                Console.WriteLine("***COMENTARIOS NO OBTENIDOS***");
            }

        }

        public async void loadCommnetFUpdate()
        {
            var result = await firebaseHelper.GetResenaByIds(userId, destinoId);

            if (result != null)
            {
                CommentFUpdate = result;
                Console.WriteLine("||||||||COMENTARIO F UPDTAE: "+CommentFUpdate.comentario);
                IsFrameVisible = false;
                IsFrameUpdateVisible = true;

            } else
            {
                isFrameUpdateVisible = false;
            }
        }

        public async void ExecuteUpdateComment()
        {
            var result = firebaseHelper.UpdateComment(CommentFUpdate);
            bool re = await result;
            Console.WriteLine("??????????Id: " + CommentFUpdate.comentario);
            Console.WriteLine("??????????Comentario nuevo: "+CommentFUpdate.comentario);

            if (re == true)
            {
                Console.WriteLine("///// SIII SE ACTUALIZO EL COMMENT /////");
            }
            else
            {
                Console.WriteLine("///// NO SE ACTUALIZO EL COMMENT /////");
            }
        }


        private async void ExecuteGoToPay()
        {
            // Obtén la instancia de la interfaz de navegación desde la página actual
            var navigation = Application.Current.MainPage.Navigation;
            // Crea una nueva instancia de la página que deseas abrir
            var nuevaPagina = new Pago(userId, destinoId);
            // Usa el metodo PushAsync para agregar la nueva página a la pila de navegación
            await navigation.PushModalAsync(nuevaPagina);
        }

    }
}

