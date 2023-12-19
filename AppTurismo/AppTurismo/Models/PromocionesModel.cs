using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;

namespace AppTurismo.Models
{
    public class PromocionesModel : INotifyPropertyChanged
    {
        private string imageSource;
        private string titulo;
        private string descuento;
        private string compania;
        private string precio;

        public string ImagenSource

        {
            get => imageSource;

            set
            {
                ImagenSource = value;
                OnPropertyChanged();
            }
        }
        public string Titulo

        {
            get => titulo;

            set
            {
                titulo = value;
                OnPropertyChanged();
            }
        }
        public string Descuento

        {
            get => descuento;

            set
            {
                descuento = value;
                OnPropertyChanged();
            }
        }
        public string Compania

        {
            get => compania;

            set
            {
                compania = value;
                OnPropertyChanged();
            }
        }
        public string Precio

        {
            get => precio;

            set
            {
                precio = value;
                OnPropertyChanged();
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
