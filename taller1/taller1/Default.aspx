<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="taller1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style5
        {
            height: 19px;
            width: 1115px;
        }
        .style6
        {
            height: 19px;
            width: 616px;
        }
        .style7
        {
            height: 22px;
            width: 616px;
        }
        .style8
        {
            width: 616px;
        }
        .style9
        {
            height: 22px;
            width: 1115px;
        }
        .style10
        {
            width: 1115px;
        }
        .style11
        {
            width: 1115px;
            height: 102px;
        }
        .style12
        {
            width: 616px;
            height: 102px;
        }
          .btn
        {
           margin:  1em 4em;
           radius-border: 0.7em;
           text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width: 100%;">
        <tr>
            <td class="style5">
                Formulario de conocimiento General</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Instrucciones: Escoja la alternativa correcta entre las siguientes opciones</td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style10">
                Nombre:&nbsp;
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNombre" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                1.- En que año colon descubrió América</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:RadioButtonList ID="rbl1" runat="server">
                    <asp:ListItem Value="1">A) 1492</asp:ListItem>
                    <asp:ListItem Value="0">B) 1532</asp:ListItem>
                    <asp:ListItem Value="0">C) 1692</asp:ListItem>
                    <asp:ListItem Value="0">D) 1472</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="rbl1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                2.- Qué equipo de futbol Ecuatoriano ganó la copa libertadora?</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:RadioButtonList ID="rbl2" runat="server">
                    <asp:ListItem Value="0">A) Emelec</asp:ListItem>
                    <asp:ListItem Value="0">B) Barcelona</asp:ListItem>
                    <asp:ListItem Value="1">C) LDU Quito</asp:ListItem>
                    <asp:ListItem Value="0">D) Macara</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="rbl2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                3.- Cuáñ fue el cantante ecuatoriano que quedo en 2do lugar en el festival de 
                OTI?</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:RadioButtonList ID="rbl3" runat="server">
                    <asp:ListItem Value="0">A) Daniel Betancurt</asp:ListItem>
                    <asp:ListItem Value="0">B) Jorge Luis del Hierro</asp:ListItem>
                    <asp:ListItem Value="0">C) Julio Jaramillo</asp:ListItem>
                    <asp:ListItem Value="1">D) Jesus Fichamba</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="rbl3" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                4.- Cual presidente ecuatoriano dijo la frrase &quot;Ni un paso atrás&quot;?</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:RadioButtonList ID="rbl4" runat="server">
                    <asp:ListItem Value="0">A) Jaime Roldos</asp:ListItem>
                    <asp:ListItem Value="0">B) Abdala Bucaram</asp:ListItem>
                    <asp:ListItem Value="1">C) Sitxto Duran</asp:ListItem>
                    <asp:ListItem Value="0">D) Rafael Correa</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="rbl4" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                5.- Que ecuatoriano ganó una medalla olimpica?</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:RadioButtonList ID="rbl5" runat="server">
                    <asp:ListItem Value="1">A) Jefferson Perez</asp:ListItem>
                    <asp:ListItem Value="0">B) Angie Auguero</asp:ListItem>
                    <asp:ListItem Value="0">C) Agustin Delgado</asp:ListItem>
                    <asp:ListItem Value="0">D) Norman Camilo</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="rbl5" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Button ID="btnProcesar" runat="server" onclick="btnProcesar_Click" 
                    Text="Procesar" style="width: 78px" class="btn"/>
                <asp:Button ID="btnLimpiar" runat="server"  CausesValidation="False" 
                    Text="Limpiar" onclick="btnLimpiar_Click" class="btn" />
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
