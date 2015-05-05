<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Предприятия.aspx.cs" Inherits="CourseWork.Предприятия" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_предприятия" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Код_предприятия" HeaderText="Код_предприятия" InsertVisible="False" ReadOnly="True" SortExpression="Код_предприятия" />
                <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
                <asp:BoundField DataField="ФИО_Руководителя" HeaderText="ФИО_Руководителя" SortExpression="ФИО_Руководителя" />
                <asp:BoundField DataField="Вид_деятельности" HeaderText="Вид_деятельности" SortExpression="Вид_деятельности" />
                <asp:BoundField DataField="Форма_собственности" HeaderText="Форма_собственности" SortExpression="Форма_собственности" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString %>" SelectCommand="SELECT * FROM [Предприятия]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
