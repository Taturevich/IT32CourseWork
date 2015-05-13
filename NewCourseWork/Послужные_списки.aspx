<%@ Page Title="Послужные_списки" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Должности.aspx.cs" Inherits="NewCourseWork.Должности" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_списка" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Код_списка" HeaderText="Код_списка" InsertVisible="False" ReadOnly="True" SortExpression="Код_списка" />
                <asp:BoundField DataField="Код_сотрудника" HeaderText="Код_сотрудника" SortExpression="Код_сотрудника" />
                <asp:BoundField DataField="Код_должности" HeaderText="Код_должности" SortExpression="Код_должности" />
                <asp:BoundField DataField="Дата_приема" HeaderText="Дата_приема" SortExpression="Дата_приема" />
                <asp:BoundField DataField="Дата_освобождения" HeaderText="Дата_освобождения" SortExpression="Дата_освобождения" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString2 %>" SelectCommand="SELECT * FROM [Послужные_списки]"></asp:SqlDataSource>
</asp:Content>
