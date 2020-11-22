<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="SincoAF_project.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <br />
        <br />
        <asp:Label ID="lbl_codigo" runat="server">CODIGO DE REGISTRO</asp:Label>
        <br />
        <asp:TextBox type="text" ID="txt_codigo" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_nombre" runat="server">NOMBRE COMPLETO</asp:Label>
        <asp:TextBox type="text" ID="txt_nombre" runat="server"></asp:TextBox>
        <asp:Button ID="btnCrearUser" CssClass="btn btn-primary" Text="CREAR" runat="server" OnClick="crearUsuario_click" />
        <br />
        <br />
        <hr />
        <asp:GridView ID="gr_listadoUsuarios" runat="server" AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="codigo_usuario,nombre_usuario"
            AllowSorting="True" OnSelectedIndexChanged="gr_listadoUsuarios_SelectedIndexChanged" OnRowDeleting="gr_listadoUsuarios_RowDeleting">
            <Columns>
                <asp:BoundField AccessibleHeaderText="codigo_usuario" DataField="codigo_usuario" HeaderText="codigo_usuario" />
                <asp:BoundField AccessibleHeaderText="nombre_usuario" DataField="nombre_usuario" HeaderText="nombre_usuario" />
                <asp:ButtonField AccessibleHeaderText="Editar" CommandName="Select" Text="Editar" />
                <asp:ButtonField CommandName="Delete" Text="Eliminar" />
            </Columns>
        </asp:GridView>
        <br />
    </form>
    

    <a class="boton_volver" href="index.aspx" role="button">REGRESAR</a>
</asp:Content>
