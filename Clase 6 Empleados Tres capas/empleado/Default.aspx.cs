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
                clase_general general = new clase_general();
                
            
                grvEmpleado.DataSource = general.consulta();
                grvEmpleado.DataBind();

            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            //implementar consulta especifica
            
            string sql = "SELECT * FROM empleados WHERE estado='A' AND "+ ddlBuscar.SelectedValue +" LIKE '%"+txtBuscar.Text+"%'";
            clase_general general = new clase_general();
            grvEmpleado.DataSource = general.consulta();
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

            Session["modo"] = "I";
        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";

            int afectados;
            if (Session["modo"] == "I")
            {
                clase_general general = new clase_general();
                afectados = general.ejecuta("I", 0, txtNombre.Text, txtDireccion.Text, txtTelefono.Text, rblSexo.SelectedValue, Convert.ToDecimal(txtSueldo.Text), Convert.ToInt32(txtEdad.Text));
               
            }
            else if (Session["modo"] == "M")
            {
                clase_general general = new clase_general();
                afectados = general.ejecuta("M",Convert.ToInt32( Session["codigo"]), txtNombre.Text, txtDireccion.Text, txtTelefono.Text, rblSexo.SelectedValue, Convert.ToDecimal(txtSueldo.Text), Convert.ToInt32(txtEdad.Text));
               

            }
            else
            {
                clase_general general = new clase_general();
                afectados = general.ejecuta("E", Convert.ToInt32(Session["codigo"]), "","", "", "", 0, 0);
               
            }
           
            if (afectados == 1)
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Se realiazo con éxito";
            }else{   lblMensaje.Visible = true;
            lblMensaje.Text = "Ocurrio un error";
            }
           
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
                Session["modo"] = "M";
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
                Session["modo"] = "E";
                
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
