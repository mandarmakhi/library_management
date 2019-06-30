<%@ Page Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Member_Home.aspx.vb" Inherits="Member_Home" title="Member Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="text" style="right: 100px">
            <h1>Welcome..</h1>
            <center >
                <img src="App_Themes/Theme_Data/New_Library.jpg" alt="" width="400px" 
                    height="150px" style="border-style: outset; border-color: #008000"/>
            </center>
            <p> There are various types of information providers like books..The primary long-term objective is to capture all books in digital format. </p>
            <form id="Form1" action="#">		
			    <table>
				    <tr>
					    <th colspan="3"><strong> Login.. </strong></th>
				    </tr>
				    <tr>
				        <td> Member Id </td>
				        <td> : </td>
				        <td>
                            <asp:TextBox ID="txtmem_id" runat="server" Width="128px"></asp:TextBox>
                        </td>
				    </tr>
				    <tr>
				        <td> Member Name </td>
				        <td> : </td>
				        <td>
                            <asp:TextBox ID="txtmember_name" runat="server" Width="128px"></asp:TextBox>
                        </td>
				    </tr>
				    <tr>
				        <td> PassWord </td>
				        <td> : </td>
				        <td>
                            <asp:TextBox ID="txtmember_pwd" runat="server" TextMode="Password" Width="128px"></asp:TextBox>
				        </td>
				    </tr>
				    <tr>
				        <td align="center">
                            <asp:Button ID="btnmember_submit" runat="server" Text="LogIn" CssClass="btn" />
				        </td>
				        <td colspan ="2">
                            <asp:Label ID="lblmember" runat="server" Text="Label" Visible="False"></asp:Label>
				        </td>
				    </tr>			
			    </table>
			    <br />		
		        <table>
			        <tr align="center"  >
			            <th><strong> New to Library? It's free and easy.. </strong></th> 
			        </tr>
			        <tr>
			            <td align="center">
                            <asp:Button ID="btnmember_crAC" runat="server" Text="Create New Member >>" CssClass="btn" />
			            </td>
			        </tr>
		        </table>
		    </form>
        </div>
</asp:Content>

