using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taller1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProcesar_Click(object sender, EventArgs e)
        {
            Boolean p1, p2, p3, p4, p5 = false;
            int correctas=0, falladas = 0;
            if (rbl1.SelectedValue == "1")
            {
                p1 = true;
                correctas++;
            }
            else
            {
                p1 = false;
                falladas++;
            }
            if (rbl2.SelectedValue == "1")
            {
                p2 = true;
                correctas++;
            }
            else
            {
                p2 = false;
                falladas++;
            }
            if (rbl3.SelectedValue == "1")
            {
                p3 = true;
                correctas++;
            }
            else
            {
                p3 = false;
                falladas++;
            }
            if (rbl4.SelectedValue == "1")
            {
                p4 = true;
                correctas++;
            }
            else
            {
                p4 = false;
                falladas++;
            }
            if (rbl5.SelectedValue == "1")
            {
                p5 = true;
                correctas++;
            }
            else
            {
                p5= false;
                falladas++;
            }

            Response.Redirect("Resultados.aspx?nom=" + txtNombre.Text + "&p1=" + p1 + "&p2=" + p2+"&p3="+p3+"&p4="+p4+"&p5="+p5+"&c="+correctas+"&f="+falladas);
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
