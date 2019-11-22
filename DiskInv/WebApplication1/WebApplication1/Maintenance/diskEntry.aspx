<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="diskEntry.aspx.cs" Inherits="WebApplication1.diskEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">     
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
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="CD_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button CausesValidation="false" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="CD_NameLabel" runat="server" Text='<%# Eval("CD_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Release_DateLabel" runat="server" Text='<%# Eval("Release_Date") %>' />
                </td>
                <td>
                    <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                </td>
                <td>
                    <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="False" />
                </td>
                <td>
                    <asp:TextBox ID="CD_NameTextBox" runat="server" Text='<%# Bind("CD_Name") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="CD_NameTextBox" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="Release_DateTextBox" runat="server" Text='<%# Bind("Release_Date") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="Release_DateTextBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ControlToValidate="Release_DateTextBox" ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" MaximumValue='DateTime.Now.Date.ToString("dd-MM-yyyy")' MinimumValue="01/01/1850"></asp:RangeValidator>                </td>
                <td>
                    <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="GenreTextBox" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                </td>
                <td>
                    <asp:Label ID="CD_IDLabel1" runat="server" Text='<%# Eval("CD_ID") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
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
                <td>
                    <asp:TextBox ID="CD_NameTextBox" runat="server" Text='<%# Bind("CD_Name") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="CD_NameTextBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="Release_DateTextBox" runat="server" Text='<%# Bind("Release_Date") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="Release_DateTextBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ControlToValidate="Release_DateTextBox" ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" MaximumValue='DateTime.Now.Date.ToString("dd-MM-yyyy")' MinimumValue="01/01/1850"></asp:RangeValidator>
                </td>
                <td>
                    <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="GenreTextBox" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
                <td>
<%--                    <asp:TextBox ID="CD_IDTextBox" runat="server" Text='<%# Bind("CD_ID") %>' />--%>
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button CausesValidation="false" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="CD_NameLabel" runat="server" Text='<%# Eval("CD_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Release_DateLabel" runat="server" Text='<%# Eval("Release_Date") %>' />
                </td>
                <td>
                    <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                </td>
                <td>
                    <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">CD_Name</th>
                                <th runat="server">Release_Date</th>
                                <th runat="server">Genre</th>
                                <th runat="server">CD_ID</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button CausesValidation="false" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="CD_NameLabel" runat="server" Text='<%# Eval("CD_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Release_DateLabel" runat="server" Text='<%# Eval("Release_Date") %>' />
                </td>
                <td>
                    <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                </td>
                <td>
                    <asp:label id="cd_idlabel" runat="server" text='<%# Eval("cd_id") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:diskInventoryGTConnection %>" 
        DeleteCommand="EXECUTE sp_DelCD @CD_ID" 
        InsertCommand="EXECUTE sp_InsCD @CD_Name, @Release_Date, @Genre" 
        SelectCommand="SELECT [CD_Name], [Release_Date], [Genre], [CD_ID] FROM [CD] ORDER BY [CD_Name]" 
        UpdateCommand="EXECUTE sp_UpdCD @CD_ID, @CD_Name, @Release_Date, @Genre">
        <DeleteParameters>
            <asp:Parameter Name="CD_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CD_Name" Type="String" />
            <asp:Parameter DbType="Date" Name="Release_Date" />
            <asp:Parameter Name="Genre" Type="String" />
<%--            <asp:Parameter Name="CD_ID" Type="Int32" />--%>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CD_Name" Type="String" />
            <asp:Parameter DbType="Date" Name="Release_Date" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="CD_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Name of the disk:"></asp:Label>
    <%--<%--Textbox for CD // disk name--%>
<%--    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
    <%--Validator(s)--%>
<%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>--%>
    <br />
    <%--Textbox for release date--%>
 <%--   <asp:Label ID="Label2" runat="server" Text="Release date:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>--%>
    <%--Validator(s)--%>
   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[0-9m]{1,2}/[0-9d]{1,2}/[0-9y]{4}$" ErrorMessage="Please enter valid date!" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
    <br />--%>
    <%--Drop down list for genre--%>
   <%-- <asp:Label ID="Label3" runat="server" Text="Genre:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Industrial</asp:ListItem>
        <asp:ListItem>Pop</asp:ListItem>
        <asp:ListItem>Ambient</asp:ListItem>
        <asp:ListItem>Noise</asp:ListItem>
        <asp:ListItem>House</asp:ListItem>
        <asp:ListItem>Funk</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>--%>
    <br />
    <%--Submit button --%>
<%--    <asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click"/>--%>
    <br />
    <%--Displays Confirmation message--%>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
&nbsp;
</asp:Content>
