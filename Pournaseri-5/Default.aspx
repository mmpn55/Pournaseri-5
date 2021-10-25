<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pournaseri_5._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <br />
        Product Name:<asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
    </div>
        <div>
            <br />
        Product Detail:<asp:TextBox ID="TxtDetail" mode="multiline" runat="server"></asp:TextBox>
    </div>
    <div>
        <br />
        Product Price:<asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
    </div>

        <div>
            <br />
       Image: <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
    </div>
    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Add Product" />

</asp:Content>
