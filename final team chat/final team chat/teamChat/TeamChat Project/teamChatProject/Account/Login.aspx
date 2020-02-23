<%@ Page Title="" Language="C#" MasterPageFile="~/Account/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="teamChatProject.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btn
        {}
    </style>
    <script language="javascript" type="text/javascript">
        
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="dvContainer">
    <div id="dvImage" style="float: left; height: 500px;">
        <img alt="imgTeam" src="../Images/team large.png" 
            style="margin-top: 100px; margin-left: 50px"/>
            <p style="font-family: 'Kozuka Gothic Pro R'; font-size: x-large; color: #08659F; margin-left: 93px;">
                create.connect.chat
            </p>
    </div>
    <div id="dvLoginArea" style="float: right;">
        <table style="margin-top: 200px; margin-right: 200px; font-family: 'Kozuka Gothic Pro M'; font-size: medium; color:#333333;">
            <tr>
                <td>
                    User Name
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" BorderColor="#497825" 
                        BorderStyle="Solid" BorderWidth="1px" Font-Size="Medium" Height="35px" 
                        Width="200px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name Required" ControlToValidate="txtUserName" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" BorderColor="#497825" 
                        BorderStyle="Solid" BorderWidth="1px" Font-Size="Medium" Height="35px" 
                        TextMode="Password" Width="200px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPassword" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSignIn" runat="server" BackColor="#497825" 
            BorderColor="#497825" BorderStyle="None" Font-Bold="False" Font-Size="Large" 
            ForeColor="White" Height="35px" onclick="btnSignIn_Click" Text="Sign In" 
            Width="200px" />
&nbsp;<p style="font-family: 'Kozuka Gothic Pro EL'; font-size: small; text-decoration: none; color: #C0C0C0;">
            <a href="PasswordRecovery.aspx" 
                    style="margin-left: 100px; text-decoration: none; color: #C0C0C0;">Forget Password? recover here !
                <asp:Label ID="Label5" runat="server" Font-Names="Tahoma" Font-Size="Large" 
                ForeColor="#FF6600"></asp:Label>
                </a>
            </p>
        <hr />
            <p align="right" 
                
                style="font-style: normal; font-size: small; font-family: 'Kozuka Gothic Pr6N M'; font-weight: normal; color: #919191;">
                Brought to you by teamChat&nbsp;&nbsp;&nbsp;
                <a href="Tour.aspx" style="text-decoration: none; color: #333333;">Take a Tour</a>&nbsp;&nbsp;&nbsp;
                <a href="Login.aspx" style="text-decoration: none; color: #333333;">Login</a>&nbsp;&nbsp;&nbsp;
                <a href="Join.aspx" style="text-decoration: none; color: #333333;">+ Join Now</a>&nbsp;&nbsp;&nbsp;
                <a href="About.aspx" style="text-decoration: none; color: #333333;">About</a>
                
            </p><br /><br /><br />
            <asp:Image ID="imgIcon" runat="server" AlternateText="imgIcon" 
            ImageAlign="Right" ImageUrl="~/Images/icon.png" Height="125px" Width="125px" />
        </div>
</div><!--dvContainer-->

</asp:Content>