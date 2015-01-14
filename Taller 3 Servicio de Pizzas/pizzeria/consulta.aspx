<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="consulta.aspx.cs" Inherits="pizzeria.consulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        height: 21px;
    }
    .style2
    {
        height: 22px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%;">
    <tr>
        <td class="style2">
        </td>
        <td class="style2">
            Consulta Pizzeria</td>
        <td class="style2">
        </td>
    </tr>
    <tr>
        <td class="style1">
            Buscar por:</td>
        <td class="style1">
            <asp:DropDownList ID="ddlBuscar" runat="server">
                <asp:ListItem Value="co_venta">Codigo</asp:ListItem>
                <asp:ListItem Value="cliente">Cliente</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" 
                onclick="btnBuscar_Click" />
        </td>
        <td class="style1">
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Regresar" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
