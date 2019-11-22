<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borrower.aspx.cs" Inherits="WebApplication1.Borrower" %>
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
    <%--Textbox for Borrower's first name--%>
<%--    First Name:<asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="138px"></asp:TextBox>--%>
   <%--Validator(s)--%>
<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter a name!"></asp:RequiredFieldValidator>--%>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Borrower_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button CausesValidation="false" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Borrower_IDLabel" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Borrower_Phone_NumberLabel" runat="server" Text='<%# Eval("Borrower_Phone_Number") %>' />
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
                    <asp:Label ID="Borrower_IDLabel1" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="First_NameTextBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("Last_Name") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="Last_NameTextBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="Borrower_Phone_NumberTextBox" runat="server" Text='<%# Bind("Borrower_Phone_Number") %>' />
                    <asp:RequiredFieldValidator ControlToValidate="Borrower_Phone_NumberTextBox" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ValidationExpression="[0-9]{3}-[0-9]{3}-[0-9]{4}$" ControlToValidate="Borrower_Phone_NumberTextBox" ID="RegularExpressionValidator" runat="server" ErrorMessage="Try ###-###-####"></asp:RegularExpressionValidator>
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
                    <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>' />
                                        <asp:RequiredFieldValidator ControlToValidate="First_NameTextBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

                </td>
                <td>
                    <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("Last_Name") %>' />
                                        <asp:RequiredFieldValidator ControlToValidate="Last_NameTextBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

                </td>
                <td>
                    <asp:TextBox ID="Borrower_Phone_NumberTextBox" runat="server" Text='<%# Bind("Borrower_Phone_Number") %>' />
               <asp:RequiredFieldValidator ControlToValidate="Borrower_Phone_NumberTextBox" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator  ControlToValidate="Borrower_Phone_NumberTextBox" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Try ###-###-####" ValidationExpression="[0-9]{3}-[0-9]{3}-[0-9]{4}$"></asp:RegularExpressionValidator>
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
                    <asp:Label ID="Borrower_IDLabel" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Borrower_Phone_NumberLabel" runat="server" Text='<%# Eval("Borrower_Phone_Number") %>' />
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
                                <th runat="server">Borrower_ID</th>
                                <th runat="server">First_Name</th>
                                <th runat="server">Last_Name</th>
                                <th runat="server">Borrower_Phone_Number</th>
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
                    <asp:Label ID="Borrower_IDLabel" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Borrower_Phone_NumberLabel" runat="server" Text='<%# Eval("Borrower_Phone_Number") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:diskInventoryGTConnection %>" 
        DeleteCommand="EXECUTE sp_DelBorrower @Borrower_ID" 
        InsertCommand="EXECUTE sp_InsBorrower @First_Name, @Last_Name, @Borrower_Phone_Number"
        SelectCommand="SELECT * FROM [Borrower] ORDER BY [Last_Name], [First_Name]" 
        UpdateCommand="EXECUTE sp_UpdBorrower @Borrower_ID, @First_Name, @Last_Name, @Borrower_Phone_Number">
        <DeleteParameters>
            <asp:Parameter Name="Borrower_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Borrower_Phone_Number" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Borrower_Phone_Number" Type="String" />
            <asp:Parameter Name="Borrower_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
    <%--Textbox for Borrower's last name--%>
<%--Last Name:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>--%>
    <%--Validator(s)--%>
<%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Your last name, please!"></asp:RequiredFieldValidator>--%>
<br />
    <%--Textbox for phone number--%>
<%--Phone Number:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>--%>
    <%--Validator(s)--%>
<%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone number is also required!"></asp:RequiredFieldValidator>--%>
<%--    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="A valid phone number is required!" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>--%>
<br />
    <%--Submit Button--%>
<%--<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />--%>
<br />
    <%--label to display confirmation messsage--%>
<%--<asp:Label ID="Label1" runat="server" Text=""></asp:Label>--%>
&nbsp;
   
</asp:Content>
