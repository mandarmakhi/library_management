<%@ Page Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Member_Create.aspx.vb" Inherits="Member_Create" title="Member Sign up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 2.6em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
    <h1>Welcome..</h1>
    <form id="Form1" action="#">		
			    <table>
				    <tr>
					    <th colspan="3"><strong> Sign Up.. </strong></th>
				    </tr>
				    <tr>
				        <td> Member Id </td>
				        <td> : </td>
				        <td>
                            <asp:TextBox ID="txtmember_id" runat="server" Width="128px" CssClass="txt" 
                                Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvmember_id" runat="server" 
                                ControlToValidate="txtmember_id" CssClass="txt" 
                                ErrorMessage="Please Enter Member Id" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
				    </tr>
				    <tr>
				        <td> Member Name </td>
				        <td> : </td>
				        <td>
                            <asp:TextBox ID="txtmember_name" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
				        </td>
				        <td>
                            <asp:RangeValidator ID="rvmember_name" runat="server" 
                                ErrorMessage="Please Enter Member Name In Valid Char" 
                                ControlToValidate="txtmember_name" CssClass="txt" MaximumValue="z" 
                                MinimumValue="a" SetFocusOnError="True"></asp:RangeValidator>
				        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtmember_name" ErrorMessage="Required"></asp:RequiredFieldValidator>
				        </td>
				    </tr>
				    <tr>
				        <td> PassWord </td>
				        <td> : </td>
				        <td>
                            <asp:TextBox ID="txtpassword" runat="server" Width="128px" CssClass="txt" 
                                TextMode="Password"></asp:TextBox>
				        </td>
				        <td>
                            <asp:RangeValidator ID="rv_password" runat="server" 
                                ErrorMessage="Please Enter Proper PassWord( 8 Digits )" 
                                ControlToValidate="txtpassword" CssClass="txt" MaximumValue="6" 
                                MinimumValue="1" SetFocusOnError="True"></asp:RangeValidator>
				            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtpassword" ErrorMessage="Required"></asp:RequiredFieldValidator>
				        </td>
				    </tr>
				    <tr>
				        <td> Re-Enter PassWord </td>
				        <td> : </td>
				        <td>
                            <asp:TextBox ID="txtre_password" runat="server" Width="128px" CssClass="txt" 
                                TextMode="Password"></asp:TextBox>
				        </td>
				        <td>
                            <asp:CompareValidator ID="cv_repassword" runat="server" 
                                ErrorMessage="Please Enter Proper Paasword" ControlToCompare="txtpassword" 
                                ControlToValidate="txtre_password" CssClass="txt" SetFocusOnError="True"></asp:CompareValidator>
				        </td>
				    </tr>
				    <tr>
				        <td class="style1"> Adress </td>
				        <td class="style1"> : </td>
				        <td class="style1">
                            <asp:TextBox ID="txtmember_add" runat="server" TextMode="MultiLine" 
                                Width="128px" CssClass="txt"></asp:TextBox>
				        </td>
				        <td class="style1">
                            <asp:RequiredFieldValidator ID="rv_address" runat="server" 
                                ErrorMessage="Plase Enter Proper Address" ControlToValidate="txtmember_add" 
                                CssClass="txt" SetFocusOnError="True"></asp:RequiredFieldValidator>
				        </td>
				    </tr>
				    <tr>
				        <td> Contact No. </td>
				        <td> : </td>
				        <td>
                            <asp:TextBox ID="txtcontact_no" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
				        </td>
				        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtcontact_no" ErrorMessage="Please Enter Proper Contact No" 
                                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
				            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtcontact_no" ErrorMessage="Required"></asp:RequiredFieldValidator>
				        </td>
				    </tr>
				    <tr>
				        <td> Education 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txteducation" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
				        <td> : </td>
				        <td>
                            <asp:TextBox ID="txteducation" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
				        </td>
				    </tr>
				    <tr>
				        <td> E-mail Id </td>
				        <td> : </td>
				        <td>
                            <asp:TextBox ID="txtemail_id" runat="server" Width="128px" CssClass="txt"></asp:TextBox>
				        </td>
				        <td>
                            <asp:RegularExpressionValidator ID="rev_email_id" runat="server" 
                                ErrorMessage="Please Enter Proper E-Mail Id" ControlToValidate="txtemail_id" 
                                SetFocusOnError="True" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
				            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtemail_id" ErrorMessage="Required"></asp:RequiredFieldValidator>
				        </td>
				    </tr>
				    <tr>
				        <td align="center">
                            <asp:Button ID="btn_submit" runat="server" Text="Sign Up" CssClass="btn" />
				        </td>
				    </tr>			
			    </table>
    </form>
</div> 
</asp:Content>

