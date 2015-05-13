<%@ Page Title="Операции_над_продукцией" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Должности.aspx.cs" Inherits="NewCourseWork.Должности" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приходф_предприятия_ConnectionString7 %>" SelectCommand="SELECT [Код_предприятия], [Наименование] FROM [Предприятия]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Расход_приход_продукция_ConnectionString7 %>" SelectCommand="SELECT [Код_продукции], [Наименование] FROM [Продукция]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_операции" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Код_операции" HeaderText="Код_операции" InsertVisible="False" ReadOnly="True" SortExpression="Код_операции" />
                <asp:TemplateField HeaderText="Код_предприятия" SortExpression="Код_предприятия">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Код_предприятия") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Наименование" DataValueField="Код_продукции" SelectedIndex='<%# Bind("Код_предприятия") %>' SelectedValue='<%# Bind("Код_предприятия") %>'>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Код_продукции" SortExpression="Код_продукции">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Код_продукции") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Наименование" DataValueField="Код_продукции">
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
                <asp:BoundField DataField="Квартал" HeaderText="Квартал" SortExpression="Квартал" />
                <asp:BoundField DataField="Год" HeaderText="Год" SortExpression="Год" />
                <asp:BoundField DataField="План" HeaderText="План" SortExpression="План" />
                <asp:BoundField DataField="Объем_выпуска" HeaderText="Объем_выпуска" SortExpression="Объем_выпуска" />
                <asp:BoundField DataField="Объем_реализации" HeaderText="Объем_реализации" SortExpression="Объем_реализации" />
            </Columns>
        </asp:GridView>
        </asp:Content>
