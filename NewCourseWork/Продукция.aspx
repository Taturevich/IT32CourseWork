<%@ Page Title="Продукция" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Должности.aspx.cs" Inherits="NewCourseWork.Должности" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_продукции" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Код_продукции" HeaderText="Код_продукции" InsertVisible="False" ReadOnly="True" SortExpression="Код_продукции" />
                <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
                <asp:BoundField DataField="ГОСТ" HeaderText="ГОСТ" SortExpression="ГОСТ" />
                <asp:BoundField DataField="Характеристики" HeaderText="Характеристики" SortExpression="Характеристики" />
                <asp:BoundField DataField="Единицы_измерения_вида" HeaderText="Единицы_измерения_вида" SortExpression="Единицы_измерения_вида" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходConnectionString4 %>" SelectCommand="SELECT * FROM [Продукция]"></asp:SqlDataSource>
</asp:Content>
