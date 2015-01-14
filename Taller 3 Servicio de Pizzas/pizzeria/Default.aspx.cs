using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pizzeria
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngreso_Click(object sender, EventArgs e)
        {
            Response.Redirect("ingresar.aspx");
        }

        protected void btnConsulta_Click(object sender, EventArgs e)
        {
            Response.Redirect("consulta.aspx");
        }
    }
}
