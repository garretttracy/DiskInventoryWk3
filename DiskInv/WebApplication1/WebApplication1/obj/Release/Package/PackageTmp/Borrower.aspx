<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borrower.aspx.cs" Inherits="WebApplication1.Borrower" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--Textbox for Borrower's first name--%>
    First Name:<asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="138px"></asp:TextBox>
   <%--Validator(s)--%>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter a name!"></asp:RequiredFieldValidator>
<br />
    <%--Textbox for Borrower's last name--%>
Last Name:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <%--Validator(s)--%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Your last name, please!"></asp:RequiredFieldValidator>
<br />
    <%--Textbox for phone number--%>
Phone Number:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <%--Validator(s)--%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone number is also required!"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="A valid phone number is required!" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
<br />
    <%--Submit Button--%>
<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
<br />
    <%--label to display confirmation messsage--%>
<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
&nbsp;
   
</asp:Content>
