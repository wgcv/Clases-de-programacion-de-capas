using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Notas
{


    public partial class Notas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");
               
            if (!IsPostBack)
            {
               general consulta = new general();
                DataSet ds = consulta.consulta("SELECT codigo, nombre from estudiante where estado='A'");
                ddlAlumno.DataSource = ds.Tables[0].DefaultView;
                ddlAlumno.DataValueField = "codigo";
                ddlAlumno.DataTextField = "nombre";
                ddlAlumno.DataBind();

                ds = consulta.consulta("SELECT codigoMateria from notas where codigoAlumno='" + ddlAlumno.SelectedValue + "'");
                //    DataSet ds1 = consulta.consulta("SELECT descripcion from materia where codigo='" +  ds.Tables[1].Rows[0]["codigoMateria"]+ "'");
                ddlMateria.Items.Clear();


                foreach (DataTable table in ds.Tables)
                {
                    foreach (DataRow row in table.Rows)
                    {

                        foreach (DataColumn column in table.Columns)
                        {
                            DataSet ds1 = consulta.consulta("SELECT descripcion from materia where codigo='" + row["codigoMateria"] + "'");
                            ddlMateria.Items.Add(new ListItem((string)ds1.Tables[0].Rows[0]["descripcion"], Convert.ToString(row[column])));

                        }
                    }
                }
            }
        }


        protected void ddlAlumno_SelectedIndexChanged(object sender, EventArgs e)
        {
            general consulta = new general();
            DataSet ds = consulta.consulta("SELECT codigoMateria from notas where codigoAlumno='" + ddlAlumno.SelectedValue + "'");
            //    DataSet ds1 = consulta.consulta("SELECT descripcion from materia where codigo='" +  ds.Tables[1].Rows[0]["codigoMateria"]+ "'");
            ddlMateria.Items.Clear();


            foreach (DataTable table in ds.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                  
                    foreach (DataColumn column in table.Columns)
                    {
                        DataSet ds1 = consulta.consulta("SELECT descripcion from materia where codigo='" + row["codigoMateria"] + "'");
                        ddlMateria.Items.Add(new ListItem((string)ds1.Tables[0].Rows[0]["descripcion"], Convert.ToString( row[column])));

                    }
                }
            }

        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            general consulta = new general();
            consulta.ejecuta("UPDATE notas SET primer=" + Convert.ToDecimal(txtPrimer.Text) + ", segundo=" + Convert.ToDecimal(txtSegundo.Text) + ", mejoramiento=" + Convert.ToDecimal(txtMejoramiento.Text) + ", promedio=" + Convert.ToDecimal(txtPromedio.Text) + ", observacion='" + DropDownList3.SelectedValue + "' WHERE codigoAlumno=" + ddlAlumno.SelectedValue + " AND codigoMateria=" + ddlMateria.SelectedValue);
        }

        protected void txtPrimer_TextChanged(object sender, EventArgs e)
        {
            Decimal v, suma = 0;
            if ((Convert.ToDecimal(txtPrimer.Text) < Convert.ToDecimal(txtMejoramiento.Text)) && (Convert.ToDecimal(txtPrimer.Text) < Convert.ToDecimal(txtSegundo.Text)))
            {
                suma = Convert.ToDecimal(txtMejoramiento.Text) + Convert.ToDecimal(txtSegundo.Text);
            }
            else if ((Convert.ToDecimal(txtSegundo.Text) < Convert.ToDecimal(txtMejoramiento.Text)) && (Convert.ToDecimal(txtSegundo.Text) < Convert.ToDecimal(txtPrimer.Text)))
            {
                suma = Convert.ToDecimal(txtMejoramiento.Text) + Convert.ToDecimal(txtPrimer.Text);
            }
            else
            {
                suma = Convert.ToDecimal(txtPrimer.Text) + Convert.ToDecimal(txtSegundo.Text);
            }

            txtPromedio.Text = Convert.ToString(suma/2);
            if (Convert.ToDecimal(txtPromedio.Text) >= 7)
            {
                DropDownList3.SelectedIndex = 1;


            }

        }

        protected void txtSegundo_TextChanged(object sender, EventArgs e)
        {
            Decimal v, suma = 0;
            if ((Convert.ToDecimal(txtPrimer.Text) < Convert.ToDecimal(txtMejoramiento.Text)) && (Convert.ToDecimal(txtPrimer.Text) < Convert.ToDecimal(txtSegundo.Text)))
            {
                suma = Convert.ToDecimal(txtMejoramiento.Text) + Convert.ToDecimal(txtSegundo.Text);
            }
            else if ((Convert.ToDecimal(txtSegundo.Text) < Convert.ToDecimal(txtMejoramiento.Text)) && (Convert.ToDecimal(txtSegundo.Text) < Convert.ToDecimal(txtPrimer.Text)))
            {
                suma = Convert.ToDecimal(txtMejoramiento.Text) + Convert.ToDecimal(txtPrimer.Text);
            }
            else
            {
                suma = Convert.ToDecimal(txtPrimer.Text) + Convert.ToDecimal(txtSegundo.Text);
            }

            txtPromedio.Text = Convert.ToString(suma / 2);
            if (Convert.ToDecimal(txtPromedio.Text) >= 7)
            {
                DropDownList3.SelectedIndex = 1;


            }
        }

        protected void txtMejoramiento_TextChanged(object sender, EventArgs e)
        {
            
                Decimal v,suma=0;
            if((Convert.ToDecimal(txtPrimer.Text)<Convert.ToDecimal(txtMejoramiento.Text)) && (Convert.ToDecimal(txtPrimer.Text)<Convert.ToDecimal(txtSegundo.Text)))
            {
           suma=Convert.ToDecimal(txtMejoramiento.Text)+Convert.ToDecimal(txtSegundo.Text);
            }
            else if((Convert.ToDecimal(txtSegundo.Text)<Convert.ToDecimal(txtMejoramiento.Text)) && (Convert.ToDecimal(txtSegundo.Text)<Convert.ToDecimal(txtPrimer.Text)))
            {
             suma=Convert.ToDecimal(txtMejoramiento.Text)+Convert.ToDecimal(txtPrimer.Text);
            }else{
                suma=Convert.ToDecimal(txtPrimer.Text)+Convert.ToDecimal(txtSegundo.Text);
            }

            txtPromedio.Text = Convert.ToString(suma/2);
            if (Convert.ToDecimal(txtPromedio.Text) >= 7)
            {
                DropDownList3.SelectedIndex = 1;


            }
     
       
    }

        protected void ddlMateria_SelectedIndexChanged(object sender, EventArgs e)
        {
          
                txtMejoramiento.Enabled = true;
                txtPrimer.Enabled = true;
                txtSegundo.Enabled = true;
                general consulta = new general();
                DataSet ds=consulta.consulta("SELECT primer,segundo,mejoramiento,promedio from notas where codigoAlumno="+ddlAlumno.SelectedValue+"AND codigoMateria="+ddlMateria.SelectedValue);
                txtPrimer.Text = Convert.ToString(ds.Tables[0].Rows[0]["primer"]);
                txtSegundo.Text = Convert.ToString(ds.Tables[0].Rows[0]["segundo"]);
                txtMejoramiento.Text = Convert.ToString(ds.Tables[0].Rows[0]["mejoramiento"]);
                txtPromedio.Text = Convert.ToString(ds.Tables[0].Rows[0]["promedio"]);
         
         

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Notas.aspx");
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }



      
    }
}