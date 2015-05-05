<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Операции над продукцией.aspx.cs" Inherits="CourseWork.Операции_над_продукцией" %>

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
    
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Код_операции" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Код_операции" HeaderText="Код_операции" InsertVisible="False" ReadOnly="True" SortExpression="Код_операции" />
            <asp:BoundField DataField="Код_предприятия" HeaderText="Код_предприятия" SortExpression="Код_предприятия" />
            <asp:BoundField DataField="Код_продукции" HeaderText="Код_продукции" SortExpression="Код_продукции" />
            <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
            <asp:BoundField DataField="Квартал" HeaderText="Квартал" SortExpression="Квартал" />
            <asp:BoundField DataField="Год" HeaderText="Год" SortExpression="Год" />
            <asp:BoundField DataField="План" HeaderText="План" SortExpression="План" />
            <asp:BoundField DataField="Объем_выпуска" HeaderText="Объем_выпуска" SortExpression="Объем_выпуска" />
            <asp:BoundField DataField="Объем_реализации" HeaderText="Объем_реализации" SortExpression="Объем_реализации" />
        </Columns>
    </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString %>" SelectCommand="SELECT * FROM [Операции_над_продукцией]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
