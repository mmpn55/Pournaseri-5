<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="Pournaseri_5.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Descipt" HeaderText="Descipt" SortExpression="Descipt" />
            <asp:BoundField DataField="Pice" HeaderText="Pice" SortExpression="Pice" />
            <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />
            <asp:ImageField DataImageUrlField="ImagePath">
                <ItemStyle Height="100px" Width="100px" />
            </asp:ImageField>
        </Columns>
</asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>

</asp:Content>
