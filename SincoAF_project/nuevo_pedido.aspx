<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="nuevo_pedido.aspx.cs" Inherits="SincoAF_project.nuevo_pedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="usuario">USUARIO:</label> <asp:DropDownList runat="server" ID="ddl_usuarios" Height="39px" Width="200px"></asp:DropDownList>
            </div>
            <div class="form-group col-md-3">
                <label for="fecha">FECHA</label> <asp:TextBox type="text" ID="txt_fechaPedido" runat="server" placeHolder="DD/MM/AAAA"></asp:TextBox>                
            </div>
        </div>
        <div class="form-group">
            <label for="concepto">CONCEPTO</label>
            <asp:TextBox type="text" ID="txt_conceptoPedido" runat="server" placeHolder="DD/MM/AAAA" Width="788px"></asp:TextBox>
        </div>
        <div class="form-group">

            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th colspan="4">DETALLE DEL PEDIDO</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>
                            <label for="articulo">ARTICULO:&nbsp;&nbsp; </label>
                            &nbsp;<asp:DropDownList runat="server" ID="ddl_articulos" Height="33px" Width="134px"></asp:DropDownList>
                        </th>
                        <td>
                            <div>
                                <label for="cantidad">CANTIDAD</label>
                                <asp:TextBox type="text" ID="txt_cantidad" runat="server"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            <div class="form-check">
                                &nbsp;<asp:CheckBox ID="cb_importado" runat="server" Text="IMPORTADO"/>
                            </div>
                        </td>
                        <td>
                            <asp:Button ID="btnCrearUser" CssClass="btn btn-primary" Text="AGREGAR ARTICULO" runat="server" OnClick="" />
                        </td>
                    </tr>
                </tbody>
            </table>


            
        </div>
        <asp:Button ID="Button1" CssClass="btn btn-primary" Text="CREAR PEDIDO" runat="server" OnClick="crearPedido_click" />
    </form>

</asp:Content>
