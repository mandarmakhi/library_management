<%@ Page Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Add_Syllabus.aspx.vb" Inherits="Admin_Add_Syllabus" title="Admin Add New Syllabus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
    <h1>Welcome..</h1>
    <form id="Form1" action="#">		
	    <table>
	        <tr>
	            <th colspan="3"><strong> Add New Syllabus.. </strong></th>
	        </tr>
	        <tr>
	            <td> Syllabus ID </td>
	            <td> : </td>
	            <td>
                    <asp:TextBox ID="txtsylbus_id" runat="server" Width="128px" CssClass="txt" 
                        Enabled="False"></asp:TextBox>
                </td>
	        </tr>
	        <tr>
	            <td> Syllabus Name </td>
	            <td> : </td>
	            <td>
                    <asp:TextBox ID="txtsylbus_name" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
	                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtsylbus_name" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
	            </td>
	        </tr>
	        <tr>
	            <td> Select Syllabus  </td>
	            <td> : </td>
	            <td>
                    <asp:FileUpload ID="FileUpload_sylbus" runat="server" CssClass="txt" />
	            </td>
	            <%--<td>
                    <asp:TextBox ID="txtbook_author" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
	            </td>--%>
	        </tr>
	        <tr>
	            <td align="center">
                    <asp:Button ID="btnadd_sylbus" runat="server" Text="Add Syllabus" CssClass="btn" 
                        Width="96px" />
	            </td>
	            <td colspan = "2">
                    <asp:Label ID="lbladd_sylbus" runat="server" Text="Add Syllabus" 
                        Visible="False" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
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

