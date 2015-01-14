using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pizzeria
{
    public partial class consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            general a = new general();
            GridView1.DataSource = a.consulta("select * from venta_pizza WHERE estado='A' ");
            GridView1.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM venta_pizza WHERE estado='A' AND "+ ddlBuscar.SelectedValue +"='" + txtBuscar.Text + "'";
            general a = new general();
            GridView1.DataSource = a.consulta(sql);
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}