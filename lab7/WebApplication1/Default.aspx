<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>

    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
     
      
     
    </p>
    <p>  <asp:Label ID="Label1" runat="server" Text="ЭУ SiteMapPath " 
            BackColor="#d5dae0" BorderColor="#d4dae6" Font-Bold="True" Font-Size="Small" 
            ForeColor="#000066"></asp:Label> </p>
  <asp:SiteMapPath ID="SiteMapPath2" runat="server" 
            RenderCurrentNodeAsLink="True">
        </asp:SiteMapPath>
         <p>  <asp:Label ID="Label2" runat="server" Text="ЭУ TreeView " 
            BackColor="#d5dae0" BorderColor="#3366CC" Font-Bold="True" Font-Size="Small" 
            ForeColor="#000066"></asp:Label> </p>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" 
        ShowStartingNode="False" />
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" 
        onselectednodechanged="TreeView1_SelectedNodeChanged">
    </asp:TreeView>
      <p>  <asp:Label ID="Label3" runat="server" Text="ЭУ Menu " 
            BackColor="#d5dae0" BorderColor="#3366CC" Font-Bold="True" Font-Size="Small" 
            ForeColor="#000066"></asp:Label> </p>
    <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" 
        onmenuitemclick="Menu1_MenuItemClick">
    </asp:Menu>
    </asp:Content>

