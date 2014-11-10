using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Deber_2
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtValorHora_TextChanged(object sender, EventArgs e)
        {
            cambioSalario();
            cambioIngresos();
            cambioEngresos();
            iess();
        }
    


        protected void txtNumHoras_TextChanged(object sender, EventArgs e)
        {
            cambioSalario();
            cambioIngresos();
            cambioEngresos();
            iess();
        }

        protected void txtBonificacion_TextChanged(object sender, EventArgs e)
        {
            cambioIngresos();
            iess();
        }

        protected void txtDecimos_TextChanged(object sender, EventArgs e)
        {
            cambioIngresos();
            cambioEngresos();
            iess();
        }

        protected void txtDescuentos_TextChanged(object sender, EventArgs e)
        {
            cambioEngresos();
            iess();
        }
        protected void cambioSalario()
        {

            if ((!(txtNumHoras.Text == "") && !(txtValorHora.Text == "")))
            {
                Decimal valorHora;
                Decimal numHoras;
                Decimal salario;
                bool resultado1 = Decimal.TryParse(txtValorHora.Text, out valorHora);
                bool resultado2 = Decimal.TryParse(txtNumHoras.Text, out numHoras);
                if (resultado1 && resultado2)
                {
                    salario = valorHora * numHoras;
                    lblSalario.Text = salario.ToString("N2");

                }

            }
        }

        protected void cambioIngresos()
        {


            Decimal bonificacion = 0;
            Decimal decimos = 0;
            Decimal ingresos;
            if (!(txtBonificacion.Text == "")) { bool resultado1 = Decimal.TryParse(txtBonificacion.Text, out bonificacion); }

            if (!(txtDecimos.Text == "")) { bool resultado2 = Decimal.TryParse(txtDecimos.Text, out decimos); }


            ingresos = bonificacion + decimos;
            lblTotalIngresos.Text = ingresos.ToString("N2");




        }
        protected void cambioEngresos()
        {

            if ((!(lblIess.Text == "")))
            {
                Decimal descuentos = 0;
                Decimal iess;
                Decimal egresos;
                if (!(txtDescuentos.Text == "")) { bool resultado1 = Decimal.TryParse(txtDescuentos.Text, out descuentos); }



                bool resultado2 = Decimal.TryParse(lblIess.Text, out iess);

                egresos = descuentos + iess;
                lblTotalEgresos.Text = egresos.ToString("N2");



            }
        }
        protected void iess()
        {

            if (!(lblSalario.Text == ""))
            {
                Decimal salario;
                Decimal ingresos;
                Decimal porcentaje = 0.35m;
                Decimal iees;
                bool resultado1 = Decimal.TryParse(lblSalario.Text, out salario);
                bool resultado2 = Decimal.TryParse(lblTotalIngresos.Text, out ingresos);
                if (resultado1 && resultado2)
                {
                    iees = (salario + ingresos);
                    iees = iees * porcentaje;

                    lblIess.Text = iees.ToString("N2");

                }

            }
        }
    }


}
