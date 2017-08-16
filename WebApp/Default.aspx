<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paginacion Gridview linq</title>
    <link href="Recursos/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class ="container">
        <h2>
            <asp:Label Text="text" runat="server" ID="lblTitulo">paginacion</asp:Label>
        </h2>
        <div class ="navbar-form navbar-left" role="search">
            <div class ="form-group">
                 <asp:TextBox runat="server" type = "text" Cssclass ="form-control" ID="txtDesc" placeholder="Descripcion">paginacion</asp:TextBox>
            </div>
            <asp:Button ID="btnBuscar" Cssclass ="form-control" Text="Buscar" runat="server"></asp:Button>
        </div>
        <div class ="table-responsive">
            <asp:GridView ID="gdvLista" Cssclass ="table table-bordered" runat="server" AutoGenerateColumns ="false" PageSize = "5" AllowPaging ="true" AllowCustomPaging ="true"</asp:GridView>

        </div>  
    </div>
    </form>
</body>
</html>
