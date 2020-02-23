<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="teamChatProject.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 693px;
        }
        .style2
        {
            width: 326px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p align="center" style="font-family: 'Kozuka Gothic Pro B'; color: #000000; font-size: large; text-decoration: underline;">
        Admin&#39;s Message.
    </p>
    <div>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="sdsAdminPost" Width="500px" BorderStyle="None" 
            Font-Names="Arial" Font-Size="Large" ForeColor="Gray" Height="200px" 
            HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="AdminPost" HeaderText="AdminPost" 
                SortExpression="AdminPost" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sdsAdminPost" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tblAdminPost]"></asp:SqlDataSource>
    </div><br /><br />
    <p align="center" 
        
        
        style="font-family: 'Kozuka Gothic Pro B'; color: #000000; font-size: large; text-decoration: underline;">
        teamChat members Status
    </p>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="sdsPost" Height="200px" HorizontalAlign="Center" 
            Width="500px" Font-Names="Tahoma" Font-Size="Medium" ForeColor="#999999">
            <Columns>
                <asp:BoundField DataField="user" HeaderText="user" SortExpression="user" />
                <asp:BoundField DataField="post" HeaderText="post" SortExpression="post" />
            </Columns>
            <HeaderStyle Width="100%" />
        </asp:GridView>
        <asp:SqlDataSource ID="sdsPost" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [tblPosts]"></asp:SqlDataSource>
    </div>
    <asp:Image ID="imgIcon" runat="server" AlternateText="imgIcon" 
            ImageAlign="Right" ImageUrl="~/Images/icon.png" Height="60px" 
        Width="60px" />
    <p align="right" 
                
                style="font-style: normal; font-size: small; font-family: 'Kozuka Gothic Pr6N M'; font-weight: normal; color: #919191;">
                Brought to you by teamChat
            </p>
</asp:Content>
