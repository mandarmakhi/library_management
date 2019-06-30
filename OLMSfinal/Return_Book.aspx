<%@ Page Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Return_Book.aspx.vb" Inherits="Return_Book" title="Return Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="text" style="right: 100px">
    <form id="Form1" action="#">		
	    <table>
	        <tr>
	            <th colspan="3"><strong> Return Book.. </strong></th>
	        </tr>
	        <tr>
	            <td> Book ID </td>
	            <td> : </td>
	            <td>
                    <asp:TextBox ID="txtreturn_id" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
                </td>
	        </tr>
	        <tr>
	            <td> Book Name </td>
	            <td> : </td>
	            <td>
                    <asp:TextBox ID="txtreturn_name" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
	            </td>
	        </tr>
	        <tr>
	            <td> Book Author </td>
	            <td> : </td>
	            <td>
                    <asp:TextBox ID="txtreturn_author" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
	            </td>
	        </tr>
	        <tr>
	            <td> Publisher </td>
	            <td> : </td>
	            <td>
                    <asp:TextBox ID="txtreturn_publi" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
	            </td>
	        </tr>
	        <tr>
                <td> Member Id </td>
				<td> : </td>
				<td>
                    <asp:TextBox ID="txtreturn_memid" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Member Name </td>
				<td> : </td>
				<td>
                    <asp:TextBox ID="txtreturn_memname" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Issue Date </td>
				<td> : </td>
				<td>
                      <asp:TextBox ID="txtissue_date" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Return Date </td>
				<td> : </td>
				<td>
                    <asp:TextBox ID="txtreturn_date" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
	        <tr>
	            <td align="center" colspan="3">
                    <asp:Button ID="btn" runat="server" Text="Return Book" CssClass="btn" 
                        Width="124px" Font-Size="Medium" />
	            </td>
	        </tr>			
	    </table>
    	    <div>
            <table >
                <tr>
                    <td align ="right"  >
                        <asp:Button ID="btn_Back" runat="server" Text="Back" CssClass="btn" />
                    </td>
                </tr>
            </table>
        </div>
	    <br />		
	</form>
</div> 
</asp:Content>

