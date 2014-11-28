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
            lblMensaje.Text = "";
            ConnectionStringSettings param = ConfigurationManager.ConnectionStrings["ApplicationServices"];
            string cadenaConexion = param.ConnectionString;
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            string sql = "";
            if (Session["modo"] == "i")
            {
                sql = "INSERT INTO empleados (nombre,direccion,telefono, sexo,sueldo,edad,estado) VALUES('" + txtNombre.Text + "','" + txtDireccion.Text + "','"+ txtTelefono.Text + "','" + rblSexo.SelectedValue + "'," + Convert.ToDecimal(txtSueldo.Text) + "," + Convert.ToInt32(txtEdad.Text) + ",'A')";


            }
            else if (Session["modo"] == "m")
            {
                sql = "UPDATE empleados SET nombre='" + txtNombre.Text + "',direccion='" + txtDireccion.Text + "',telefono='" + txtTelefono.Text + "',sexo='" + rblSexo.SelectedValue + "',sueldo=" + Convert.ToDecimal(txtSueldo.Text) + ",edad=" + Convert.ToInt32(txtEdad.Text) + " where codigo=" + Session["codigo"];


            }
            else
            {
                sql = "UPDATE empleados SET estado='I' where codigo =" + Session["codigo"];

            }
            SqlCommand commando = new SqlCommand(sql, conexion);
            conexion.Open();
            int numeo_registro = commando.ExecuteNonQuery();
            if (numeo_registro == 1)
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Se realiazo con éxito";
            }else{   lblMensaje.Visible = true;
            lblMensaje.Text = "Ocurrio un error";
            }
            conexion.Close();
            Response.Redirect("/Default.aspx");
        }

        protected void grvEmpleado_RowCommand(object sender, GridViewCommandEventArgs e)
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
            int fila = Convert.ToInt32(e.CommandArgument);
            GridViewRow registro = grvEmpleado.Rows[fila];
            txtCodigo.Text = registro.Cells[1].Text;
            txtNombre.Text = registro.Cells[2].Text;
            txtDireccion.Text = registro.Cells[3].Text;
            txtTelefono.Text = registro.Cells[4].Text;
            if (registro.Cells[5].Text == "M")
            {
                rblSexo.SelectedIndex = 0;
            }
            else
            {
                rblSexo.SelectedIndex = 1;
            }
     
            txtSueldo.Text = registro.Cells[6].Text;
            txtEdad.Text = registro.Cells[7].Text;
            txtCodigo.Enabled = false;
            Session["codigo"] = registro.Cells[1].Text;
            if (e.CommandName == "modificar")
            {

                txtCodigo.Enabled = false;
                txtNombre.Enabled = true;
                txtDireccion.Enabled = true;
                txtTelefono.Enabled = true;
                rblSexo.Enabled = true;
                txtSueldo.Enabled = true;
                txtEdad.Enabled = true;
                btnGrabar.Visible = true;
                btnLimpiar.Visible = true;
                lblMensaje.Text = "";
                Session["modo"] = "m";
            }
            else
            {
                txtCodigo.Enabled = false;
                txtNombre.Enabled = false;
                txtDireccion.Enabled = false;
                txtTelefono.Enabled = false;
                rblSexo.Enabled = false;
                txtSueldo.Enabled = false;
                txtEdad.Enabled = false;
                btnGrabar.Visible = true;
                btnLimpiar.Visible = false;
                lblMensaje.Visible = true;
                lblMensaje.Text = "Esta seguro que desea eliminar el registro";
                Session["modo"] = "e";
                
            }

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            rblSexo.SelectedIndex = 0;
            txtSueldo.Text = "";
            txtEdad.Text = "";
        }

        protected void tnRefrescar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }
    }
}
