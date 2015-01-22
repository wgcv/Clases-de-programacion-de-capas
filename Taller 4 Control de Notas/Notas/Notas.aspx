<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notas.aspx.cs" Inherits="Notas.Notas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <style type="text/css">
        .style1
        {
            height: 21px;
        }
    .style2
    {
        height: 27px;
    }
        .style3
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
            </td>
            <td class="style1">
                Ingreso Notas</td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td>
                Alumno</td>
            <td>
                <asp:DropDownList ID="ddlAlumno" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlAlumno_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Materia</td>
            <td>
                <asp:DropDownList ID="ddlMateria" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlMateria_SelectedIndexChanged" style="height: 22px">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Primer Parcial</td>
            <td>
                <asp:TextBox ID="txtPrimer" runat="server" AutoPostBack="True" 
                    ontextchanged="txtPrimer_TextChanged">0.00</asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtPrimer" ErrorMessage="Ingrese una nota valida" 
                    MaximumValue="10.00" MinimumValue="0.00" Type="Currency"></asp:RangeValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Segundo Parcial</td>
            <td>
                <asp:TextBox ID="txtSegundo" runat="server" AutoPostBack="True" 
                    ontextchanged="txtSegundo_TextChanged" >0.00</asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="txtSegundo" ErrorMessage="Ingrese una nota valida" 
                    MaximumValue="10" MinimumValue="0" Type="Double"></asp:RangeValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Mejoramiento</td>
            <td>
                <asp:TextBox ID="txtMejoramiento" runat="server" AutoPostBack="True" 
                    ontextchanged="txtMejoramiento_TextChanged" style="margin-bottom: 0px">0.00</asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" 
                    ControlToValidate="txtMejoramiento" ErrorMessage="Ingrese una nota valida" 
                    MaximumValue="10" MinimumValue="0" Type="Double"></asp:RangeValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Promedio</td>
            <td class="style2">
                <asp:TextBox ID="txtPromedio" runat="server" Enabled="False" 
          
                    style="height: 22px" >0.00</asp:TextBox>
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                Observacion</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Enabled="False">
                    <asp:ListItem Selected="True">REPROBADO</asp:ListItem>
                    <asp:ListItem>APROBADO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnGrabar" runat="server" Text="Grabar" 
                    onclick="btnGrabar_Click" />
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" 
                    onclick="btnLimpiar_Click" />
                <asp:Button ID="btnSalir" runat="server" Text="Salir" 
                    onclick="btnSalir_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
