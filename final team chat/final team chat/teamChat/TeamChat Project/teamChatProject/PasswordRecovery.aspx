<%@ Page Title="" Language="C#" MasterPageFile="~/Account/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="teamChatProject.AccountControls.PasswordRecovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <p align="center" 
        
        
        style="font-family: 'Kozuka Gothic Pro B'; color: #000000; font-size: small; ">
        Summit Username, Application server will send your password on your Mailing address
    </p>
    <table style="font-family: 'Kozuka Gothic Pro M'; font-size: medium; color:#333333;">
            <tr>
                <td>
                    User Name
                </td>
                <td>
                    <input id="txtUserName" type="text" 
                        style="font-family: 'Kozuka Gothic Pro R'; font-size: medium; color: #666666; background-color: #FFFFFF; border: 1px outset #F25510" />
                </td>
            </tr>
    </table>
    <input id="btnSendUserName" type="button" value="Send" 
            
            style="border-style: none; margin-left: 88px; font-family: 'Kozuka Gothic Pr6N B'; font-size: small; font-weight: bold; color: #FFFFFF; background-color: #336600;" onclick="return Button1_onclick()" onclick="return Button1_onclick()" />
            <hr />
            <p align="right" 
                
                style="font-style: normal; font-size: small; font-family: 'Kozuka Gothic Pr6N M'; font-weight: normal; color: #919191;">
                Brought to you by teamChat&nbsp;&nbsp;&nbsp;
                <a href="Tour.aspx" style="text-decoration: none; color: #919191;">Take a Tour</a>&nbsp;&nbsp;&nbsp;
                <a href="Join.aspx" style="text-decoration: none; color: #919191;">Join Now</a>
            </p><br /><br /><br /><br /><br />
            <asp:Image ID="imgIcon" runat="server" AlternateText="imgIcon" 
            ImageAlign="Right" ImageUrl="~/Images/icon.png" Height="125px" Width="125px" />
</asp:Content>
