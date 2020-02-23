<%@ Page Title="" Language="C#" MasterPageFile="~/Account/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Join.aspx.cs" Inherits="teamChatProject.Account.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="frmJoin" method="post" action="Login.aspx">
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
                    <asp:TextBox ID="txtUserName" runat="server" Height="36px" Width="200px" 
                        BackColor="White" BorderColor="#FF9933" BorderStyle="Solid" BorderWidth="1px" 
                        Font-Size="Medium" ForeColor="#333333"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter User Name" ControlToValidate="txtUserName" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Height="35px" TextMode="Password" 
                        Width="200px" BorderColor="#FF9933" BorderStyle="Solid" BorderWidth="1px" 
                        Font-Size="Medium">Enter Password</asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Re-Enter Password
                </td>
                <td>
                    <asp:TextBox ID="txtRePassword" runat="server" BorderColor="#FF9933" 
                        BorderStyle="Solid" BorderWidth="1px" Height="35px" TextMode="Password" 
                        Width="200px"></asp:TextBox>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server"
                            ErrorMessage="Both Password should be same" 
                        ControlToCompare="txtRePassword" ControlToValidate="txtPassword" 
                        SetFocusOnError="True" ForeColor="Blue"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                Email
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Height="35px" Width="200px" 
                        BorderColor="#FF9933" BorderStyle="Solid" BorderWidth="1px" Font-Size="Medium"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmail" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSignUp" runat="server" onclick="btnSignUp_Click" Text="Sign Up" 
            Height="35px" Width="203px" BackColor="#2C93C2" BorderStyle="None" 
            Font-Size="Medium" ForeColor="White" />
&nbsp;<asp:Label ID="Label1" runat="server" BorderColor="#FF6600" BorderStyle="None" 
            BorderWidth="2px" Font-Size="Medium"  
            
            style="font-family: 'Kozuka Gothic Pro R'; font-size: x-large; color: Orange; margin-left: 93px;"></asp:Label>
        <hr />
        <p align="right" 
                
                style="font-style: normal; font-size: small; font-family: 'Kozuka Gothic Pr6N M'; font-weight: normal; color: #919191;">
                Brought to you by teamChat&nbsp;&nbsp;&nbsp;
                        <a href="Tour.aspx" style="text-decoration: none; color: #333333;">Take a Tour</a>&nbsp;&nbsp;&nbsp;
                        <a href="Login.aspx" style="text-decoration: none; color: #333333;">Login</a>&nbsp;&nbsp;&nbsp;
                <a href="Join.aspx" style="text-decoration: none; color: #333333;">+ Join Now</a>&nbsp;&nbsp;&nbsp;
                <a href="About.aspx" style="text-decoration: none; color: #333333;">About</a>
            </p><br />
            <asp:Image ID="imgIcon" runat="server" AlternateText="imgIcon" 
            ImageAlign="Right" ImageUrl="~/Images/icon.png" Height="125px" Width="125px" />
        </div>
</div><!--dvContainer-->
</form>
</asp:Content>
