<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        height: 21px;
    }
    .style2
    {
        height: 102px;
    }
    .style3
    {
        height: 25px;
    }
    .style4
    {
        width: 520px;
    }
    .style5
    {
        height: 21px;
        width: 520px;
    }
    .style6
    {
        height: 25px;
        width: 520px;
    }
    .style7
    {
        height: 102px;
        width: 520px;
    }
    .style8
    {
        width: 222px;
    }
    .style9
    {
        height: 21px;
        width: 222px;
    }
    .style10
    {
        height: 25px;
        width: 222px;
    }
    .style11
    {
        height: 102px;
        width: 222px;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
        <table style="width:100%;">
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="lblTitle" runat="server" 
                        Text="FORMULARIO MAESTRO DE PERSONAS/EMPRESAS"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="lblTipodeIdentificacion" runat="server" EnableTheming="True" 
                        Text="Tipo de Indentificacion"></asp:Label>
                </td>
                <td class="style5">
                    <asp:DropDownList ID="ddlTipodeIdentificacion" runat="server" 
                        AutoPostBack="True">
                        <asp:ListItem Value="C">CEDULA</asp:ListItem>
                        <asp:ListItem Value="R">RUC</asp:ListItem>
                        <asp:ListItem Value="P">PASPORTE</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style1">
                    </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="lblIdentificacion" runat="server" Text="Identificación"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtIdentificacion" runat="server" MaxLength="10"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="rfvIdentificacion" runat="server" 
                        ControlToValidate="txtIdentificacion" 
                        ErrorMessage="Debe Ingresar un valor en el campo identifación">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtNombre" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td class="style1">
                    </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblRazonSocial" runat="server" Text="Razón Social"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtRazonSocial" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblDireaccion" runat="server" Text="Dirección"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtDireccion" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" 
                        ControlToValidate="txtDireccion" 
                        ErrorMessage="Debe Ingresar un valor en el campo dirección">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtTelefono" runat="server" MaxLength="10"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
                </td>
                <td class="style4">
                    <asp:RadioButtonList ID="rblSexo" runat="server">
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Femenino</asp:ListItem>
                        <asp:ListItem Selected="True" Value="S">Sin Especificar</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="lblAficiones" runat="server" Text="Aficiones"></asp:Label>
                </td>
                <td class="style7">
                    <asp:CheckBoxList ID="cblaficiones" runat="server">
                        <asp:ListItem Value="1">Lectura</asp:ListItem>
                        <asp:ListItem Value="2">Cine</asp:ListItem>
                        <asp:ListItem Value="6">Depores</asp:ListItem>
                        <asp:ListItem Value="6">Video Juegos</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="style2">
                    </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style4">
                    <asp:ValidationSummary ID="vdsMensajeError" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="btnProcesar" runat="server" Text="Procesar" />
                    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>
