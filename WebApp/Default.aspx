<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paginacion Gridview linq</title>
    <link href="Recursos/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Recursos/style/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class ="container">
        <h2>
            <asp:Label Text="text" runat="server" ID="lblTitulo">paginacion</asp:Label>
        </h2>
        <div class ="navbar-form navbar-left" role="search">
            <div class ="form-group">
                 <asp:TextBox ID="txtDesc" type="text" Cssclass ="form-control"  placeholder="Descripcion" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnBuscar" Cssclass ="form-control" Text="Buscar" runat="server" OnClick="btnBuscar_Click"></asp:Button>
        </div>
        <div class ="table-responsive">
            <asp:GridView ID="gdvLista" Cssclass ="table table-bordered" runat="server" AutoGenerateColumns ="false" PageSize = "5" AllowPaging ="true" AllowCustomPaging ="true" OnPageIndexChanging="gdvLista_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="CODIGO" />
                    <asp:BoundField DataField="ProductName" HeaderText="DESCRIPCION" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="PRECIO" />
                    <asp:BoundField DataField="UnitsInStock" HeaderText="STOCK" />
                </Columns>
                <PagerSettings Mode="NumericFirstLast" PageButtonCount="8" FirstPageText="Primero" LastPageText="Ultimo" />
                <PagerStyle CssClass="pagination-ys" HorizontalAlign="Center" />
            </asp:GridView>
        </div>  
    </div>
    </form>
</body>
</html>
