<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Deber_2._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 166px;
        }
 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
        .style2
        {
            width: 166px;
            height: 21px;
        }
        .style3
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                Formulario Rol de Pago</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Identificacion</td>
            <td>
                <asp:TextBox ID="txtIdentificacion" runat="server" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Nombre</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Departamento</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Ventas</asp:ListItem>
                    <asp:ListItem Value="Finanzas"></asp:ListItem>
                    <asp:ListItem>Producción</asp:ListItem>
                    <asp:ListItem>RRHH</asp:ListItem>
                    <asp:ListItem Selected="True">Sistemas</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Cargo</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Analista</asp:ListItem>
                    <asp:ListItem>Operador</asp:ListItem>
                    <asp:ListItem>Contrador</asp:ListItem>
                    <asp:ListItem>Jefe</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Num. De horas trabajadas</td>
            <td>
                <asp:TextBox ID="txtNumHoras" runat="server" AutoPostBack="True" 
                    ontextchanged="txtNumHoras_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Valor de la hora</td>
            <td>
                <asp:TextBox ID="txtValorHora" runat="server" AutoPostBack="True" 
                    ontextchanged="txtValorHora_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Salario</td>
            <td>
                <asp:Label ID="lblSalario" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Ingresos</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Bonificación
            </td>
            <td>
                <asp:TextBox ID="txtBonificacion" runat="server" AutoPostBack="True" 
                    ontextchanged="txtBonificacion_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Decimos</td>
            <td>
                <asp:TextBox ID="txtDecimos" runat="server" AutoPostBack="True" 
                    ontextchanged="txtDecimos_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Total de ingresos</td>
            <td>
                <asp:Label ID="lblTotalIngresos" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Egresos</td>
            <td class="style3">
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style1">
                Descuentos</td>
            <td>
                <asp:TextBox ID="txtDescuentos" runat="server" AutoPostBack="True" 
                    ontextchanged="txtDescuentos_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                IESS</td>
            <td>
                <asp:Label ID="lblIess" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Total de egresos</td>
            <td>
                <asp:Label ID="lblTotalEgresos" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnCalcular" runat="server" Text="Calcular" />
                <asp:Button ID="btnProcesar" runat="server" Text="Procesar" />
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
