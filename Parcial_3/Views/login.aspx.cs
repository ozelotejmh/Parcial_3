using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parcial_3.Controllers;

namespace Parcial_3.Views
{
    public partial class login : System.Web.UI.Page
    {
        ControllerUsuario c = new ControllerUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUser.Text;
            string password = txtPassword.Text;          
            if (c.Logeo(username, password)) //
            {
                Session["username"] = username;
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Usuario o contraseña incorrectos');</script>");
            }
        }
    }
}