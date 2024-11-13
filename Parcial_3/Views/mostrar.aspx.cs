using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parcial_3.Controllers;

namespace Parcial_3.Views
{
    public partial class mostrar : System.Web.UI.Page
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
                CargarVideojuegos();
            }
        }

        private void CargarVideojuegos()
        {
            rptVideojuegos.DataSource = v.MostrarVideojuegos();
            rptVideojuegos.DataBind();
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            LinkButton btnBorrar = (LinkButton)sender;
            int idVideojuego = Convert.ToInt32(btnBorrar.CommandArgument);
            v.BorrarVideojuegos(idVideojuego);
            CargarVideojuegos();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            LinkButton btnActualizar = (LinkButton)sender;
            int idVideojuego = Convert.ToInt32(btnActualizar.CommandArgument);
            Response.Redirect("actualizar.aspx?id=" + idVideojuego);
        }

    }
}