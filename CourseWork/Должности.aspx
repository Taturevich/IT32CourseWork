<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Должности.aspx.cs" Inherits="CourseWork.Должности" %>

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
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" Height="286px" Width="489px">
        <Columns>
            <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
            <asp:BoundField DataField="Фамилия" HeaderText="Фамилия" SortExpression="Фамилия" />
            <asp:BoundField DataField="Отчество" HeaderText="Отчество" SortExpression="Отчество" />
        </Columns>
    </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString %>" SelectCommand="SELECT * FROM [newView]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
