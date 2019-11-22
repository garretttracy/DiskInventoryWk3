<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Artists.aspx.cs" Inherits="WebApplication1.Artists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--Textbox for Artist // Band name--%>
          <%--MOD LOG
    Project started 11/8
    added flavor text to home page 11/8
    changed bootstrap and other css styles 11/8
    added placeholder pages and inputs 11/8
    added working navigation 11/8
    Added listviews to various pages 11/15
    added validation to inputs in listview 11/15
        added non sa user 11/15
        granted permissions to non sa user 11/15
        connected to database in web config 11/15
        added mod log 11/15

    Added authentication requirements 11/22
    Added Maintenance folder (to simplify authentication structure) 11/22
        Filled Maintenance folder with content pages 11/22
        Created Default Connection database 11/22
        Created connection to DefaultConnection database 11/22
        Changed login from diskApp1 to sa; same password 11/22
        added web.config to Maintenance folder 11/22
        Uncommented login/register code from site master page 11/22
           changed Causes Validation property on DeleteButton to false 11/22
    --%>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Artist_ID" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button CausesValidation="false" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="False" />
                </td>
                <td>
                    <asp:Label ID="Artist_IDLabel1" runat="server" Text='<%# Eval("Artist_ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Artist_fnameTextBox" runat="server" Text='<%# Bind("Artist_fname") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="Artist_fnameTextBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="Artist_lnameTextBox" runat="server" Text='<%# Bind("Artist_lname") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="Artist_lnameTextBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="Artist_typeTextBox" runat="server" Text='<%# Bind("Artist_type") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="Artist_typeTextBox" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
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
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CausesValidation="False" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="Artist_fnameTextBox" runat="server" Text='<%# Bind("Artist_fname") %>' />
                                        <asp:RequiredFieldValidator ControlToValidate="Artist_fnameTextBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                </td>
                <td>
                    <asp:TextBox ID="Artist_lnameTextBox" runat="server" Text='<%# Bind("Artist_lname") %>' />
                                        <asp:RequiredFieldValidator ControlToValidate="Artist_lnameTextBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                </td>
                <td>
                    <asp:TextBox ID="Artist_typeTextBox" runat="server" Text='<%# Bind("Artist_type") %>' />
                                        <asp:RequiredFieldValidator ControlToValidate="Artist_typeTextBox" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button CausesValidation="false" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                    <asp:Button CausesValidation="false" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:diskInventoryGTConnection %>" 
        DeleteCommand="EXECUTE sp_DelArtist @Artist_ID" 
        InsertCommand="EXECUTE sp_InsArtist @Artist_fname, @Artist_lname, @Artist_type" 
        SelectCommand="SELECT * FROM [Artist] ORDER BY [Artist_lname], [Artist_fname]" 
        UpdateCommand="EXECUTE sp_UpdArtist @Artist_ID, @Artist_fname, @Artist_lname, @Artist_type">
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
    <%--<asp:Label ID="Label1" runat="server" Text="Artist's First Name OR the name of the band:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
    <%--Validator(s)--%>
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>
    <br />--%>
    <%--Textbox for Artist's last name--%>
   <%-- <asp:Label ID="Label2" runat="server" Text="Artist's Last Name -- Leave Blank if this does not apply:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />--%>
    <%--Dropdown list for Solo // Band distinction--%>
    <%--<asp:Label ID="Label3" runat="server" Text="Solo Artist // Band:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="Individual">Solo Artist</asp:ListItem>
        <asp:ListItem>Band</asp:ListItem>
    </asp:DropDownList>
    <br />--%>
    <%--Submit Button--%>
    <%--<asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click"/>
    <br />--%>
    <%--Label to display confirmation message--%>
   <%-- <asp:Label ID="lblMsg" runat="server"></asp:Label>--%>
&nbsp;
</asp:Content>
