<%@ Page Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Add_Records.aspx.vb" Inherits="Admin_Add_Records" title="Admin Add New Records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
<h1>Welcome..</h1>
    <ul>
		<li><a href="Admin_Add_Book.aspx"> Add Book</a></li>
		<li><a href="Admin_Add_Syllabus.aspx"> Add Syllabus</a></ul>
	<div>
        <table >
            <tr>
                <td align ="right"  >
                <asp:Button ID="btn_back" runat="server" Text="Back" CssClass="btn" />&nbsp
                <asp:Button ID="btnlogout" runat="server" Text="LogOut" CssClass="btn" />
                </td>
            </tr>
        </table>
    </div>
</div>
</asp:Content>

