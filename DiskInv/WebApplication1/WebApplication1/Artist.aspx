<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
       ARTISTS</h2>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Artist_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Artist_IDLabel" runat="server" Text='<%# Eval("Artist_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_fnameLabel" runat="server" Text='<%# Eval("Artist_fname") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_lnameLabel" runat="server" Text='<%# Eval("Artist_lname") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_typeLabel" runat="server" Text='<%# Eval("Artist_type") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="Artist_IDLabel1" runat="server" Text='<%# Eval("Artist_ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Artist_fnameTextBox" runat="server" Text='<%# Bind("Artist_fname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Artist_lnameTextBox" runat="server" Text='<%# Bind("Artist_lname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Artist_typeTextBox" runat="server" Text='<%# Bind("Artist_type") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="Artist_fnameTextBox" runat="server" Text='<%# Bind("Artist_fname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Artist_lnameTextBox" runat="server" Text='<%# Bind("Artist_lname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Artist_typeTextBox" runat="server" Text='<%# Bind("Artist_type") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Artist_IDLabel" runat="server" Text='<%# Eval("Artist_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_fnameLabel" runat="server" Text='<%# Eval("Artist_fname") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_lnameLabel" runat="server" Text='<%# Eval("Artist_lname") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_typeLabel" runat="server" Text='<%# Eval("Artist_type") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server"></th>
                                <th runat="server">Artist_ID</th>
                                <th runat="server">Artist_fname</th>
                                <th runat="server">Artist_lname</th>
                                <th runat="server">Artist_type</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Artist_IDLabel" runat="server" Text='<%# Eval("Artist_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_fnameLabel" runat="server" Text='<%# Eval("Artist_fname") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_lnameLabel" runat="server" Text='<%# Eval("Artist_lname") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_typeLabel" runat="server" Text='<%# Eval("Artist_type") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
        </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:diskInventoryGTConnection %>" DeleteCommand="DELETE FROM [Artist] WHERE [Artist_ID] = @Artist_ID" InsertCommand="INSERT INTO [Artist] ([Artist_fname], [Artist_lname], [Artist_type]) VALUES (@Artist_fname, @Artist_lname, @Artist_type)" SelectCommand="SELECT * FROM [Artist] ORDER BY [Artist_lname], [Artist_fname]" UpdateCommand="UPDATE [Artist] SET [Artist_fname] = @Artist_fname, [Artist_lname] = @Artist_lname, [Artist_type] = @Artist_type WHERE [Artist_ID] = @Artist_ID">
        <DeleteParameters>
            <asp:Parameter Name="Artist_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Artist_fname" Type="String" />
            <asp:Parameter Name="Artist_lname" Type="String" />
            <asp:Parameter Name="Artist_type" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Artist_fname" Type="String" />
            <asp:Parameter Name="Artist_lname" Type="String" />
            <asp:Parameter Name="Artist_type" Type="String" />
            <asp:Parameter Name="Artist_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
