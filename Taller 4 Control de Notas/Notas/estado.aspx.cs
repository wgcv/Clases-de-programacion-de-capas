using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Notas
{
    public partial class estado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM notas WHERE estado='A' AND observacion='" + DropDownList1.SelectedValue+"'";
            general a = new general();
            GridView1.DataSource = a.consulta(sql);
            GridView1.DataBind();
            GridView1.Visible = true;
        }
    }
}