<%@ Page Title="" Language="C#" MasterPageFile="~/Account/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="teamChatProject.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    </style>
    <script language="javascript" type="text/javascript">
        function validationLogin() {
            var user = document.frmLogin.txtUserName.value;
            var pass = document.frmLogin.txPassword.value;

            if (user == '') {
                document.getElementById('error').innerHTML = "Please Enter Username";
                return false;
            }

            if (pass == '') {
                document.getElementById('error').innerHTML = "Please Enter Password";
                return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="frmLogin" action="../Home.aspx" onsubmit="return validationLogin()" method="post">
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
                    <input id="txtUserName" type="text" 
                        
                        style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #666666; background-color: #FFFFFF; border: 1px outset #F25510; height: 35px; width: 200px;" />
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <input id="txtPassword" type="password" 
                        style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #666666; background-color: #FFFFFF; border: 1px outset #F25510; height: 35px; width: 200px; margin-top: 0px;" 
                        onclick="return Text2_onclick()"/>
                </td>
            </tr>
        </table>
        <input id="btnSignIn" type="button" value="Sign in" 
            
            
            style="border-style: none; margin-left: 88px; font-family: 'Kozuka Gothic Pr6N B'; font-size: small; font-weight: bold; color: #FFFFFF; background-color: #336600; height: 35px; width: 200px;" 
            onclick="return Button1_onclick()" />
            <p style="font-family: 'Kozuka Gothic Pro EL'; font-size: small; text-decoration: none; color: #C0C0C0;">
                <a href="PasswordRecovery.aspx" 
                    style="margin-left: 100px; text-decoration: none; color: #C0C0C0;">Forget Password? recover here !
                </a>
            </p>
        <hr />
            <p align="right" 
                
                style="font-style: normal; font-size: small; font-family: 'Kozuka Gothic Pr6N M'; font-weight: normal; color: #919191;">
                Brought to you by teamChat&nbsp;&nbsp;&nbsp;
                <a href="Tour.aspx" style="text-decoration: none; color: #919191;">Take a Tour</a>&nbsp;&nbsp;&nbsp;
                <a href="Join.aspx" style="text-decoration: none; color: #919191;">Join Now</a>
            </p><br /><br /><br />
            <asp:Image ID="imgIcon" runat="server" AlternateText="imgIcon" 
            ImageAlign="Right" ImageUrl="~/Images/icon.png" Height="125px" Width="125px" />
        </div>
</div><!--dvContainer-->
</form>
</asp:Content>