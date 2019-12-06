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
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="CD_ID" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button CausesValidation="false" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button CausesValidation="false" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
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
                    <asp:Label ID="CDstatusLabel" runat="server" Text='<%# Eval("CDstatus") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button CausesValidation="false" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button CausesValidation="false" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="CD_IDLabel1" runat="server" Text='<%# Eval("CD_ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CD_NameTextBox" runat="server" Text='<%# Bind("CD_Name") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="CD_NameTextBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name of the disk is required."></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="Release_DateTextBox" runat="server" Text='<%# Bind("Release_Date") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="Release_DateTextBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="The release date is required."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="Release_DateTextBox" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Try: mm/dd/YYYY, numbers only." ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
                    </td>

                <td>
                    <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
               <asp:RequiredFieldValidator ControlToValidate="GenreTextBox" ID="RequiredFieldValidator3" runat="server" ErrorMessage="The genre is required."></asp:RequiredFieldValidator>

                </td>
                <td>
                    <asp:TextBox ID="CDstatusTextBox" runat="server" Text='<%# Bind("CDstatus") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="CDstatusTextBox" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Is the CD available or not available?"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="CDstatusTextBox" ID="RegularExpressionValidator2" runat="server" ErrorMessage='Try: "available" OR "not available", all lowercase.' ValidationExpression="^(?:available|not available)"></asp:RegularExpressionValidator>
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
                    <asp:Button CausesValidation="false" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="CD_NameTextBox" runat="server" Text='<%# Bind("CD_Name") %>' />
                   <asp:RequiredFieldValidator ControlToValidate="CD_NameTextBox" ID="RequiredFieldValidator1a" runat="server" ErrorMessage="Name of the disk is required."></asp:RequiredFieldValidator>

                </td>
                <td>
                    <asp:TextBox ID="Release_DateTextBox" runat="server" Text='<%# Bind("Release_Date") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="Release_DateTextBox" ID="RequiredFieldValidator2a" runat="server" ErrorMessage="The release date is required."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="Release_DateTextBox" ID="RegularExpressionValidator1a" runat="server" ErrorMessage="Try: mm/dd/YYYY, numbers only." ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
                    
                </td>
                <td>
                    <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
                   <asp:RequiredFieldValidator ControlToValidate="GenreTextBox" ID="RequiredFieldValidator3a" runat="server" ErrorMessage="The genre is required."></asp:RequiredFieldValidator>

                </td>
                <td>
                    <asp:TextBox ID="CDstatusTextBox" runat="server" Text='<%# Bind("CDstatus") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="CDstatusTextBox" ID="RequiredFieldValidator4a" runat="server" ErrorMessage="Is the CD available or not available?"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="CDstatusTextBox" ID="RegularExpressionValidator2a" runat="server" ErrorMessage='Try: "available" OR "not available", all lowercase.' ValidationExpression="^(?:available|not available)"></asp:RegularExpressionValidator>
                
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button CausesValidation="false" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button CausesValidation="false" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
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
                    <asp:Label ID="CDstatusLabel" runat="server" Text='<%# Eval("CDstatus") %>' />
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
                                <th runat="server">CD_ID</th>
                                <th runat="server">CD_Name</th>
                                <th runat="server">Release_Date</th>
                                <th runat="server">Genre</th>
                                <th runat="server">CDstatus</th>
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
                    <asp:Button CausesValidation="false" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="CD_NameLabel" runat="server" Text='<%# Eval("CD_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Release_DateLabel" runat="server" Text='<%# Eval("Release_Date") %>' />
                </td>
                <td>
                    <asp:label id="GenreLabel" runat="server" text='<%# Eval("Genre") %>' />
                </td>
                <td>
                    <asp:Label ID="CDstatusLabel" runat="server" Text='<%# Eval("CDstatus") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:diskInventoryGTConnection %>" DeleteCommand="DELETE FROM [CD] WHERE [CD_ID] = @CD_ID" InsertCommand="INSERT INTO [CD] ([CD_Name], [Release_Date], [Genre], [CDstatus]) VALUES (@CD_Name, @Release_Date, @Genre, @CDstatus)" SelectCommand="SELECT * FROM [CD] ORDER BY [CD_ID]" UpdateCommand="UPDATE [CD] SET [CD_Name] = @CD_Name, [Release_Date] = @Release_Date, [Genre] = @Genre, [CDstatus] = @CDstatus WHERE [CD_ID] = @CD_ID">
         <DeleteParameters>
             <asp:Parameter Name="CD_ID" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="CD_Name" Type="String" />
             <asp:Parameter DbType="Date" Name="Release_Date" />
             <asp:Parameter Name="Genre" Type="String" />
             <asp:Parameter Name="CDstatus" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="CD_Name" Type="String" />
             <asp:Parameter DbType="Date" Name="Release_Date" />
             <asp:Parameter Name="Genre" Type="String" />
             <asp:Parameter Name="CDstatus" Type="String" />
             <asp:Parameter Name="CD_ID" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
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
