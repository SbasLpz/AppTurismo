using AppTurismo.Models;
using AppTurismo.Service;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace AppTurismo.ViewModels
{
    public class RegistroVM : INotifyPropertyChanged
    {
        public ICommand AgregarUsuario { get; }
        FirebaseHelper firebaseHelper = new FirebaseHelper();
        public Command MostrarAlertaCommand { get; set; }

        private string txtNombres;
        private string txtApellidos;
        private string txtTelefono;
        private string txtNumTarjeta;
        private string txtCorreo;
        private string txtContra;
        private List<UsuarioModel> listaUsuarios;
        //List<UsuarioModel> listaUsuarios = new List<UsuarioModel>();

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public RegistroVM()
        {
            AgregarUsuario = new Command(ExecuteAgregarUsuario);
            Debug.WriteLine("WENAAAAAAASSS");
        }



        public string Nombres
        {
            get { return txtNombres; }
            set
            {
                if (txtNombres != value)
                {
                    txtNombres = value;
                    OnPropertyChanged(nameof(Nombres));
                }
                //txtNombres = value;
                //OnPropertyChanged(nameof(Nombres));
            }
        }

        public string Apellidos
        {
            get { return txtApellidos; }
            set
            {
                txtApellidos = value;
                OnPropertyChanged(nameof(Apellidos));
            }
        }

        public string Telefono
        {
            get { return txtTelefono; }
            set
            {
                txtTelefono = value;
                OnPropertyChanged(nameof(Telefono));
            }
        }

        public string NumTarjeta
        {
            get { return txtNumTarjeta; }
            set
            {
                txtNumTarjeta = value;
                OnPropertyChanged(nameof(NumTarjeta));
            }
        }

        public string Correo
        {
            get { return txtCorreo; }
            set
            {
                txtCorreo = value;
                OnPropertyChanged(nameof(Correo));
            }
        }

        public string Contra
        {
            get { return txtContra; }
            set
            {
                txtContra = value;
                OnPropertyChanged(nameof(Contra));
            }
        }


        /* --------------------- METODOS ----------------------- */
        public void clearForm()
        {
            Nombres = "";
            Apellidos = "";
            Contra = "";
            Telefono = "";
            NumTarjeta = "";
            Correo = "";
        }

        private void OnMostrarAlerta()
        {
            // Enviar un mensaje para indicar que se debe mostrar la alerta
            MessagingCenter.Send(this, "MostrarAlerta");
        }

        public async Task getUsuarios()
        {
            this.listaUsuarios = await firebaseHelper.GetUsuarios();
            //await firebaseHelper.GetUsuarios();
        }

        private async void ExecuteAgregarUsuario()
        {
           
            //this.listaUsuarios = getUsuarios();
            
            Debug.WriteLine("Nombres: " + txtNombres);
            Debug.WriteLine("Aps: " + txtApellidos);
            Debug.WriteLine("Tel: " + txtTelefono);
            Debug.WriteLine("tarjeta: " + txtNumTarjeta);
            Debug.WriteLine("Correo: " + txtCorreo);
            Debug.WriteLine("Contra: " + txtContra);

            var user = new UsuarioModel
            {
                nombres = txtNombres,
                apellidos = txtApellidos,
                contra = txtContra,
                telefono = txtTelefono,
                tarjeta = txtNumTarjeta,
                correo = txtCorreo,
                activo = "true"
            };

            await firebaseHelper.AddUsuario(user);
            //try
            //{
            //    bool usuarioExistente = listaUsuarios.Any(u =>
            //    u.correo == user.correo ||
            //    u.tarjeta == user.tarjeta ||
            //    u.telefono == user.telefono);

            //    if (!usuarioExistente)
            //    {
            //        await firebaseHelper.AddUsuario(user);
            //        Debug.WriteLine("Operación de inserción exitosa");
            //    } else
            //    {
            //        MostrarAlertaCommand = new Command(OnMostrarAlerta);
            //    }
               
            //    clearForm();
            //}
            //catch (Firebase.Database.FirebaseException ex)
            //{
            //    Debug.WriteLine($"Error de Firebase: {ex.Message}");
            //    // Puedes manejar el error específico de Firebase aquí
            //}
            //catch (Exception ex)
            //{
            //    Debug.WriteLine($"Error: {ex.Message}");
            //    // Puedes manejar otros errores aquí
            //}
        }

    }
}
