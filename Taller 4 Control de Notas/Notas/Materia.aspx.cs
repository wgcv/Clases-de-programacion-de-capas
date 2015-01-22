using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Notas
{
    public partial class Materia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");
                general consulta = new general();
                DataSet ds = consulta.consulta("SELECT * from materia where estado='A'");
                DropDownList1.DataSource = ds.Tables[0].DefaultView;
                DropDownList1.DataValueField = "codigo";
                DropDownList1.DataTextField = "descripcion";
                DropDownList1.DataBind();
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM notas WHERE estado='A' AND codigoMateria=" + DropDownList1.SelectedValue;
            general a = new general();
            GridView1.DataSource = a.consulta(sql);
            GridView1.DataBind();
            GridView1.Visible = true;
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}