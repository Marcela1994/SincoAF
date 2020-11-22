using Backend;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SincoAF_project
{
    public partial class nuevo_pedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarListadoUsuarios();
            cargarListadoArticulos();
        }

        public void cargarListadoUsuarios()
        {
            Usuarios usuario = new Usuarios();
            ddl_usuarios.DataSource = usuario.listarUsuarios();
            ddl_usuarios.DataTextField = "nombre_usuario";
            ddl_usuarios.DataValueField = "codigo_usuario";
            ddl_usuarios.DataBind();
        }

        public void cargarListadoArticulos()
        {
            Articulos art = new Articulos();
            ddl_articulos.DataSource = art.listarArticulos();
            ddl_articulos.DataTextField = "nombre_articulo";
            ddl_articulos.DataValueField = "codigo_articulo";
            ddl_articulos.DataBind();
        }


        protected void crearPedido_click(object sender, EventArgs e)
        {
            string nombre = ddl_usuarios.SelectedValue;
            string fecha = txt_fechaPedido.Text;
            string concepto = txt_conceptoPedido.Text;
            //string importado = cb_importado.Checked
            string importado = "s";
            string cantidad = txt_cantidad.Text;
            int idPedido = 2;
            string idArticulo = ddl_articulos.SelectedValue;

            NuevoPedido np = new NuevoPedido();
            int resultado = np.registrarPedido(nombre, fecha, concepto, importado, cantidad, idPedido, idArticulo);

            if (resultado > 0)
            {
                Response.Write("<script>alert('Articulo registrado correctamente');</script>");
            }
            else
            {
                Response.Write("<script>alert('No se pudo registrar el Articulo');</script>");
            }
        }

        
    }
}