﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Deber_2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("agregar.aspx");
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("consultaGeneral.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("consultaEspecifica.aspx");
        }
    }
}