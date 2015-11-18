<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" Theme="Theme1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        About
    </h2>
    <p>
        
      
       <asp:Image ID="Image1" runat="server" ImageUrl="x_026092dd.jpg" SkinID="MyImage" BorderColor="#6600CC"
        BorderStyle="Dotted" ImageAlign="left"></asp:Image>
      
    </p>
    <p>  <asp:Label ID="Label1" runat="server" Text="ЭУ SiteMapPath " 
            BackColor="#d5dae0" BorderColor="#3366CC" Font-Bold="True" Font-Size="Small" 
            ForeColor="#000066"></asp:Label> </p>
  <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>  
</asp:Content>
