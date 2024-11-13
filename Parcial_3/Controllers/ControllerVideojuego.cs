using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Parcial_3.Models.ProductosTableAdapters;
//using Parcial_3.Models.Modelos_Prueba.vTableAdapters;

namespace Parcial_3.Controllers
{
    public class ControllerVideojuego
    {
        videojuegosTableAdapter a = new videojuegosTableAdapter();
        List<Videojuego> videojuegos = new List<Videojuego>();
        public bool AgregarVideojuego(string nombre, int cantidad, double precio, string imagen)
        {
            try
            {
                using (a)
                {
                    a.Insert(nombre, cantidad, Convert.ToDecimal(precio), imagen);
                    //a.InsertQuery(nombre, cantidad, Convert.ToDecimal(precio), imagen);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }

        public List<Videojuego> MostrarVideojuegos()
        {
            using (a)
            {
                var data = a.GetData();
                foreach (var b in data)
                {
                    Videojuego videojuego = new Videojuego();
                    videojuego.Id = Convert.ToInt32(b["Id"]);
                    videojuego.Nombre = b["Nombre"].ToString();
                    videojuego.Cantidad = Convert.ToInt32(b["Cantidad"]);
                    videojuego.Precio = Convert.ToDouble(b["Precio"]);
                    videojuego.Imagen = b["Imagen"].ToString();
                    videojuegos.Add(videojuego);
                }
                return videojuegos;

            }
        }

        public bool BorrarVideojuegos(int id)
        {
            try
            {
                using (a)
                {
                    a.Delete(id);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
            
        }

        public bool ActualizarVideojuego(int id, string nombre, int cantidad, double precio, string imagen)
        {
            try
            {
                using (a)
                {
                    a.Update(nombre, cantidad, Convert.ToDecimal(precio), imagen, id);
                }
                return true;
            }
            catch (Exception)
            {
                return false;
            }            
        }
    }
}