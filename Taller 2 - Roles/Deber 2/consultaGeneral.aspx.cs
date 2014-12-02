using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Deber_2
{
    public partial class consultaGeneral : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   if (!Page.IsPostBack)
            {
            ConnectionStringSettings param = ConfigurationManager.ConnectionStrings["ApplicationServices"];
            string cadenaConexion = param.ConnectionString;
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            string sql = "SELECT codigo,nombre,ingresos,egresos,total FROM roles WHERE estado='A'";
            SqlDataAdapter da = new SqlDataAdapter(sql, conexion);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grvRoles.DataSource = ds;
            grvRoles.DataBind();
            }

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            ConnectionStringSettings param = ConfigurationManager.ConnectionStrings["ApplicationServices"];
            string cadenaConexion = param.ConnectionString;
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            string sql = "SELECT codigo,nombre,ingresos,egresos,total FROM roles WHERE estado='A' AND " + ddlBuscar.SelectedValue + " LIKE '%" + txtBuscar.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(sql, conexion);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grvRoles.DataSource = ds;
            grvRoles.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}