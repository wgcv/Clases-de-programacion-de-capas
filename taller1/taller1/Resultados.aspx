<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="taller1.Resultados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 417px;
        }
        .style3
        {
            width: 417px;
            height: 21px;
        }
        .style4
        {
            height: 21px;
        }
        .style5
        {
            width: 417px;
            height: 24px;
        }
        .style6
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                Sr/Srta:
                <asp:Label ID="lblNombre" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Sus Resultados son los siguientes</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                *
                <asp:Label ID="lblAciertos" runat="server"></asp:Label>
&nbsp;Aciertos</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                *
                <asp:Label ID="lblFallos" runat="server"></asp:Label>
&nbsp;Fallos</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Respuestas Acertadas:
                <asp:Label ID="lblRespuestaAcertadas" runat="server"></asp:Label>
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style3">
                Respuestas Falladas:
                <asp:Label ID="lblRespuestasFalladas" runat="server"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="btnRegresar" runat="server" onclick="btnRegresar_Click" 
                    Text="Regresar" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
