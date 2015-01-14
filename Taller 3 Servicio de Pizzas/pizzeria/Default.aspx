<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="pizzeria._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 419px;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width: 100%;">
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td>
            Sistema de pizzeria</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnIngreso" runat="server" Text="Ingreso" Width="101px" 
                onclick="btnIngreso_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnConsulta" runat="server" TabIndex="1" Text="Consulta" 
                Width="100px" onclick="btnConsulta_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
