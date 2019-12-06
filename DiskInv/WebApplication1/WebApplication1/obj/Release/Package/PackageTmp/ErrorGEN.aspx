<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ErrorGEN.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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

    <div class="row">
        <div class="col-md-4">
            <h2>?</h2>
            <p>
!          <p>
?            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>ERROR: WE HAVE A NULL INPUT!!!!!</h2>
            <p>
---  ---
               <br />
          The data has not been successfully entered. Please navigate back to the correct menu and try again.      <p>
-------            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>?</h2>
            <p>
!            <p>
?            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>

