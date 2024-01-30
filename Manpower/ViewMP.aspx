<%@ Page Title="" Language="C#" MasterPageFile="~/Manpower/Manpower.Master" AutoEventWireup="true" CodeBehind="ViewMP.aspx.cs" Inherits="Production_Planning_System.Manpower.ViewMP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="Manpower" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Trade" HeaderText="Trade" SortExpression="Trade" />
            <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
            <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
            <asp:BoundField DataField="Date of Joining" HeaderText="Date of Joining" SortExpression="Date of Joining" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="Manpower" runat="server" ConnectionString="<%$ ConnectionStrings:pps %>" SelectCommand="SELECT * FROM [manpower]"></asp:SqlDataSource>
    </form>
</asp:Content>
