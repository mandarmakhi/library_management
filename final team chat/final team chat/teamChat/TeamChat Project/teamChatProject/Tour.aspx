<%@ Page Title="" Language="C#" MasterPageFile="~/Account/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Tour.aspx.cs" Inherits="teamChatProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="dvContainer">
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: large; font-style: normal; color: #000000; font-weight: bold;" 
            align="center">
    About &quot;teamChat&quot; website</p>
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">teamChat is an online web application, made for group(say team) chatting perpose.
    </p>
    <br />
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: large; font-style: normal; color: #000000; font-weight: bold;" 
            align="center">
        How to you &quot;teamChat&quot; Application</p>
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">Using teamChat is no more harder then using a social websites</p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">Just register yourself as a team member and obtain your correct 
            credentials</p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">Set up your profile and start chatting in a user friendly 
            interface after login</p>
        <hr />
            <p align="right" 
                
                style="font-style: normal; font-size: small; font-family: 'Kozuka Gothic Pr6N M'; font-weight: normal; color: #919191;">
                Brought to you by teamChat&nbsp;&nbsp;&nbsp;
                <a href="Tour.aspx" style="text-decoration: none; color: #919191;">Take a Tour</a>&nbsp;&nbsp;&nbsp;
                <a href="Join.aspx" style="text-decoration: none; color: #919191;">Join Now</a>
            </p><br /><br /><br /><br /><br />
            <asp:Image ID="imgIcon" runat="server" AlternateText="imgIcon" 
            ImageAlign="Right" ImageUrl="~/Images/icon.png" Height="125px" Width="125px" />
</div>
</asp:Content>
