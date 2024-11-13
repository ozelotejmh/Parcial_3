using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parcial_3.Controllers;

namespace Parcial_3.Views
{
    public partial class actualizar : System.Web.UI.Page
    {
        ControllerVideojuego v = new ControllerVideojuego();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                string script = "<script type='text/javascript'>alert('Inicia sesión antes, por favor.'); window.location.href='login.aspx';</script>";
                Response.Write(script);
                Response.End();
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int idVideojuego;
                    if (int.TryParse(Request.QueryString["id"], out idVideojuego))
                    {
                       
                    }
                    else
                    {
                        Response.Write("<script>alert('ID de videojuego no válido.');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('No se proporcionó ningún ID de videojuego.');</script>");
                }
            }
        }


        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            if (fileImagen.HasFile)
            {
                string imageName = fileImagen.FileName;
                string virtualPath = "~/images/" + imageName;
                string physicalPath = Server.MapPath(virtualPath);

                try
                {
                    fileImagen.SaveAs(physicalPath);
                    if (v.ActualizarVideojuego(
                        0,
                        txtNombre.Text,
                        Convert.ToInt32(txtCantidad.Text),
                        Convert.ToDouble(txtPrecio.Text),
                        virtualPath
                        
                    ))
                    {
                        Response.Write("<script>alert('Videojuego agregado con éxito.');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error al agregar el videojuego');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error al agregar el videojuego: " + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Por favor, seleccione una imagen.');</script>");
            }
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("mostrar.aspx");
        }
    }
}