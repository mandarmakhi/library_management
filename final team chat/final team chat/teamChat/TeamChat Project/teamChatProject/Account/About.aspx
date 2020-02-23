<%@ Page Title="" Language="C#" MasterPageFile="~/Account/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="teamChatProject.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="dvContainer">
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: large; font-style: normal; color: #000000; font-weight: bold;" 
            align="center">
        About
        teamChat Application</p>
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">teamChat is an online web application, made for group chatting perpose.
    </p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">The application uses the following technoligies</p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">ASP.NET (FOR DYNAMIC PAGES) | C# (FOR CODE BEHIND FILE)</p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">AJAX (FOR PARTIAL UPDATE OF PAGES) | MS-SQL (FOR DATABASE)</p>
    <br />
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: large; font-style: normal; color: #000000; font-weight: bold;" 
            align="center">
        Credits</p>
    <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">
        Meenakshi Yadav Maam(for encouragement and guidance)</p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">Aalok Pandey( for design and project concepts)</p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">&nbsp;&nbsp;Meenakshi Maam(for code behind files)&nbsp;&nbsp; </p>
        <p style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #1E1E1E" 
            align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arundeep Thakur, 
            Meenakshi Maan(for documentation)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <hr />
            <p align="right" 
                
                style="font-style: normal; font-size: small; font-family: 'Kozuka Gothic Pr6N M'; font-weight: normal; color: #919191;">
                Designed and Devoloped by Vaibhav Waghmare&nbsp;&nbsp;&nbsp;
                <a href="Tour.aspx" style="text-decoration: none; color: #333333;">Take a Tour</a>&nbsp;&nbsp;&nbsp;
                <a href="Login.aspx" style="text-decoration: none; color: #333333;">Login</a>&nbsp;&nbsp;&nbsp;
                <a href="Join.aspx" style="text-decoration: none; color: #333333;">+ Join Now</a>&nbsp;&nbsp;&nbsp;
                <a href="About.aspx" style="text-decoration: none; color: #333333;">About</a>
            </p>
            <asp:Image ID="imgIcon" runat="server" AlternateText="imgIcon" 
            ImageAlign="Right" ImageUrl="~/Images/icon.png" Height="125px" Width="125px" />
</div>

</asp:Content>
