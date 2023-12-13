using AppTurismo.Models;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Linq;
//using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppTurismo.Service
{
    public class FirebaseHelper
    {
        FirebaseClient firebase;
        public FirebaseHelper()
        {
            firebase = new FirebaseClient("https://appturismo-e139a-default-rtdb.firebaseio.com/");
        }

        //SELECT DE TODOS LOS USUARIOS
        public async Task<List<UsuarioModel>> GetUsuarios()
        {
            return (await firebase
                .Child("Usuarios")
                .OnceAsync<UsuarioModel>()).Select(item => new UsuarioModel
                {
                    Id = item.Object.Id,
                    nombres = item.Object.nombres,
                    apellidos = item.Object.apellidos,
                    contra = item.Object.contra,
                    telefono = item.Object.telefono,
                    tarjeta = item.Object.tarjeta,
                    correo = item.Object.correo,
                    activo = item.Object.activo
                }).ToList();
        }

        public async Task<UsuarioModel> GetUsuarioById(string usuarioId)
        {
            var usuarios = await firebase
                .Child("Usuarios")
                .OnceAsync<UsuarioModel>();

            var usuario = usuarios
                .Select(item => new UsuarioModel
                {
                    Id = item.Object.Id,
                    nombres = item.Object.nombres,
                    apellidos = item.Object.apellidos,
                    contra = item.Object.contra,
                    telefono = item.Object.telefono,
                    tarjeta = item.Object.tarjeta,
                    correo = item.Object.correo,
                    activo = item.Object.activo
                })
                .FirstOrDefault(u => u.Id.ToString() == usuarioId);

            return usuario;
        }

        public async Task<UsuarioModel> InicioSesion(string correo, string contra)
        {
            var usuarios = await this.GetUsuarios();
            var user = usuarios.FirstOrDefault(u => u.correo == correo && u.contra == contra);
            return user;
        }

        public async Task<List<DestinosModel>> GetDestinos()
        {

            //var response = await firebase.Child("Destinos").OnceAsync<FirebaseObject<DestinosModel>>();

            return (await firebase
                .Child("Destinos")
                .OnceAsync<DestinosModel>()).Select(item => new DestinosModel
                {
                    Id = item.Object.Id,
                    IdComentarios = item.Object.IdComentarios,
                    IdPaquete = item.Object.IdPaquete,
                    nombre = item.Object.nombre,
                    categoria = item.Object.categoria,
                    ubicacion = item.Object.ubicacion,
                    imagen = item.Object.imagen
                }).ToList();
        }

        public async Task<List<DestinosModel>> GetAllDestinos()
        {
            return (await firebase.Child(nameof(DestinosModel)).OnceAsync<DestinosModel>()).Select(item => new DestinosModel
            {
                IdComentarios = item.Object.IdComentarios,
                IdPaquete = item.Object.IdPaquete,
                nombre = item.Object.nombre,
                ubicacion = item.Object.ubicacion,
                categoria = item.Object.categoria,
                imagen = item.Object.imagen,
                Id = item.Key
            }).ToList();
        }

        //AGREGAR USUARIO
        public async Task AddUsuario(UsuarioModel user)
        {
            await firebase
            .Child("Usuarios")
            .PostAsync(new UsuarioModel() { 
                Id = Guid.NewGuid(),
                nombres = user.nombres,
                apellidos = user.apellidos,
                contra = user.contra,
                telefono = user.telefono,
                tarjeta = user.tarjeta,
                correo = user.correo,
                activo = user.activo
            });
        }

        //Agregar comentario
        public async Task AddComment(ResenaModel resena)
        {
            await firebase
            .Child("Resenas")
            .PostAsync(new ResenaModel()
            {
                Id = Guid.NewGuid(),
                IdUsuario = resena.IdUsuario,
                IdDestino = resena.IdDestino,
                comentario = resena.comentario,
                estrellas = resena.estrellas
            });
        }

        //UPDATE USUARIO
        public async Task UpdateUsuario(UsuarioModel user)
        {
            var toUpdateUser = (await firebase
                .Child("Usuarios")
                .OnceAsync<UsuarioModel>()).Where(x => x.Object.Id == user.Id).FirstOrDefault();

            await firebase
                .Child("Usuarios")
                .Child(toUpdateUser.Key)
                .PutAsync(new UsuarioModel() { Id = user.Id, nombres = user.nombres, apellidos = user.apellidos, contra = user.contra, telefono = user.telefono, tarjeta = user.tarjeta, correo = user.correo, activo = user.activo });
        }

        public async Task<ResenaModel> GetResenaByIds(string IdUsuario, string IdDestino)
        {
            var resenas = await firebase
        .Child("Resenas")
        .OnceAsync<ResenaModel>();

            Console.WriteLine("FIREBASE----COUNT: " + resenas.Count);
            Console.WriteLine($"IdUsuario: {IdUsuario}, IdDestino: {IdDestino}");

            var resenaEncontrada = resenas
                .Select(item => new ResenaModel
                {
                    Id = item.Object.Id,
                    IdUsuario = item.Object.IdUsuario,
                    IdDestino = item.Object.IdDestino,
                    estrellas = item.Object.estrellas,
                    comentario = item.Object.comentario
                    // Agrega otras propiedades según tu modelo
                })
                .FirstOrDefault(r =>
                    String.Equals(r.IdUsuario, IdUsuario, StringComparison.OrdinalIgnoreCase) &&
                    String.Equals(r.IdDestino, IdDestino, StringComparison.OrdinalIgnoreCase));

            if (resenaEncontrada == null)
            {
                Console.WriteLine("Resena no encontrada");
            }
            else
            {
                Console.WriteLine("Resena encontrada");
            }

            return resenaEncontrada;


        }

        //public async Task<ResenaModel> AgregarOActualizarResena(ResenaModel nuevaResena)
        //{
        //    var resenaExistente = await GetResenaByIds(nuevaResena.IdUsuario, nuevaResena.IdDestino);

        //    if (resenaExistente != null)
        //    {
        //        // Si la resena ya existe, actualiza los datos
        //        nuevaResena.Id = resenaExistente.Id;
        //        return resenaExistente
        //    }

        //    // Guarda o actualiza la resena en Firebase
        //    await firebase
        //        .Child("Resenas")
        //        .Child(nuevaResena.Id)
        //        .PutAsync(nuevaResena);
        //}

        public async Task<List<ResenaModel>> GetComentarios()
        {
            return (await firebase.Child(nameof(ResenaModel)).OnceAsync<ResenaModel>()).Select(item => new ResenaModel
            {
                IdUsuario = item.Object.IdUsuario,
                IdDestino = item.Object.IdDestino,
                estrellas = item.Object.estrellas,
                comentario = item.Object.comentario,
                Id = item.Object.Id
            }).ToList();
        }

        public async Task<List<ResenaModel>> GetComentarios02(string IdDestino)
        {
            var comentarios = await firebase.Child("Resenas").OnceAsync<ResenaModel>();

            var comentariosConNombres = comentarios.Select(async item =>
            {
                var resena = new ResenaModel
                {
                    IdUsuario = item.Object.IdUsuario,
                    IdDestino = item.Object.IdDestino,
                    estrellas = item.Object.estrellas,
                    comentario = item.Object.comentario,
                    Id = item.Object.Id
                };

                // Obtener el nombre del usuario
                var usuario = await GetUsuarioById(item.Object.IdUsuario);
                resena.nombreUser = usuario?.nombres; // Asigna el nombre del usuario a la propiedad NombreUsuario

                return resena;
            });

            //return (await Task.WhenAll(comentariosConNombres)).ToList();
            var todasLasResenas = await Task.WhenAll(comentariosConNombres);
            var resenasFiltradas = todasLasResenas.Where(r => r.IdDestino == IdDestino).ToList();
            return resenasFiltradas;

        }
    }
}
