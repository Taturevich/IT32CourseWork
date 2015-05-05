<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Продукция.aspx.cs" Inherits="CourseWork.Продукция" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


table {
  max-width: 100%;
  background-color: transparent;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

*,
*:before,
*:after {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}

  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    box-shadow: none !important;
  }
  
th {
  text-align: left;
}

a {
  color: #428bca;
  text-decoration: none;
}

  a,
  a:visited {
    text-decoration: underline;
  }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Код_продукции" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Код_продукции" HeaderText="Код_продукции" InsertVisible="False" ReadOnly="True" SortExpression="Код_продукции" />
            <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
            <asp:BoundField DataField="ГОСТ" HeaderText="ГОСТ" SortExpression="ГОСТ" />
            <asp:BoundField DataField="Характеристики" HeaderText="Характеристики" SortExpression="Характеристики" />
            <asp:BoundField DataField="Единицы_измерения_вида" HeaderText="Единицы_измерения_вида" SortExpression="Единицы_измерения_вида" />
        </Columns>
    </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString %>" SelectCommand="SELECT * FROM [Продукция]"></asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
