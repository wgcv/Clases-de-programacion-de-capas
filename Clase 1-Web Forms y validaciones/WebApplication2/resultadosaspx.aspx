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
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblTitulo" runat="server" Text="Formulario de Resultados"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Tipo de identificacion"></asp:Label>
                </td>
                <td class="style1">
                    <asp:Label ID="lbldentifacion" runat="server"></asp:Label>
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Iditentificación"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblIdentificacion" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td class="style1">
                    <asp:Label ID="lblNombre" runat="server"></asp:Label>
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Razón Social"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblRazonSocial" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Dirección"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDireccion" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Teléfono"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTelefono" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Sexo"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblSexo" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Aficiones"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAficiones" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnRegresar" runat="server" Text="Regresar" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>
