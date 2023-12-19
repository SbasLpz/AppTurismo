using AppTurismo.Models;
using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
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

        // Usuarios 
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
        public async Task<List<UsuarioModel>> GetUsuarioById(string usuarioId)
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
                .Where(u => u.Id.ToString() == usuarioId)
                .ToList();

            return usuario;
        }
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
        
        // Inicio de Sesion
        public async Task<UsuarioModel> InicioSesion(string correo, string contra)
        {
            var usuarios = await this.GetUsuarios();
            var user = usuarios.FirstOrDefault(u => u.correo == correo && u.contra == contra);
            return user;
        }
        
        // Destinos
        public async Task<List<DestinosModel>> GetDestinos()
        {

            //var response = await firebase.Child("Destinos").OnceAsync<FirebaseObject<DestinosModel>>();

            return (await firebase
                .Child("Destinos")
                .OnceAsync<DestinosModel>()).Select(item => new DestinosModel
                {
                    Id = item.Object.Id,
                    nombre = item.Object.nombre,
                    categoria = item.Object.categoria,
                    ubicacion = item.Object.ubicacion,
                    imagen = item.Object.imagen,
                    precio = item.Object.precio
                }).ToList();
        }
        public async Task<List<DestinosModel>> GetAllDestinos()
        {
            return (await firebase.Child(nameof(DestinosModel)).OnceAsync<DestinosModel>()).Select(item => new DestinosModel
            {
                nombre = item.Object.nombre,
                ubicacion = item.Object.ubicacion,
                categoria = item.Object.categoria,
                imagen = item.Object.imagen,
                Id = item.Key,
                precio = item.Object.precio
            }).ToList();
        }
        public async Task<List<DestinosModel>> GetDestinosByName(string name)
        {

            //var response = await firebase.Child("Destinos").OnceAsync<FirebaseObject<DestinosModel>>();

            return (await firebase
                .Child("Destinos")
                .OnceAsync<DestinosModel>()).Select(item => new DestinosModel
            {
                Id = item.Object.Id,
                nombre = item.Object.nombre,
                categoria = item.Object.categoria,
                ubicacion = item.Object.ubicacion,
                imagen = item.Object.imagen,
                precio = item.Object.precio
            }).Where(c => c.nombre.ToLower().Contains(name.ToLower())).ToList();
        }
        public async Task<List<DestinosModel>> GetDestinosByCat(string cat)
        {
            return (await firebase
                .Child("Destinos")
                .OnceAsync<DestinosModel>()).Select(item => new DestinosModel
            {
                Id = item.Object.Id,
                nombre = item.Object.nombre,
                categoria = item.Object.categoria,
                ubicacion = item.Object.ubicacion,
                imagen = item.Object.imagen,
                precio = item.Object.precio
            }).Where(c => c.categoria.ToLower().Contains(cat.ToLower())).ToList();
        }
        
        // Ofertas
        public async Task<List<PromocionesModel>> GetOfertas()
        {
            return (await firebase.Child("Promociones")
                .OnceAsync<PromocionesModel>())
                .Select(item => new PromocionesModel()
                    {
                        Id = item.Object.Id,
                        ImageSource = item.Object.ImageSource,
                        Titulo = item.Object.Titulo,
                        Descuento = item.Object.Descuento,
                        Compania = item.Object.Compania,
                        Precio = item.Object.Precio
                    }).ToList();
        }

        // Reservas
        public async Task AddReserva(ReservaModel reserva)
        {
            await firebase
            .Child("Reservas")
            .PostAsync(new ReservaModel()
            {
                Id = Guid.NewGuid(),
                IdUsuario = reserva.IdUsuario,
                IdDestino = reserva.IdDestino,
            });
        }

        // Comentarios / Reseñas
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
                resena.nombreUser = usuario[0].nombres; // Asigna el nombre del usuario a la propiedad NombreUsuario

                return resena;
            });

            //return (await Task.WhenAll(comentariosConNombres)).ToList();
            var todasLasResenas = await Task.WhenAll(comentariosConNombres);
            var resenasFiltradas = todasLasResenas.Where(r => r.IdDestino == IdDestino).ToList();
            return resenasFiltradas;

        }

        public async Task<List<ResenaModel>> GetComentariosByUser(string idUser)
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
                resena.nombreUser = usuario[0].nombres; // Asigna el nombre del usuario a la propiedad NombreUsuario

                return resena;
            });

            //return (await Task.WhenAll(comentariosConNombres)).ToList();
            var todasLasResenas = await Task.WhenAll(comentariosConNombres);
            var resenasFiltradas = todasLasResenas.Where(r => r.IdUsuario == idUser).ToList();
            return resenasFiltradas;

        }

        public async Task<bool> AgregarDestino(DestinosModel destino)
        {
            var data = await firebase.Child("Destinos").PostAsync(JsonConvert.SerializeObject(destino));

            if (!string.IsNullOrEmpty(data.Key)) return true;

            return false;
        }

        public async Task<bool> UpdateComment(ResenaModel resena)
        {
            var toUpdateComment = (await  firebase
                .Child("Resenas")
                .OnceAsync<ResenaModel>()).Where(a => a.Object.Id.ToString() == resena.Id.ToString()).FirstOrDefault();

            var resenaJson = JsonConvert.SerializeObject(resena);

            await firebase.Child("Resenas").Child(toUpdateComment.Key)
                .PutAsync(resenaJson);
            return true;
            
        }
    }
}
