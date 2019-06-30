<%@ Page Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Record.aspx.vb" Inherits="Admin_Record" title="All Library Records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="text" style="right: 100px">
<h1>Welcome..</h1>
    <ul style="color: #000000; font-size: large; text-decoration: underline;">
        <li><a href="Admin_Syllabus_Records.aspx"> Syllabus</a></li>
		<li><a href="Admin_Book_Records.aspx"> Books</a></li>
		<li><a href="Admin_Member_Records.aspx"> Members</a></li>
		<li><a href="Admin_All_Record.aspx">Books Issued</a></li>
       
	</ul>
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

