<%@ Page Language="VB" AutoEventWireup="false" CodeFile="main_page.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            My Home Page</h1>
    
    </div>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            You are not logged in. Click the Login link to sign in.
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Register.aspx">Register</asp:HyperLink>
            &nbsp;
        </AnonymousTemplate>
        <LoggedInTemplate>
            Welcome
            <asp:LoginName ID="LoginName1" runat="server" /> !
        </LoggedInTemplate>
    </asp:LoginView>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="Members-Only/Default.aspx">Members-only page</asp:HyperLink>
    </form>
</body>
</html>
