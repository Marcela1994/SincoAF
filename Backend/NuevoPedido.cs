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
    }
}
