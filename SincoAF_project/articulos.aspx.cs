﻿using Backend;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SincoAF_project
{
    public partial class articulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void crearArticulo_click(object sender, EventArgs e) {
            string nombre = txt_nombreArt.Text;
            Articulos art = new Articulos();
            int resultado = art.crearArticulo(nombre);

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