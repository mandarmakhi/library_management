<%@ Page Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Library_Books.aspx.vb" Inherits="Library_Books" title="All Library Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px">
    <h1>Book Records..</h1>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:connection %>" 
            SelectCommand="SELECT * FROM [Books] ORDER BY [book_id]"></asp:SqlDataSource>
        <asp:GridView ID="GridView_all_records" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" BorderStyle="Ridge" CellPadding="4" 
            DataKeyNames="book_id" AllowPaging="True" DataSourceID="SqlDataSource1" 
            Width="301px">
            <Columns>
                <asp:BoundField DataField="book_id" HeaderText="Book ID" ReadOnly="True" 
                    SortExpression="book_id" />
                <asp:BoundField DataField="book_name" HeaderText="Book Name" 
                    SortExpression="book_name" />
                <asp:BoundField DataField="book_author" HeaderText="Book Author" 
                    SortExpression="book_author" />
                <asp:BoundField DataField="publisher" HeaderText="Publisher" 
                    SortExpression="publisher" />
                <asp:BoundField DataField="book_type" HeaderText="Book Type" 
                    SortExpression="book_type" />
            </Columns>
        </asp:GridView>
    </div>
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

