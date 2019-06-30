<%@ Page Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Member_Records.aspx.vb" Inherits="Admin_Member_Records" title="All Member Records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="text" style="right: 100px">
    <h1>Member Records..</h1>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:connection %>" 
            SelectCommand="SELECT * FROM [Members] ORDER BY [mem_id]"></asp:SqlDataSource>
        <asp:GridView ID="GridView_all_records" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" BorderStyle="Ridge" CellPadding="4" 
            DataKeyNames="mem_id" AllowPaging="True" DataSourceID="SqlDataSource1" 
            Width="301px">
            <Columns>
                <asp:BoundField DataField="mem_id" HeaderText="Member Id" ReadOnly="True" 
                    SortExpression="mem_id" />
                <asp:BoundField DataField="mem_name" HeaderText="Member Name" 
                    SortExpression="mem_name" />
                <asp:BoundField DataField="password" HeaderText="Password" 
                    SortExpression="password" />
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" />
                <asp:BoundField DataField="cont_no" HeaderText="Contact No" 
                    SortExpression="cont_no" />
                <asp:BoundField DataField="education" HeaderText="Education" 
                    SortExpression="education" />
                <asp:BoundField DataField="email" HeaderText="Email Id" 
                    SortExpression="email" />
            </Columns>
        </asp:GridView>
    </div>
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
</div>

</asp:Content>

