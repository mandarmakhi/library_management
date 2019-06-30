<%@ Page Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Delete_Book.aspx.vb" Inherits="Admin_Edit_Book" title="Delete Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
    <h1>Welcome..</h1>
    <form id="Form1" action="#">		
	    <table>
	        <tr>
	            <th colspan="3"><strong> Delete Book.. </strong></th>
	        </tr>
	        <tr>
	            <td> Book ID </td>
	            <td> : </td>
	            <td>
                    <asp:DropDownList ID="ddledit_book" runat="server" Width="128px" CssClass="txt">
                    </asp:DropDownList>
                </td>
	        </tr>
	        <tr>
	            <td align="center">
                    <asp:Button ID="btnedit_book" runat="server" Text="Delete Book" CssClass="btn" 
                        Width="96px" />
	            </td>
	            <td colspan = "2">
                    &nbsp;</td>
	        </tr>			
	    </table>
	    <br />
	    <table>
	        <tr>
	            <th colspan="3"><strong> Delete Syllabus.. </strong></th>
	        </tr>
	        <tr>
	            <td> Syllabus ID </td>
	            <td> : </td>
	            <td>
                    <asp:DropDownList ID="ddl_delete_sylbus" runat="server" Width="128px" CssClass="txt">
                    </asp:DropDownList>
                </td>
	        </tr>
	        <tr>
	            <td align="center">
                    <asp:Button ID="btndelete_sylbus" runat="server" Text="Delete Syllabus" CssClass="btn" 
                        Width="96px" />
	            </td>
	            <td colspan = "2">
                    &nbsp;</td>
	        </tr>			
	    </table>
	    <br />
	    <div>
        <table >
            <tr>
                <td align ="right">
                    <asp:Button ID="btn_back" runat="server" Text="Back" CssClass="btn" />&nbsp
                    <asp:Button ID="btnlogout" runat="server" Text="LogOut" CssClass="btn" />
                </td>
            </tr>
        </table>
        </div>	
	</form>
</div>
</asp:Content>

