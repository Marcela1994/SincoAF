<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="nuevo_pedido.aspx.cs" Inherits="SincoAF_project.nuevo_pedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="usuario">USUARIO</label>
                <select id="selec_usuario" class="form-control">
                    <option selected>SELECCIONE EL USUARIO</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label for="fecha">FECHA</label>
                <input type="text" class="form-control" id="ingreso_fecha" name="ingreso_fecha">
            </div>
        </div>
        <div class="form-group">
            <label for="concepto">CONCEPTO</label>
            <input type="text" class="form-control" id="ingreso_concepto" name="ingreso_concepto">
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
                            <label for="articulo">ARTICULO</label>
                            <select id="selec_articulo" class="form-control">
                                <option selected>SELECCIONE EL ARTICULO</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                            </select>
                        </th>
                        <td>
                            <div>
                                <label for="cantidad">CANTIDAD</label>
                                <input type="text" class="form-control" id="ingreso_cantidad">
                            </div>
                        </td>
                        <td>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="check_importado">
                                <label class="form-check-label" for="importado">
                                    IMPORTADO
                                </label>
                            </div>
                        </td>
                        <td>
                            <button type="button" class="btn btn-link">AGREGAR PRODUCTO</button>
                        </td>
                    </tr>
                </tbody>
            </table>


            
        </div>
        <button type="submit" class="btn btn-primary">GUARDAR PEDIDO</button>
    </form>

</asp:Content>
