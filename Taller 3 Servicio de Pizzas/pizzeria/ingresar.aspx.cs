using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace pizzeria
{
    public partial class ingresar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rblTransporte_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblTransporte.SelectedValue == "No")
            {
                lblSector.Visible = false;
                ddlSector.Visible = false;
                lblDireccion.Visible = false;
                txtDireccion.Visible = false;

            }
            else {
                lblSector.Visible = true;
                ddlSector.Visible = true;
                lblDireccion.Visible = true;
                txtDireccion.Visible = true;

            }
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            lblSubtotal.Visible = true;
            lblIva.Visible = true;
            lblTransporte.Visible = true;
            lblTotal.Visible = true;
            subtotal.Visible = true;
            iva.Visible = true;
            transporte.Visible = true;
            total.Visible = true;
            btnGrabar.Visible = true;
            Decimal ccarnicos = 0, cvegetales = 0, cotros = 0;
            general a = new general();
            DataSet consulta;
            foreach (ListItem li in cblCarnicos.Items)
{
if (li.Selected)
{

    consulta = a.consulta("select precio from precio_ingredientes WHERE co_pizza= " + ddlTamaño.SelectedValue + " AND co_ingrediente= " + li.Value + " AND estado='A' ");
    ccarnicos += (Decimal)consulta.Tables[0].Rows[0][0]; 
}

}
            foreach (ListItem li in cblVegetales.Items)
            {
                if (li.Selected)
                {
                    consulta = a.consulta("select precio from precio_ingredientes WHERE co_pizza= " + ddlTamaño.SelectedValue + " AND co_ingrediente= " + li.Value + " AND estado='A' ");
                    cvegetales += (Decimal)consulta.Tables[0].Rows[0][0]; 
                }

            }
            foreach (ListItem li in cblOtros.Items)
            {
                if (li.Selected)
                {
                    consulta = a.consulta("select precio from precio_ingredientes WHERE co_pizza= " + ddlTamaño.SelectedValue + " AND co_ingrediente= " + li.Value + " AND estado='A' ");
                    cotros += (Decimal)consulta.Tables[0].Rows[0][0]; 
                }

            }

            Decimal sub= 0;
            consulta = a.consulta("select precio_base from maestra_pizza WHERE co_pizza= " + ddlTamaño.SelectedValue + " AND estado='A' ");
            sub = (Decimal)consulta.Tables[0].Rows[0][0];
            sub += ccarnicos + cvegetales + cotros;
          

           
            

            subtotal.Text = Convert.ToString(sub);
            if (rblTransporte.SelectedValue == "Si")
            {
               transporte.Text= ddlSector.SelectedValue;
            }
            iva.Text = Convert.ToString((Convert.ToDecimal(subtotal.Text) + Convert.ToDecimal(transporte.Text)) * Convert.ToDecimal("0.12"));
            total.Text = Convert.ToString(Convert.ToDecimal(subtotal.Text) + Convert.ToDecimal(iva.Text) + Convert.ToDecimal(transporte.Text));

        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            String sql = "INSERT INTO venta_pizza(fecha,cliente,subtotal,transporte,iva,total) VALUES ('" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + txtCliente.Text + "'," + Convert.ToDecimal(subtotal.Text) + "," + Convert.ToDecimal(transporte.Text) + "," + Convert.ToDecimal(iva.Text) + "," + Convert.ToDecimal(total.Text) + " ) ";
            general a = new general();
            a.ejecuta(sql);
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ingresar.aspx");
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}