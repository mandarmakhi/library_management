<%@ Page Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Login.aspx.vb" Inherits="Admin_Login" title="Admin Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
    <h1>Welcome..</h1>
    <form action="#">		
	    <table>
		    <tr>
				<th colspan="3"><strong> Admin Login.. </strong></th>
			</tr>
			<tr>
			    <td> Admin Name </td>
			    <td> : </td>
			    <td>
                    <asp:TextBox ID="txtadmin_name" runat="server" Width="128px"></asp:TextBox>
				    </td>
			</tr>
			<tr>
			    <td> PassWord </td>
			    <td> : </td>
			    <td>
                    <asp:TextBox ID="txtadmin_pwd" runat="server" TextMode="Password" Width="128px"></asp:TextBox>
			    </td>
			</tr>
			<tr>
			    <td>
                    <asp:Button ID="btnadmin_login" runat="server" Text="Login" CssClass="btn" />
			    </td>
			    <td colspan ="2">
			        <asp:Label ID="lbladmin_msg" runat="server" Text="Label" Visible="False" 
                            ForeColor="#CC0000"></asp:Label>
			    </td>
			</tr>			
		</table>		
	</form>
</div>
</asp:Content>

