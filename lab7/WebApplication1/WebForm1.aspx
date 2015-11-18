<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/stud1.mdb" SelectCommand="SELECT * FROM [Students]"></asp:AccessDataSource>

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" DataKeyNames="КодС" DataSourceID="AccessDataSource1" 
        GridLines="Horizontal" Width="200px">
        <EditItemTemplate>
            ФИО:
            <asp:TextBox ID="ФИОTextBox" runat="server" Text='<%# Bind("ФИО") %>' />
            <br />
            КодГ:
            <asp:TextBox ID="КодГTextBox" runat="server" Text='<%# Bind("КодГ") %>' />
            <br />
            КодС:
            <asp:Label ID="КодСLabel1" runat="server" Text='<%# Eval("КодС") %>' />
            <br />
            Возраст:
            <asp:TextBox ID="ВозрастTextBox" runat="server" Text='<%# Bind("Возраст") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            ФИО:
            <asp:TextBox ID="ФИОTextBox" runat="server" Text='<%# Bind("ФИО") %>' />
            <br />
            КодГ:
            <asp:TextBox ID="КодГTextBox" runat="server" Text='<%# Bind("КодГ") %>' />
            <br />
            КодС:
            <asp:TextBox ID="КодСTextBox" runat="server" Text='<%# Bind("КодС") %>' />
            <br />
            Возраст:
            <asp:TextBox ID="ВозрастTextBox" runat="server" Text='<%# Bind("Возраст") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ФИО:
            <asp:Label ID="ФИОLabel" runat="server" Text='<%# Bind("ФИО") %>' />
            <br />
            КодГ:
            <asp:Label ID="КодГLabel" runat="server" Text='<%# Bind("КодГ") %>' />
            <br />
            КодС:
            <asp:Label ID="КодСLabel" runat="server" Text='<%# Eval("КодС") %>' />
            <br />
            Возраст:
            <asp:Label ID="ВозрастLabel" runat="server" Text='<%# Bind("Возраст") %>' />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#c385d6" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#bdc93e" ForeColor="#333333" />
    </asp:FormView>
    <!--Заходите еще, <asp:LoginName ID="FCLoginName" Runat="server" />-->
    <br />
    <p>  <asp:Label ID="Label1" runat="server" Text="ЭУ SiteMapPath " 
            BackColor="#d5dae0" BorderColor="#3366CC" Font-Bold="True" Font-Size="Small" 
            ForeColor="#000066"></asp:Label> </p>
    <asp:SiteMapPath ID="SiteMapPath2" runat="server" 
        RenderCurrentNodeAsLink="True">
    </asp:SiteMapPath>
</asp:Content>


