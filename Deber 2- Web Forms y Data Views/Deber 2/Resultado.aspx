<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resultado.aspx.cs" Inherits="Deber_2.Resultado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 166px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function btnVolver_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                Resultado</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Identificacón</td>
            <td>
                <asp:Label ID="lblIdentificacion" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Nombre</td>
            <td>
                <asp:Label ID="lblNombre" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Departamento</td>
            <td>
                <asp:Label ID="lblDepartamento" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Cargo</td>
            <td>
                <asp:Label ID="lblCargo" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Salario</td>
            <td>
                <asp:Label ID="lblSalario" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Total de ingresos</td>
            <td>
                <asp:Label ID="lblIngresos" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Total de egresos</td>
            <td>
                <asp:Label ID="lblEgresos" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Sueldo a pagar</td>
            <td>
                <asp:Label ID="lblSueldo" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnVolver" runat="server" onclick="btnVolver_Click" 
                    Text="Volver" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
