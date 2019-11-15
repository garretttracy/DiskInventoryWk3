<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Artists.aspx.cs" Inherits="WebApplication1.Artists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--Textbox for Artist // Band name--%>
    <asp:Label ID="Label1" runat="server" Text="Artist's First Name OR the name of the band:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <%--Validator(s)--%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>
    <br />
    <%--Textbox for Artist's last name--%>
    <asp:Label ID="Label2" runat="server" Text="Artist's Last Name -- Leave Blank if this does not apply:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <%--Dropdown list for Solo // Band distinction--%>
    <asp:Label ID="Label3" runat="server" Text="Solo Artist // Band:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="Individual">Solo Artist</asp:ListItem>
        <asp:ListItem>Band</asp:ListItem>
    </asp:DropDownList>
    <br />
    <%--Submit Button--%>
    <asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click"/>
    <br />
    <%--Label to display confirmation message--%>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
&nbsp;
</asp:Content>
