<%@ Page Title="Предприятия" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Должности.aspx.cs" Inherits="NewCourseWork.Должности" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_предприятия" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Код_предприятия" HeaderText="Код_предприятия" InsertVisible="False" ReadOnly="True" SortExpression="Код_предприятия" />
                <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
                <asp:BoundField DataField="ФИО_Руководителя" HeaderText="ФИО_Руководителя" SortExpression="ФИО_Руководителя" />
                <asp:BoundField DataField="Вид_деятельности" HeaderText="Вид_деятельности" SortExpression="Вид_деятельности" />
                <asp:BoundField DataField="Форма_собственности" HeaderText="Форма_собственности" SortExpression="Форма_собственности" />
                <asp:BoundField DataField="Код_сотрудника" HeaderText="Код_сотрудника" SortExpression="Код_сотрудника" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString3 %>" SelectCommand="SELECT * FROM [Предприятия]"></asp:SqlDataSource>
</asp:Content>
