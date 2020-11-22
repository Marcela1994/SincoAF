using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Backend
{
    public class NuevoPedido
    {
        public DataTable listarUsuarios()
        {
            DataTable dt;
            SqlConnection con = new SqlConnection("Server=(localdb)\\marcela;Initial Catalog=SincoAF_DB;Integrated Security=True");
            con.Open();
            using (SqlCommand cmd = new SqlCommand("sp_seleccionar_usuario", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                con.Close();
                return dt;
            }
        }

        public int registrarPedido(string codigoUsuario, string fechaPedido, string importado, string concepto, string cantidad, int idPedido, string idArticulo)
        {
            try
            {
                ConexionBD con = new ConexionBD();
                SqlConnection connection = con.crearConexion();
                connection.Open();
                SqlCommand crearArticuloSP = new SqlCommand("sp_registrar_pedido", connection);
                crearArticuloSP.CommandType = System.Data.CommandType.StoredProcedure;
                crearArticuloSP.Parameters.Add(new SqlParameter("@codigoUsuario", codigoUsuario));
                crearArticuloSP.Parameters.Add(new SqlParameter("@fechaPedido", fechaPedido));
                crearArticuloSP.Parameters.Add(new SqlParameter("@importado", importado));
                crearArticuloSP.Parameters.Add(new SqlParameter("@concepto", concepto));
                crearArticuloSP.Parameters.Add(new SqlParameter("@cantidad", cantidad));
                crearArticuloSP.Parameters.Add(new SqlParameter("@idPedido", idPedido));
                crearArticuloSP.Parameters.Add(new SqlParameter("@idArticulo", idArticulo));
                int resultado = crearArticuloSP.ExecuteNonQuery();
                return resultado;
            }
            catch (Exception ex)
            {
                return 0;
            }
            
        }
    }
}
