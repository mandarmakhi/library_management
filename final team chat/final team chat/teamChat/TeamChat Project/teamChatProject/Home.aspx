<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="teamChatProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #Button1
        {
            height: 40px;
            width: 250px;
        }
        #txtaChatBox
        {
            height: 250px;
            width: 750px;
        }
        #Reset1
        {
            height: 40px;
            width: 100px;
        }
        #btnSend
        {
            height: 40px;
            width: 250px;
        }
        #btnReset
        {
            height: 40px;
            width: 100px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

       /* function btnReset_onclick() {

        }

        function btnAddTeam_onclick() {
            var name = form.txtSearch.value;
            alert("name");
        }

        function btnAddTeam_onclick() {

        } */

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
    
    <div id="UserDescription" 
        style="height: 150px; background-color: #EDF0F5; width: 100%;">
        
        
        <img alt="userImg" src="Images/userImage.png" 
                style="width: 150px; height: 150px; margin-left: 5px; margin-top: -5px;" />

        </div><br /><br />
    <div id="chatArea" style=" ">
        <div id="teamsOnline" style="float: left;"><br /><br />
            <table style="font-family: 'Kozuka Gothic Pro M'; font-size: large; color: #67B532">
                <tr>
                    <td>
                        <img alt="" src="Images/signal.png" />Avaiblable teams</td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td>
                        <p style="font-family: Leelawadee; font-size: medium; color: #808080">
                            Select a team to join
                        </p>
                        <p style="font-family: Leelawadee; font-size: medium; color: #808080">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sdsChat" 
                                DataTextField="teamName" DataValueField="teamName" Height="45px" 
                                Width="200px" BackColor="#0099CC" Font-Bold="False" Font-Names="Leelawadee" 
                                Font-Size="Large" Font-Strikeout="False" ForeColor="White" 
                                AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                DataMember="DefaultView">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="sdsChat" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                SelectCommand="SELECT DISTINCT [teamName] FROM [tblChat] ORDER BY [teamName]"></asp:SqlDataSource>
                        </p>
                        <p style="font-family: Leelawadee; font-size: medium; color: #808080">
                            <asp:Button ID="Button2" runat="server" Text="Join" Height="40px" 
                                onclick="Button2_Click" Width="100px" BackColor="#6BB026" 
                                BorderStyle="None" Font-Names="Tahoma" Font-Size="Large" ForeColor="White" />
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <div id="chatBox" style=" float: left; margin-left: 100px;">
            <asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="Large" 
                ForeColor="#FF9900">You are chatting in team : </asp:Label>
            
               
            <asp:Label ID="Label4" runat="server" Font-Names="Tahoma" Font-Size="Large" 
                ForeColor="#FF9900"></asp:Label>
            
               
                    <br />
               
          
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick">
                    </asp:Timer>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#EBEBEB" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#333333" GridLines="Horizontal" Height="56px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" ShowHeader="False" 
                        Width="457px" AllowSorting="True">
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
               
            <br />
                    <asp:TextBox ID="txtMessage" runat="server" BorderColor="#CCCCCC" 
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Leelawadee" Font-Size="Large" 
                        ForeColor="#666666" Height="35px" Width="300px"></asp:TextBox>
               
            <br />
                    <asp:Button ID="Button3" runat="server" BackColor="#999999" BorderStyle="None" 
                        Font-Names="Calibri" Font-Size="Large" ForeColor="#F7F7F7" Height="34px" 
                        onclick="Button3_Click" Text="Send" Width="128px" />
                    <asp:Label ID="Label6" runat="server" Font-Names="Tahoma" Font-Size="Large" 
                ForeColor="#FF9900"></asp:Label>
            <br />
            </div>
        <div id="dvCreateTeam" style="float: right;">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <img alt="" src="Images/createTeam.png"/><br />
            <asp:Button ID="btnNewTeam" runat="server" Height="40px" 
                onclick="btnNewTeam_Click" Text="Create Team" Width="142px" 
                    BackColor="#0099CC" BorderStyle="None" Font-Size="Medium" ForeColor="#CCCCCC" />
            <asp:Label ID="Label5" runat="server" Font-Names="Tahoma" Font-Size="Large" 
                ForeColor="#FF9900"></asp:Label>
            &nbsp;<br />
            <asp:TextBox ID="txtNewTeam" runat="server" Height="35px" Width="138px" 
                Font-Names="Arial" Font-Size="Large" ForeColor="#666666"></asp:TextBox>
        </div>
        
        <br />
        <br />
        
    </div>
</form>
</asp:Content>
