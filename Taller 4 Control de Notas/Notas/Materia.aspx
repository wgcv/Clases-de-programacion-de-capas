﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Materia.aspx.cs" Inherits="Notas.Materia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
       <table style="width:100%;">
        <tr>
            <td class="style1">
                </td>
            <td class="style1">
                Consulta por estado</td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td>
                Materia</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" style="width: 77px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
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
                <asp:Button ID="btnRegresar" runat="server" Text="Regresar" 
                    onclick="btnRegresar_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>

    </table>
</asp:Content>
