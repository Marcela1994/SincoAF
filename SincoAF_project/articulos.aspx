<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="articulos.aspx.cs" Inherits="SincoAF_project.articulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <br />
        <br />
        <asp:Label ID="lbl_nombre" runat="server">NOMBRE COMPLETO</asp:Label>
        <asp:TextBox type="text" ID="txt_nombreArt" runat="server"></asp:TextBox>
        <asp:Button ID="btnCrearUser" CssClass="btn btn-primary" Text="CREAR" runat="server" OnClick="crearArticulo_click" />
        <br />
        <br />
        <hr />
        <asp:GridView ID="gr_listadoUsuarios" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField AccessibleHeaderText="ID_USUARIO" DataField="codigo_usuario" HeaderText="ID_USUARIO" />
                <asp:BoundField AccessibleHeaderText="NOMBRE_USUARIO" DataField="nombre_usuario" HeaderText="NOMBRE_USUARIO" />
            </Columns>
        </asp:GridView>
        <br />
    </form>
    <br />
    <br />
    <hr />
    <br />
    <table class="table table-striped table-dark">
        <thead>
            <tr>
                <th scope="col">CODIGO</th>
                <th scope="col">NOMBRE</th>
                <th scope="col">ELIMINAR</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">1</th>
                <td contenteditable="true">Mark</td>
                <td class="boton_borrar"><a role="button">BORRAR</a></td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td contenteditable="true">Jacob</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td contenteditable="true">Larry</td>
            </tr>
        </tbody>
    </table>

    <a class="boton_volver" href="index.aspx" role="button">REGRESAR</a>
</asp:Content>
