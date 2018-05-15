<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data.OleDb" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p id="demo">
    <asp:GridView ID="gvwExample" runat="server" AutoGenerateColumns=false>
    <columns>
    <asp:BoundField DataField="user" HeaderText="Users" />
    <asp:BoundField DataField="password" HeaderText="Pass" />
    </columns>
    </asp:GridView>
    <asp:label ID="lblStatus" runat="server"></asp:label>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.



<script language="VB" runat="server">
    Protected Sub Page_Load(ByVal Sender As Object, ByVal E As EventArgs) Handles MyBase.Load
        Dim cmd As System.Data.OleDb.OleDbCommand = New System.Data.OleDb.OleDbCommand("SELECT * FROM USERS;", New System.Data.OleDb.OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=F:\Personal\Projects\Programming\WebDev\Game_Project\Trader_DB.accdb"))
        Try
            cmd.Connection.Open()
            gvwExample.DataSource = cmd.ExecuteReader()
            gvwExample.DataBind()
            cmd.Connection.Close()
            cmd.Connection.Dispose()
        Catch ex As Exception

       
            lblStatus.Text = ex.Message
        End Try
    End Sub
    
</script>


  
    
    </p>

    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
</asp:Content>