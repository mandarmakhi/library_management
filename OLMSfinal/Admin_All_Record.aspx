<%@ Page Language="VB" MasterPageFile="Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_All_Record.aspx.vb" Inherits="Admin_Book_Record" title="All Master Records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
    <h1>BOOK ISSUE </h1>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:connection %>" 
            SelectCommand="SELECT [book_id],[book_name],[mem_name],[issue_date] FROM [Library] ORDER BY [book_id]"></asp:SqlDataSource>
        <asp:GridView ID="GridView_all_records" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" BorderStyle="Ridge" CellPadding="4" 
            AllowPaging="True" DataSourceID="SqlDataSource1" 
            Width="301px">
            <Columns>
                <asp:BoundField DataField="book_id" HeaderText="Book Id" 
                    SortExpression="book_id" />
                <asp:BoundField DataField="book_name" HeaderText="Book Name" 
                    SortExpression="book_name" />
               
                <asp:BoundField DataField="mem_name" HeaderText="Member Name" 
                    SortExpression="mem_name" />
                <asp:BoundField DataField="issue_date" HeaderText="Issue Date" 
                    SortExpression="issue_date" />
                
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

