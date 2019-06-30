<%@ Page Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Add_Book.aspx.vb" Inherits="Admin_Add_Book" title="Admin Add New Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
    <h1>Welcome..</h1>
    <form id="Form1" action="#">		
	    <table>
	        <tr>
	            <th colspan="3"><strong> Add New Book.. </strong></th>
	        </tr>
	        <tr>
	            <td> Book ID </td>
	            <td> : </td>
	            <td>
                    <asp:TextBox ID="txtbook_id" runat="server" Width="128px" CssClass="txt" 
                        Enabled="False"></asp:TextBox>
                </td>
	        </tr>
	        <tr>
	            <td> Book Name </td>
	            <td> : </td>
	            <td>
                    <asp:TextBox ID="txtbook_name" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
	                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtbook_name" ErrorMessage="enter book name"></asp:RequiredFieldValidator>
	            </td>
	        </tr>
	        <tr>
	            <td> Book Author </td>
	            <td> : </td>
	            <td>
                    <asp:TextBox ID="txtbook_author" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
	                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtbook_author" ErrorMessage="enter author name"></asp:RequiredFieldValidator>
	            </td>
	        </tr>
	        <tr>
	            <td> Publisher </td>
	            <td> : </td>
	            <td>
                    <asp:TextBox ID="txtbook_publi" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
	                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtbook_publi" ErrorMessage="enter publisher"></asp:RequiredFieldValidator>
	            </td>
	        </tr>
	        <tr>
	            <td> Book_Type </td>
	            <td> : </td>
	            <td>
                    <asp:DropDownList ID="ddlbook_type" Width="128px" runat="server">
                        <asp:ListItem>Education</asp:ListItem>
                        <asp:ListItem>Art and Architecture</asp:ListItem>
                        <asp:ListItem>History</asp:ListItem>
                    </asp:DropDownList>
	            </td>
	        </tr>
	        <tr>
	            <td align="center">
                    <asp:Button ID="btnadd_book" runat="server" Text="Add Book" CssClass="btn" 
                        Width="96px" />
	            </td>
	            <td colspan = "2">
                    <asp:Label ID="lbladd_book" runat="server" Text="Add Book" Visible="False"></asp:Label>
	            </td>
	        </tr>			
	    </table>
	    <br />
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
	</form>
</div>     
</asp:Content>

