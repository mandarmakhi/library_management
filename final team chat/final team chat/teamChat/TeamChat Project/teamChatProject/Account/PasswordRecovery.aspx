<%@ Page Title="" Language="C#" MasterPageFile="~/Account/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="teamChatProject.AccountControls.PasswordRecovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" action="Login.aspx">
    <br />
    <p align="center" 
        
        
        style="font-family: 'Kozuka Gothic Pro B'; color: #000000; font-size: medium; ">
        Summit Email Address, Application server will send your password on your Mailing address.
    </p>
    <table style="font-family: 'Kozuka Gothic Pro M'; font-size: medium; color:#333333;">
            <tr>
                <td>
                    Email Address
                </td>
                <td>
                    &nbsp;<asp:TextBox ID="txtUserEmail" runat="server" BackColor="White" 
                        BorderColor="#0099FF" BorderStyle="Solid" BorderWidth="1px" Font-Size="Medium" 
                        ForeColor="#0099FF" Height="30px" 
                         Width="300px"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ErrorMessage="Please provide a valid email address" 
                        ControlToValidate="txtUserEmail" ForeColor="#FF6600" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:CustomValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please provide a email address" 
                        ControlToValidate="txtUserEmail" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                </td>
            </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnConfirm" runat="server" BackColor="#0066CC" 
        BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" 
        Height="35px" Text="Confirm" Width="200px" onclick="btnConfirm_Click" />
    <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" Font-Size="Large" 
        ForeColor="#FF9933"></asp:Label>
&nbsp;<hr />
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
            </form>
</asp:Content>
