using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Deber_2
{
    public partial class Resultado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
            lblIdentificacion.Text = Request.QueryString["id"];
            lblNombre.Text = Request.QueryString["nom"];
            lblDepartamento.Text = Request.QueryString["dep"];
            lblCargo.Text = Request.QueryString["car"];
            lblSalario.Text = Request.QueryString["sal"];
            lblIngresos.Text = Request.QueryString["ing"];
            lblEgresos.Text = Request.QueryString["egr"];
            lblSueldo.Text = Request.QueryString["sue"];
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}