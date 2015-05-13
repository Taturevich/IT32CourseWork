<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NewCourseWork.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_должности" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Код_должности" HeaderText="Код_должности" InsertVisible="False" ReadOnly="True" SortExpression="Код_должности" />
        <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString6 %>" SelectCommand="SELECT * FROM [Должности]"></asp:SqlDataSource>
</asp:Content>
