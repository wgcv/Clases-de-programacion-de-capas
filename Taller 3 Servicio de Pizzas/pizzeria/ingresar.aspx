<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ingresar.aspx.cs" Inherits="pizzeria.ingresar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 21px;
        }
        .style2
        {
            height: 21px;
            width: 225px;
        }
        .style3
        {
            width: 225px;
        }
        .style4
        {
            width: 225px;
            height: 30px;
        }
        .style5
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="style2">
            </td>
            <td class="style1">
                Ingreso</td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style3">
                Nombre del cliente</td>
            <td>
                <asp:TextBox ID="txtCliente" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Tamaño de la pizza</td>
            <td>
                <asp:DropDownList ID="ddlTamaño" runat="server" DataSourceID="tamaño" 
                    DataTextField="descripcion" DataValueField="co_pizza" Width="83px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="tamaño" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                    SelectCommand="SELECT [descripcion], [co_pizza] FROM [maestra_pizza]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Carnicos</td>
            <td>
                <asp:CheckBoxList ID="cblCarnicos" runat="server" DataSourceID="Carnicos" 
                    DataTextField="descripcion" DataValueField="co_ingrediente">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="Carnicos" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                    SelectCommand="SELECT [descripcion], [co_ingrediente] FROM [maestra_ingrediente] WHERE ([co_tipoingrediente] = @co_tipoingrediente)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="co_tipoingrediente" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Vegetales</td>
            <td>
                <asp:CheckBoxList ID="cblVegetales" runat="server" DataSourceID="Vegetales" 
                    DataTextField="descripcion" DataValueField="co_ingrediente">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="Vegetales" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                    SelectCommand="SELECT [descripcion], [co_ingrediente] FROM [maestra_ingrediente] WHERE ([co_tipoingrediente] = @co_tipoingrediente)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="co_tipoingrediente" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Otros</td>
            <td>
                <asp:CheckBoxList ID="cblOtros" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="descripcion" DataValueField="co_ingrediente">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                    SelectCommand="SELECT [descripcion], [co_ingrediente] FROM [maestra_ingrediente] WHERE ([co_tipoingrediente] = @co_tipoingrediente)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="3" Name="co_tipoingrediente" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Desea transporte</td>
            <td>
                <asp:RadioButtonList ID="rblTransporte" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="rblTransporte_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblSector" runat="server" Text="Sector"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlSector" runat="server" DataSourceID="Sector" 
                    DataTextField="descripcion" DataValueField="precio">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Sector" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                    SelectCommand="SELECT [precio], [descripcion] FROM [maestra_sectores]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblDireccion" runat="server" Text="Direccion"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style5">
                <asp:Button ID="btnCalcular" runat="server" onclick="btnCalcular_Click" 
                    Text="Calcular" />
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblSubtotal" runat="server" Text="Subtotal" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="subtotal" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblIva" runat="server" Text="IVA" Visible="False"></asp:Label>
            </td>
            <td class="style1">
                <asp:Label ID="iva" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblTransporte" runat="server" Text="Transporte" Visible="False"></asp:Label>
            </td>
            <td class="style1">
                <asp:Label ID="transporte" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblTotal" runat="server" Text="Total" Visible="False"></asp:Label>
            </td>
            <td class="style1">
                <asp:Label ID="total" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnGrabar" runat="server" onclick="btnGrabar_Click" 
                    Text="Grabar" Visible="False" />
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
