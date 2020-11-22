<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="SincoAF_project.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <br />
        <br />
        <asp:Label ID="lbl_codigo" runat="server">CODIGO DE REGISTRO</asp:Label>
        <asp:TextBox type="text" ID="txt_codigo" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_nombre" runat="server">NOMBRE COMPLETO</asp:Label>
        <asp:TextBox type="text" ID="txt_nombre" runat="server"></asp:TextBox>
        <asp:Button ID="btnCrearUser" CssClass="btn btn-primary" Text="CREAR" runat="server" OnClick="crearUsuario_click" />
        
        <br />
        <br />
        <hr />
        <center><asp:GridView ID="gr_listadoUsuarios" runat="server" AutoGenerateColumns="False" Height="189px" Width="396px">
            <Columns>
                <asp:BoundField AccessibleHeaderText="ID_USUARIO" DataField="codigo_usuario" HeaderText="CODIGO DE USUARIO"/>
                <asp:BoundField AccessibleHeaderText="NOMBRE_USUARIO" DataField="nombre_usuario" HeaderText="NOMBRE DE USUARIO" />
            </Columns>
            <EditRowStyle BackColor="#FFFF66" />
            <RowStyle BackColor="#9999FF" BorderColor="#0033CC" Font-Bold="True" Font-Italic="True" />
        </asp:GridView></center>
        <br />
    </form>

    <a class="boton_volver" href="index.aspx" role="button">REGRESAR</a>
</asp:Content>
