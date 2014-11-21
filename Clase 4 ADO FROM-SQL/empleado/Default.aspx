<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="empleado._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            height: 21px;
        }
        .style2
        {
            height: 21px;
            width: 767px;
        }
        .style3
        {
            width: 767px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width:100%;">
        <tr>
            <td class="style1">
            </td>
            <td class="style2">
                <asp:Label ID="lblTitulo" runat="server" Text="Fromulario Maestro de empleado"></asp:Label>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblBuscar" runat="server" Text="Buscar por:"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="ddlBuscar" runat="server" Height="23px" Width="208px" 
                    AutoPostBack="True">
                    <asp:ListItem Value="codigo">Codigo</asp:ListItem>
                    <asp:ListItem Value="nombre">Nombre</asp:ListItem>
                    <asp:ListItem Value="direccion">Direccion</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CausesValidation="False" 
                    onclick="btnBuscar_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style2">
                <asp:GridView ID="grvEmpleado" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ButtonField CommandName="modificar" Text="Modificar" />
                        <asp:BoundField HeaderText="Codigo" DataField="codigo" />
                        <asp:BoundField HeaderText="Nombre" DataField="nombre" />
                        <asp:BoundField HeaderText="Direccion" DataField="direccion" />
                        <asp:BoundField HeaderText="Telefono" DataField="telefono" />
                        <asp:BoundField HeaderText="Sexo" DataField="sexo" />
                        <asp:BoundField HeaderText="Sueldo" DataField="sueldo" />
                        <asp:BoundField HeaderText="Edad" DataField="edad" />
                        <asp:BoundField HeaderText="Estado" DataField="estado" />
                        <asp:ButtonField CommandName="eliminar" Text="Eliminar" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="btnNuevo" runat="server" style="margin-left: 0px" CausesValidation="False" 
                    Text="Nuevo" onclick="btnNuevo_Click" />
                <asp:Button ID="tnRefrescar" runat="server" Text="Refrescar" />
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblCodigo" runat="server" Text="Codigo"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtCodigo" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" 
                    ControlToValidate="txtNombre" ErrorMessage="Debe Ingresar un nombre" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblDireccion" runat="server" Text="Direccion"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" 
                    ControlToValidate="txtDireccion" ErrorMessage="Debes ingresar un direccion" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
            </td>
            <td class="style2">
                <asp:RadioButtonList ID="rblSexo" runat="server">
                    <asp:ListItem Value="M">Masculino</asp:ListItem>
                    <asp:ListItem Value="F">Femenino</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="rblSexo" 
                    ErrorMessage="Debes ingresar un sexo" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblSueldo" runat="server" Text="Sueldo"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtSueldo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSueldo" runat="server" 
                    ControlToValidate="txtSueldo" ErrorMessage="Requiere un sueldo" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblEdad" runat="server" Text="Edad"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEdad" runat="server" ClientIDMode="AutoID" 
                    ControlToValidate="txtEdad" ErrorMessage="Requieres ingresar un edad" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="btnGrabar" runat="server" Text="Grabar" 
                    onclick="btnGrabar_Click" />
&nbsp;
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
