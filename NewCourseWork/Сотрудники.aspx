<%@ Page Title="Сотрудники" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Должности.aspx.cs" Inherits="NewCourseWork.Должности" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_сотрудника" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Код_сотрудника" HeaderText="Код_сотрудника" InsertVisible="False" ReadOnly="True" SortExpression="Код_сотрудника" />
                <asp:BoundField DataField="Фамилия" HeaderText="Фамилия" SortExpression="Фамилия" />
                <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
                <asp:BoundField DataField="Отчество" HeaderText="Отчество" SortExpression="Отчество" />
                <asp:BoundField DataField="Код_предприятия" HeaderText="Код_предприятия" SortExpression="Код_предприятия" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString5 %>" SelectCommand="SELECT * FROM [Сотрудники]"></asp:SqlDataSource>
</asp:Content>
