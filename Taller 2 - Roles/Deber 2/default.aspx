<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Deber_2._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 362px;
        }
        .style2
        {
            width: 362px;
            height: 33px;
        }
        .style3
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td><h1>Solucion de Roles</h1></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="Calcular Rol" 
                    onclick="Button1_Click" Width="175px" />
            </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Consulta General" 
                    onclick="Button2_Click" Width="175px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Consulta Específica" 
                    onclick="Button3_Click" Width="175px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
