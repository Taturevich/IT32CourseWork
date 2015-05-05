<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CourseWork._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    &nbsp;<div style="height: 31px">
        <asp:Button ID="Button2" runat="server" Height="42px" OnClick="Button2_Click" Text="Операции над продукцией" Width="191px" />
        <asp:Button ID="Button3" runat="server" Height="43px" Text="Продукция" Width="190px" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Height="43px" Text="Предприятия" Width="160px" OnClick="Button4_Click" />
        <asp:Button ID="Button5" runat="server" Height="42px" Text="Сотрудники" Width="161px" />
        <asp:Button ID="Button6" runat="server" Height="41px" Text="Должности" Width="160px" OnClick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" Height="42px" Text="Послужные списки" Width="160px" OnClick="Button7_Click" />
    </div>

</asp:Content>
