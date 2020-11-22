using Backend;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SincoAF_project
{
    public partial class usuarios : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            gr_listadoUsuarios.DataSource = usuario.listarUsuarios();
            gr_listadoUsuarios.DataBind();

        }

        protected void crearUsuario_click(object sender, EventArgs e)
        {
            string codigo = txt_codigo.Text;
            string nombre = txt_nombre.Text;
            Usuarios usuario = new Usuarios();
            int resultado = usuario.crearUsuario(codigo, nombre);

            if (resultado > 0)
            {
                Response.Write("<script>alert('Usuario registrado correctamente');</script>");
            }
            else
            {
                Response.Write("<script>alert('No se pudo registrar el usuario');</script>");
            }
        }
    }
}