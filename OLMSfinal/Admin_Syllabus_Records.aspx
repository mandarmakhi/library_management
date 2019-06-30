<%@ Page Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Syllabus_Records.aspx.vb" Inherits="Admin_Syllabus_Records" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="text" style="right: 100px">
    <h1>Syllabus Records..</h1>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:connection %>" 
            
            SelectCommand="SELECT [sylbus_id], [sylbus_name], [file_name] FROM [Syllabus] ORDER BY [sylbus_id]"></asp:SqlDataSource>
        <asp:GridView ID="Gv_Sylbus" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" BorderStyle="Ridge" CellPadding="4" 
            DataKeyNames="sylbus_id" AllowPaging="True" DataSourceID="SqlDataSource1" 
            Width="301px">
            <Columns>
                <asp:BoundField DataField="sylbus_id" HeaderText="Syllabus ID" ReadOnly="True" 
                    SortExpression="sylbus_id" />
                <asp:BoundField DataField="sylbus_name" HeaderText="Syllabus Name" 
                    SortExpression="sylbus_name" />
                <asp:BoundField DataField="file_name" HeaderText="File Name" 
                    SortExpression="file_name" />
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

