using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Parcial_3.Controllers
{
    public class Videojuego
    {
        public Videojuego(int id,string nombre, int cantidad, double precio, string imagen)
        {
            Id = id;
            Nombre = nombre;
            Cantidad = cantidad;
            Precio = precio;
            Imagen = imagen;
        }

        public Videojuego() {}

        public int Id { get; set; }
        public string Nombre { get; set; }
        public int Cantidad { get; set; }
        public double Precio { get; set; }
        public string Imagen { get; set; }
    }
}