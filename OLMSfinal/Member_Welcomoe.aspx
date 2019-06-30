<%@ Page Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Member_Welcomoe.aspx.vb" Inherits="Member_Welcomoe" title="Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
    <h1>Welcome..<asp:Label ID="lblmember_wel" runat="server" Text="Label" 
            CssClass="txt" Visible="False"></asp:Label></h1> 
    <center>
        <img src="App_Themes/Theme_Data/books.jpg" alt="" 
            style="border: medium outset #008000; width: 202px; height: 196px;"/>
        <table>
		    <tr>
		        <th colspan="3"><strong> Books.. </strong></th>
			</tr>
			<tr>
			    <td> Issue Book</td>
			    <td>
                    <asp:DropDownList ID="ddl_issuebook" runat="server" Width="128px" 
                        DataSourceID="SqlDataSource1" DataTextField="book_id" DataValueField="book_id">
                    </asp:DropDownList>
			        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:libConnectionString %>" 
                        SelectCommand="select book_id from books where status='n'">
                    </asp:SqlDataSource>
			    </td>
				<td>
                    <asp:Button ID="btn_issue" runat="server" Text=">>" CssClass="btn" 
                        Font-Size="Large" />
				</td>
		    </tr>
			<tr>
			    <td> Return Book </td>
			    <td>
                    <asp:DropDownList ID="ddl_returnbook" runat="server" Width="128px">
                    </asp:DropDownList>
			    </td>
				<td>
				    <asp:Button ID="btn_return" runat="server" Text=">>" CssClass="btn" 
                        Font-Size="Large" />
				</td>
			</tr>			
	    </table>
	    <br />
	    <table>
		    <tr>
		        <th colspan="3"><strong> Syllabus.. </strong></th>
			</tr>
			<tr>
			    <td> Download Syllabus</td>
			    <td>
                    <asp:DropDownList ID="ddl_down_sylbus" runat="server" Width="128px">
                    </asp:DropDownList>
			    </td>
				<td>
                    <asp:Button ID="btn_dwnd" runat="server" Text=">>" CssClass="btn" Font-Size="Large" />
				</td>
		    </tr>			
	    </table>
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

