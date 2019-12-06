<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Error404.aspx.cs" Inherits="WebApplication1._Default" %>

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
            <h2>404</h2>
            <p>
404            <p>
404            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Borrowers</h2>
            <p>
                Users will be able to access certain borrower information as well as insert, update and more. (UNDER CONSTRUCTION)</p>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sed blandit sem. Vestibulum tempor non metus sed imperdiet. Pellentesque interdum consectetur accumsan. Pellentesque ornare facilisis tellus vitae rhoncus. Ut in efficitur justo. Nam volutpat pulvinar pellentesque. Proin id tempor ipsum. Donec malesuada justo diam, at feugiat elit pulvinar pretium. Phasellus rhoncus dolor non nunc ultricies, non rutrum magna malesuada. Nunc maximus nisi turpis, vulputate 
                mattis dolor euismod at. Sed dictum metus quis metus luctus, vitae aliquet eros tempus. Duis lobortis nisi et nunc sagittis convallis. Fusce volutpat lacus ipsum, sit amet auctor erat hendrerit nec. Praesent viverra, sapien cursus rhoncus vehicula, dolor dolor posuere lacus, eget bibendum felis arcu sit amet massa. Donec et ex laoreet, molestie lectus a, dignissim sapien.</p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Disks</h2>
            <p>
                A complete registry of Disks borrowed or not, possibly including associated artist information, as mentioned above, certain users will have access to various features of the data. (UNDER CONSTRUCTION)</p>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sed blandit sem. Vestibulum tempor non metus sed imperdiet. Pellentesque interdum consectetur accumsan. Pellentesque ornare facilisis tellus vitae rhoncus. Ut in efficitur justo. Nam volutpat pulvinar pellentesque. Proin id tempor ipsum. Donec malesuada justo diam, at feugiat elit pulvinar pretium. Phasellus rhoncus dolor non nunc ultricies, non rutrum magna malesuada. Nunc maximus nisi turpis, vulputate 
                mattis dolor euismod at. Sed dictum metus quis metus luctus, vitae aliquet eros tempus. Duis lobortis nisi et nunc sagittis convallis. Fusce volutpat lacus ipsum, sit amet auctor erat hendrerit nec. Praesent viverra, sapien cursus rhoncus vehicula, dolor dolor posuere lacus, eget bibendum felis arcu sit amet massa. Donec et ex laoreet, molestie lectus a, dignissim sapien.</p>
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>

