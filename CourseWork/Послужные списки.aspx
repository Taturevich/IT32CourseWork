<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Послужные списки.aspx.cs" Inherits="CourseWork.Послужные_списки" %>

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
    
    <asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_списка" DataSourceID="SqlDataSource1" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="Код_списка" HeaderText="Код_списка" InsertVisible="False" ReadOnly="True" SortExpression="Код_списка" />
            <asp:BoundField DataField="Код_сотрудника" HeaderText="Код_сотрудника" SortExpression="Код_сотрудника" />
            <asp:BoundField DataField="Код_должности" HeaderText="Код_должности" SortExpression="Код_должности" />
            <asp:BoundField DataField="Дата_приема" HeaderText="Дата_приема" SortExpression="Дата_приема" />
            <asp:BoundField DataField="Дата_освобождения" HeaderText="Дата_освобождения" SortExpression="Дата_освобождения" />
        </Columns>
    </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString %>" SelectCommand="SELECT * FROM [Послужные_списки]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
