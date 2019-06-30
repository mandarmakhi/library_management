<%@ Page Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Welcome.aspx.vb" Inherits="Admin_Welcome" title="Admin Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
    <h1>Welcome..<asp:Label ID="lbl_Welcome" runat="server" Text="Label" Visible="False"></asp:Label></h1>
        <p style="color: #000000">BOOK ISSUE RECORD</p>
        <p style="color: #000000">BOOK RETURN RECORD</p>
        <p style="color: #000000">&nbsp;</p>
    <center>
        <img src="App_Themes/Theme_Data/books3.jpg" alt="" 
            style="border: medium outset #008000; width: 202px; height: 196px;" 
            align="middle" />
    </center>
    <div>
        <table >
            <tr>
                <td align ="right"  >
                <asp:Button ID="btnlogout" runat="server" Text="LogOut" CssClass="btn" />
                </td>
            </tr>
        </table>
    </div>
    </div> 
</asp:Content>

