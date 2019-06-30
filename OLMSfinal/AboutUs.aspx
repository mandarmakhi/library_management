<%@ Page Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="AboutUs" title="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
        <h1>Welcome..</h1>
        <br />
        <center>
            <img src="App_Themes/Theme_Data/Library_new_logo.gif" alt="" width="300px" />
        </center>
        <br />
        <b>Mission :</b>
        <p>The mission is to create a Onlines Library which will foster creativity and free access to all human knowledge. As a first step in realizing this mission, it is proposed to create the Online Library with a free-to-read, searchable collection of one million books</p>
        <div>
            <table >
                <tr>
                    <td align ="right"  >
                        <asp:Button ID="btn_Back" runat="server" Text="Back" CssClass="btn" />
                    </td>
                </tr>
            </table>
        </div>
    </div> 
</asp:Content>

