using System;
using System.Data.SqlClient;

namespace Backend
{
    public class ConexionBD
    {
        static string cadenaConexion = "Server=(localdb)\\MSSQLLocalDB;Initial Catalog=SincoAF;Integrated Security=True";

        public SqlConnection crearConexion()
        {
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            return conexion;
        }
    }
}
