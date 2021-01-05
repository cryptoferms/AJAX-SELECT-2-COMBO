<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaInicial.aspx.cs" Inherits="AJAX_SELECT_2_COMBO.PaginaInicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select 2 </title>
    <script src="Scripts/jquery-1.7.js"></script>
    <script src="Scripts/jquery-1.7.min.js"></script>
    <script src="Scripts/select2.js"></script>
    <script src="Scripts/select2.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" />
    <script type="text/javascript">
       $(document).ready(function () {
           $('.ddl').select2({
               /*Caso precise esconder a barra de pesquisa use o código abaixo, propriedade para esconder a barra de busca da dropdownlist
               minimumResultsForSearch: -1
               */
           });
       });
   </script>
    <style type="text/css">
        .ddl {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Filtro para buscar usando o select 2</h1>
            <hr />
            Nome das Lojas :
            <asp:DropDownList ID="DropDownList1" OnLoad="Page_Load" runat="server" CssClass="ddl" Height="46px" Width="176px" AutoPostBack="True" DataTextField="Nome"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
