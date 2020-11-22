<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="estado_pedido.aspx.cs" Inherits="SincoAF_project.estado_pedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="p-3">
            <h1>Listado de pedidos pendientes</h1>
        </div>
        <asp:GridView ID="gr_pedidos_pendientes" AllowPaging="True" runat="server" DataKeyNames="id_pedido"
            OnSelectedIndexChanged="gr_pedidos_pendientes_SelectedIndexChanged" AutoGenerateColumns="False" PagerStyle-CssClass="thead-dark">
            <Columns>
                <asp:BoundField AccessibleHeaderText="id_pedido" DataField="id_pedido" HeaderText="id_pedido" />
                <asp:BoundField AccessibleHeaderText="nombre_usuario" DataField="nombre_usuario" HeaderText="nombre_usuario" />
                <asp:BoundField AccessibleHeaderText="fecha_pedido" DataField="fecha_pedido" HeaderText="fecha_pedido" />
                <asp:BoundField AccessibleHeaderText="fecha_ingreso" DataField="fecha_ingreso" HeaderText="fecha_ingreso" />
                <asp:BoundField AccessibleHeaderText="concepto" DataField="concepto" HeaderText="concepto" />
                <asp:BoundField AccessibleHeaderText="articulo_principal" DataField="articulo_principal" HeaderText="articulo_principal" />
                <asp:BoundField AccessibleHeaderText="estado_pedido" DataField="estado_pedido" HeaderText="estado_pedido" />
                <asp:ButtonField AccessibleHeaderText="Completar" CommandName="Select" Text="Completar" />
            </Columns>
            <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" Position="Bottom" />

<PagerStyle CssClass="thead-dark"></PagerStyle>
        </asp:GridView>
        <p>
            <div class="p-3">
                <h1>Listado de pedidos completos</h1>
            </div>
        </p>
        <asp:GridView ID="gr_pedidos_completos" AllowPaging="true" runat="server" AutoGenerateColumns="False" DataKeyNames="id_pedido"
            PagerStyle-CssClass="thead-dark">
            <Columns>
                <asp:BoundField AccessibleHeaderText="id_pedido" DataField="id_pedido" HeaderText="id_pedido" />
                <asp:BoundField AccessibleHeaderText="nombre_usuario" DataField="nombre_usuario" HeaderText="nombre_usuario" />
                <asp:BoundField AccessibleHeaderText="fecha_pedido" DataField="fecha_pedido" HeaderText="fecha_pedido" />
                <asp:BoundField AccessibleHeaderText="fecha_ingreso" DataField="fecha_ingreso" HeaderText="fecha_ingreso" />
                <asp:BoundField AccessibleHeaderText="concepto" DataField="concepto" HeaderText="concepto" />
                <asp:BoundField AccessibleHeaderText="articulo_principal" DataField="articulo_principal" HeaderText="articulo_principal" />
                <asp:BoundField AccessibleHeaderText="fecha_completado" DataField="fecha_completado" HeaderText="fecha_completado" />
                <asp:BoundField AccessibleHeaderText="estado_pedido" DataField="estado_pedido" HeaderText="estado_pedido" />
            </Columns>
            <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" Position="Bottom" />
        </asp:GridView>
    </form>
</asp:Content>
