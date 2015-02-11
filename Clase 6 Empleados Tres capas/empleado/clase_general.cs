using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;



namespace empleado
{
    public class clase_general
    {
        public DataSet consulta()
        {
            ConnectionStringSettings param = ConfigurationManager.ConnectionStrings["ApplicationServices"];
            string cadenaConexion = param.ConnectionString;
            string nombre_procedimiento = "consulta";

            SqlConnection conexion = new SqlConnection(cadenaConexion);

            SqlDataAdapter da = new SqlDataAdapter(nombre_procedimiento, conexion);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

         
        }
        public int ejecuta(string tipo_ejecucion,int codigo, string nombre, string direccion, string telefono, string sexo, decimal sueldo,int edad)
        {
            ConnectionStringSettings param = ConfigurationManager.ConnectionStrings["ApplicationServices"];
            string cadenaConexion = param.ConnectionString;
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            conexion.Open();
            int numeo_registro;
            if (tipo_ejecucion == "I")
            {
                string nombre_procedimiento = "inserta";
                SqlCommand commando = new SqlCommand(nombre_procedimiento, conexion);
                commando.CommandType = CommandType.StoredProcedure;
                SqlParameter p_nombre = new SqlParameter("@nombre", nombre);
                p_nombre.Size = 50;
                SqlParameter p_direccion = new SqlParameter("@direccion", direccion);
                p_nombre.Size = 50;
                SqlParameter p_telefono = new SqlParameter("@telefono", telefono);
                p_nombre.Size = 10;
                SqlParameter p_sexo = new SqlParameter("@sexo", sexo);
                p_nombre.Size = 1;
                SqlParameter p_sueldo = new SqlParameter("@sueldo", sueldo);
                p_nombre.Size = 8;
                SqlParameter p_edad = new SqlParameter("@edad", edad);
                p_nombre.Size = 4;
                commando.Parameters.Add(p_nombre);
                commando.Parameters.Add(p_direccion);
                commando.Parameters.Add(p_telefono);
                commando.Parameters.Add(p_sexo);
                commando.Parameters.Add(p_sueldo);
                commando.Parameters.Add(p_edad);
               
                 numeo_registro = commando.ExecuteNonQuery();
                conexion.Close();


            }
            else if (tipo_ejecucion == "M")
            {
                string nombre_procedimiento = "modifica";
               
                SqlCommand commando = new SqlCommand(nombre_procedimiento, conexion);
                commando.CommandType = CommandType.StoredProcedure;
                SqlParameter p_codigo = new SqlParameter("@codigo", codigo);
                p_codigo.Size = 4;
                SqlParameter p_nombre = new SqlParameter("@nombre", nombre);
                p_nombre.Size = 50;
                SqlParameter p_direccion = new SqlParameter("@direccion", direccion);
                p_nombre.Size = 50;
                SqlParameter p_telefono = new SqlParameter("@telefono", telefono);
                p_nombre.Size = 10;
                SqlParameter p_sexo = new SqlParameter("@sexo", sexo);
                p_nombre.Size = 1;
                SqlParameter p_sueldo = new SqlParameter("@sueldo", sueldo);
                p_nombre.Size = 8;
                SqlParameter p_edad = new SqlParameter("@edad", edad);
                p_nombre.Size = 4;

                commando.Parameters.Add(p_codigo);
                commando.Parameters.Add(p_nombre);
                commando.Parameters.Add(p_direccion);
                commando.Parameters.Add(p_telefono);
                commando.Parameters.Add(p_sexo);
                commando.Parameters.Add(p_sueldo);
                commando.Parameters.Add(p_edad);

                 numeo_registro = commando.ExecuteNonQuery();
                conexion.Close();
            }
            else {
                string nombre_procedimiento = "elimina";
                SqlCommand commando = new SqlCommand(nombre_procedimiento, conexion);
                commando.CommandType = CommandType.StoredProcedure;
                SqlParameter p_codigo = new SqlParameter("@codigo", codigo);
                p_codigo.Size = 4;
                commando.Parameters.Add(p_codigo);
                 numeo_registro = commando.ExecuteNonQuery();
                conexion.Close();
            }
            return numeo_registro;
        }


 
       
    }
}