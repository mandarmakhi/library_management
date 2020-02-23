<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="teamChatProject.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #File1
        {
            height: 35px;
            width: 200px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function txtFName_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p align="center" 
        
        
        style="font-family: 'Kozuka Gothic Pro B'; color: #000000; font-size: large; text-decoration: underline;">
        Status
        <asp:Label ID="Label4" runat="server" ForeColor="#FF6600"></asp:Label>
        <asp:Label ID="Label5" runat="server" ForeColor="#FF6600"></asp:Label>
    </p><hr />
    <div id="dvUpdatePanel">
    <div style="float: left">
    <p style="font-family: 'Kozuka Gothic Pro B'; color: #000000; font-size: large; ">
        Share with friends, whats in your mind!</p>
        <asp:TextBox ID="txtPost" runat="server" Height="150px" 
            style="margin-bottom: 0px" TextMode="MultiLine" Width="500px" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Tahoma" 
            Font-Size="Large" ForeColor="#333333"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Post" onclick="Button1_Click" 
            BackColor="#333333" BorderStyle="None" Font-Names="Arial" Font-Size="Large" 
            ForeColor="#CCCCCC" Height="30px" Width="100px" />
    </div>
    </div><!--UpdatePannel-->
 
</asp:Content>