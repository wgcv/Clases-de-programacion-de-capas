<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Deber_2._Default1" %>

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
        .style4
        {
            width: 166px;
            height: 30px;
        }
        .style5
        {
            height: 30px;
        }
        .style6
        {
            width: 381px;
        }
        .style7
        {
            height: 21px;
            width: 381px;
        }
        .style8
        {
            height: 30px;
            width: 381px;
        }
        .style9
        {
            width: 166px;
            height: 26px;
        }
        .style10
        {
            width: 381px;
            height: 26px;
        }
        .style11
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style6">
                Formulario Rol de Pago</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Identificacion</td>
            <td class="style6">
                <asp:TextBox ID="txtIdentificacion" runat="server" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtIdentificacion" 
                    ErrorMessage="(*) El Campo Identificacion es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Nombre</td>
            <td class="style6">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNombre" ErrorMessage="(*) El Campo Nombre es requerido" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Departamento</td>
            <td class="style6">
                <asp:DropDownList ID="ddlDepartamento" runat="server">
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
            <td class="style9">
                Cargo</td>
            <td class="style10">
                <asp:DropDownList ID="ddlCargo" runat="server">
                    <asp:ListItem>Analista</asp:ListItem>
                    <asp:ListItem>Operador</asp:ListItem>
                    <asp:ListItem>Contrador</asp:ListItem>
                    <asp:ListItem>Jefe</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style1">
                Num. De horas trabajadas</td>
            <td class="style6">
                <asp:TextBox ID="txtNumHoras" runat="server" AutoPostBack="True" 
                    ontextchanged="txtNumHoras_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtNumHoras" 
                    ErrorMessage="(*) El Campo Num de Horas es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Valor de la hora</td>
            <td class="style6">
                <asp:TextBox ID="txtValorHora" runat="server" AutoPostBack="True" 
                    ontextchanged="txtValorHora_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtValorHora" 
                    ErrorMessage="(*) El Campo Valor de la hora es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Salario</td>
            <td class="style6">
                <asp:Label ID="lblSalario" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style6">
                Ingresos</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Bonificación
            </td>
            <td class="style6">
                <asp:TextBox ID="txtBonificacion" runat="server" AutoPostBack="True" 
                    ontextchanged="txtBonificacion_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Decimos</td>
            <td class="style6">
                <asp:TextBox ID="txtDecimos" runat="server" AutoPostBack="True" 
                    ontextchanged="txtDecimos_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Total de ingresos</td>
            <td class="style6">
                <asp:Label ID="lblTotalIngresos" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style7">
                Egresos</td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style1">
                Descuentos</td>
            <td class="style6">
                <asp:TextBox ID="txtDescuentos" runat="server" AutoPostBack="True" 
                    ontextchanged="txtDescuentos_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                IESS</td>
            <td class="style6">
                <asp:Label ID="lblIess" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Total de egresos</td>
            <td class="style6">
                <asp:Label ID="lblTotalEgresos" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style8">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                    ShowMessageBox="True" />
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="btnProcesar" runat="server" Text="Procesar" 
                    onclick="btnProcesar_Click" />
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" 
                    onclick="btnLimpiar_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
