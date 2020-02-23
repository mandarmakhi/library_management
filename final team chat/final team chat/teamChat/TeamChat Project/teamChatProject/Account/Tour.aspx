<%@ Page Title="" Language="C#" MasterPageFile="~/Account/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Tour.aspx.cs" Inherits="teamChatProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="dvContainer">
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: large; font-style: normal; color: #000000; font-weight: bold;" 
            align="center">
        teamChat</p>
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">teamChat is an online web application, made for group chatting perpose.
    </p>
    <br />
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: large; font-style: normal; color: #000000; font-weight: bold;" 
            align="center">
        How to use teamChat</p>
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">
        <asp:Image ID="Image2" runat="server" Height="20px" 
            ImageUrl="~/Images/box_green_bullet.fw.png" Width="20px" />
&nbsp;Click on the Join link on the Login Page, Register 
        yourself to obtain a username and password</p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">&nbsp;<asp:Image ID="Image3" runat="server" Height="20px" 
                ImageUrl="~/Images/box_green_bullet.fw.png" Width="20px" />
&nbsp;Go to login page and enter the right credentials click on Sign 
            In&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">&nbsp;<asp:Image ID="Image4" runat="server" Height="20px" 
                ImageUrl="~/Images/box_green_bullet.fw.png" Width="20px" />
&nbsp;After successfull login Home page will open. Join or create a 
            team to chat amongs the users.&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">
            <asp:Image ID="Image5" runat="server" Height="20px" 
                ImageUrl="~/Images/box_green_bullet.fw.png" Width="20px" />
&nbsp;You can navigate to links for Account, Dashboard and Profile 
            Page.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <hr />
            <p align="right" 
                
                style="font-style: normal; font-size: small; font-family: 'Kozuka Gothic Pr6N M'; font-weight: normal; color: #919191;">
                Brought to you by teamChat&nbsp;&nbsp;&nbsp;
                <a href="Tour.aspx" style="text-decoration: none; color: #333333;">Take a Tour</a>&nbsp;&nbsp;&nbsp;
                <a href="Login.aspx" style="text-decoration: none; color: #333333;">Login</a>&nbsp;&nbsp;&nbsp;
                <a href="Join.aspx" style="text-decoration: none; color: #333333;">+ Join Now</a>&nbsp;&nbsp;&nbsp;
                <a href="About.aspx" style="text-decoration: none; color: #333333;">About</a>
            </p><br /><br /><br /><br /><br />
            <asp:Image ID="imgIcon" runat="server" AlternateText="imgIcon" 
            ImageAlign="Right" ImageUrl="~/Images/icon.png" Height="125px" Width="125px" />
</div>
</asp:Content>
