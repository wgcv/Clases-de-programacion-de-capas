using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace empleado
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCodigo.Visible = false;
            txtCodigo.Visible = false;
            lblNombre.Visible = false;
            txtNombre.Visible = false;
            lblDireccion.Visible = false;
            txtDireccion.Visible = false;
            lblTelefono.Visible = false;
            txtTelefono.Visible = false;
            lblSexo.Visible = false;
            rblSexo.Visible = false;
            lblSueldo.Visible = false;
            txtSueldo.Visible = false;
            lblEdad.Visible = false;
            txtEdad.Visible = false;
            lblMensaje.Visible = false;
            btnGrabar.Visible = false;
            btnLimpiar.Visible = false;
            if (!Page.IsPostBack)
            {
                ConnectionStringSettings param = ConfigurationManager.ConnectionStrings["ApplicationServices"];
                string cadenaConexion = param.ConnectionString;
                SqlConnection conexion = new SqlConnection(cadenaConexion);
                string sql = "SELECT * FROM empleados WHERE estado='A'";
                SqlDataAdapter da = new SqlDataAdapter(sql, conexion);
                DataSet ds = new DataSet();
                da.Fill(ds);
                grvEmpleado.DataSource = ds;
                grvEmpleado.DataBind();

            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            ConnectionStringSettings param = ConfigurationManager.ConnectionStrings["ApplicationServices"];
            string cadenaConexion = param.ConnectionString;
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            string sql = "SELECT * FROM empleados WHERE estado='A' AND "+ ddlBuscar.SelectedValue +" LIKE '%"+txtBuscar.Text+"%'";
            SqlDataAdapter da = new SqlDataAdapter(sql, conexion);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grvEmpleado.DataSource = ds;
            grvEmpleado.DataBind();
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            lblCodigo.Visible = true;
            txtCodigo.Visible = true;
            lblNombre.Visible = true;
            txtNombre.Visible = true;
            lblDireccion.Visible = true;
            txtDireccion.Visible = true;
            lblTelefono.Visible = true;
            txtTelefono.Visible = true;
            lblSexo.Visible = true;
            rblSexo.Visible = true;
            lblSueldo.Visible = true;
            txtSueldo.Visible = true;
            lblEdad.Visible = true;
            txtEdad.Visible = true;
            lblMensaje.Visible = true;
            btnGrabar.Visible = true;
            btnLimpiar.Visible = true;

            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            rblSexo.SelectedIndex = 0;
            txtSueldo.Text = "";
            txtEdad.Text = "";
            txtCodigo.Enabled = false;

            Session["modo"] = "i";
        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {

        }
    }
}
