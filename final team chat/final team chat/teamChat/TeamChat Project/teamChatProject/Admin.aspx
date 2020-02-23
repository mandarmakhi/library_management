<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="teamChatProject.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 352px;
            width: 1017px;
        }
        .style1
        {
            text-align: center;
            color: #009933;
            font-size: medium;
            height: 289px;
            width: 1010px;
        }
        </style>
</head>
<body style="font-size: small">
    <form id="form1" runat="server">
    
    <div class="style1">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/admin.png" Width="1350" />
        <p style="float: right">
            <asp:Label ID="lblAdmin" runat="server" Font-Names="Arial" Font-Size="Large" 
                ForeColor="#333333"></asp:Label>
            <asp:Label ID="lblUpdateStatus" runat="server" Font-Names="Arial" 
                Font-Size="Large"></asp:Label>
        <asp:Button ID="btnAdminLogout" runat="server" onclick="btnAdminLogout_Click" 
            Text="Logout" BackColor="#666666" BorderStyle="None" Font-Names="Arial" 
            Font-Size="Large" ForeColor="#FF9933" Height="30px" Width="100px" />
       
    
        </p>
        <!-- BELOW THIS SENSITIVE AREA DO NOR CHANGE CODES-->
       <asp:SqlDataSource ID="sdsAccount" 
            runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [tblAccount]" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="White" BorderWidth="2px" 
            CellPadding="3" DataSourceID="sdsAccount" ForeColor="Gray" 
            GridLines="None" BorderStyle="Ridge" CellSpacing="1" Font-Names="Arial" 
            Font-Size="Medium" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" 
                HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <!-- ABOVE THIS SENSITIVE AREA DO NOR CHANGE CODES--><br />
        <asp:TextBox ID="txtAdminPost" runat="server" Height="115px" Width="449px" 
            TextMode="MultiLine" BorderColor="#0099FF" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Tahoma" Font-Size="Medium" ForeColor="#666666" 
            style="text-align: left"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAdminPost" runat="server" onclick="btnAdminPost_Click" 
            Text="Post" BackColor="Silver" BorderStyle="None" Font-Bold="True" 
            Font-Names="Arial" Font-Size="Large" ForeColor="White" Height="35px" 
            Width="100px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
    
    </div>
    </form>
</body>
</html>
