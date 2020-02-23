<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="teamChatProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <p style="font-family: 'Kozuka Gothic Pro B'; color: #000000; font-size: large; ">
        Security Information
    </p>
    <table style="font-family: 'Kozuka Gothic Pro M'; font-size: medium; 
        color:#333333;">
            <tr>
                <td>
                    Current
                    Password
                </td>
                <td>
                    <asp:TextBox ID="txtCurrPassword" runat="server" Height="36px" 
                        Width="200px" BorderColor="#0099FF" BorderStyle="Solid" BorderWidth="1px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    New Password 
                </td>
                <td>
                    <asp:TextBox ID="txtNewPassword" runat="server"  Height="36px" 
                        Width="200px" BorderColor="#0099FF" BorderStyle="Solid" BorderWidth="1px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Re-Entre New Password 
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" Height="36px" 
                        Width="200px" BorderColor="#0099FF" BorderStyle="Solid" BorderWidth="1px" 
                        TextMode="Password" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="39px" 
                        onclick="Button1_Click" style="text-align: center" Text="Update" 
                        Width="197px" BackColor="#999999" BorderStyle="None" Font-Bold="True" 
                        Font-Names="Humnst777 BT" Font-Size="Large" ForeColor="White" />
                </td>
            </tr>
        </table>
&nbsp;</div>
</asp:Content>
