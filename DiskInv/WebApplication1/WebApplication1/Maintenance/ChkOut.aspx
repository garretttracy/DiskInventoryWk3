<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="ChkOut.aspx.cs" Inherits="WebApplication1.Maintenance.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" BackColor="#FF6600">This is a label</asp:Label>
    <br />
<br />
<br />
<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ddlsource1" DataTextField="CD_Name" DataValueField="CD_Name">
</asp:DropDownList>
<asp:SqlDataSource ID="ddlsource1" runat="server" ConnectionString="<%$ ConnectionStrings:diskInventoryGTConnection %>" SelectCommand="SELECT [CD_Name] FROM [CD] WHERE ([CDstatus] = @CDstatus) ORDER BY [CD_Name]">
    <SelectParameters>
        <asp:Parameter DefaultValue="available" Name="CDstatus" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ddlsource2" DataTextField="First_Name" DataValueField="Borrower_ID">
</asp:DropDownList>
<asp:SqlDataSource ID="ddlsource2" runat="server" ConnectionString="<%$ ConnectionStrings:diskInventoryGTConnection %>" SelectCommand="SELECT [First_Name], [Last_Name], [Borrower_ID] FROM [Borrower] ORDER BY [Last_Name], [First_Name]"></asp:SqlDataSource>
<br />
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
<br />
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </asp:Content>