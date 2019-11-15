<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="diskEntry.aspx.cs" Inherits="WebApplication1.diskEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">     <asp:Label ID="Label1" runat="server" Text="Name of the disk:"></asp:Label>
    <%--Textbox for CD // disk name--%>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <%--Validator(s)--%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>
    <br />
    <%--Textbox for release date--%>
    <asp:Label ID="Label2" runat="server" Text="Release date:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <%--Validator(s)--%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[0-9m]{1,2}/[0-9d]{1,2}/[0-9y]{4}$" ErrorMessage="Please enter valid date!" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
    <br />
    <%--Drop down list for genre--%>
    <asp:Label ID="Label3" runat="server" Text="Genre:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Industrial</asp:ListItem>
        <asp:ListItem>Pop</asp:ListItem>
        <asp:ListItem>Ambient</asp:ListItem>
        <asp:ListItem>Noise</asp:ListItem>
        <asp:ListItem>House</asp:ListItem>
        <asp:ListItem>Funk</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <%--Submit button --%>
    <asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click"/>
    <br />
    <%--Displays Confirmation message--%>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
&nbsp;
</asp:Content>
