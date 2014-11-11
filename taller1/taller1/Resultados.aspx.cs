using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taller1
{
    public partial class Resultados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNombre.Text = Request.QueryString["nom"];
            lblAciertos.Text = Request.QueryString["c"];
            lblFallos.Text = Request.QueryString["f"];

            if (Request.QueryString["p1"] == "True")
            {
                lblRespuestaAcertadas.Text = lblRespuestaAcertadas.Text + "1, ";
            }
            else {
                lblRespuestasFalladas.Text = lblRespuestasFalladas .Text+ "1, ";
            }

            if (Request.QueryString["p2"] == "True")
            {
                lblRespuestaAcertadas.Text = lblRespuestaAcertadas.Text + "2, ";
            }
            else
            {
                lblRespuestasFalladas.Text = lblRespuestasFalladas.Text + "2, ";
            }


            if (Request.QueryString["p3"] == "True")
            {
                lblRespuestaAcertadas.Text = lblRespuestaAcertadas.Text + "3, ";
            }
            else
            {
                lblRespuestasFalladas.Text = lblRespuestasFalladas.Text + "3, ";
            }
            if (Request.QueryString["p4"] == "True")
            {
                lblRespuestaAcertadas.Text = lblRespuestaAcertadas.Text + "4, ";
            }
            else
            {
                lblRespuestasFalladas.Text = lblRespuestasFalladas.Text + "4, ";
            }
            if (Request.QueryString["p5"] == "True")
            {
                lblRespuestaAcertadas.Text = lblRespuestaAcertadas.Text + "5, ";
            }
            else
            {
                lblRespuestasFalladas.Text = lblRespuestasFalladas.Text + "5, ";
            }
            char[] charsToTrim = { ',', ' ' };
            lblRespuestaAcertadas.Text= lblRespuestaAcertadas.Text.TrimEnd(charsToTrim);
            lblRespuestasFalladas.Text= lblRespuestasFalladas.Text.TrimEnd(charsToTrim);
            if (lblRespuestaAcertadas.Text == "")
            {
                lblRespuestaAcertadas.Text = "Ninguna";
            }
            if (lblRespuestasFalladas.Text == "")
            {
                lblRespuestasFalladas.Text = "Ninguna";
            }
  
  
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}