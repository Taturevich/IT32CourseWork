<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Сотрудники.aspx.cs" Inherits="CourseWork.Сотрудники" %>

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
    
    <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_сотрудника" DataSourceID="SqlDataSource5" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Код_сотрудника" HeaderText="Код_сотрудника" InsertVisible="False" ReadOnly="True" SortExpression="Код_сотрудника" />
            <asp:BoundField DataField="Фамилия" HeaderText="Фамилия" SortExpression="Фамилия" />
            <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
            <asp:BoundField DataField="Отчество" HeaderText="Отчество" SortExpression="Отчество" />
            <asp:BoundField DataField="Код_предприятия" HeaderText="Код_предприятия" SortExpression="Код_предприятия" />
        </Columns>
    </asp:GridView>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString %>" SelectCommand="SELECT * FROM [Сотрудники]"></asp:SqlDataSource>
    </form>
</body>
</html>
