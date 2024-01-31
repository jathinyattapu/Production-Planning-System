<%@ Page Title="" Language="C#" MasterPageFile="~/Store/Store.Master" AutoEventWireup="true" CodeBehind="StockAdd.aspx.cs" Inherits="Production_Planning_System.Store.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: auto;
        }      
        
        .auto-style2 {
            font-weight: bold;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4  align="center">Creating Material</h4>
    <table class="auto-style1" align="center">
        <tr>
            <td class="auto-style1">Material Id</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Description</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Location</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                    <asp:ListItem>SL01</asp:ListItem>
                    <asp:ListItem>PL01</asp:ListItem>
                    <asp:ListItem>PL02</asp:ListItem>
                    <asp:ListItem>PL03</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Unit of Material</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                    <asp:ListItem>Kg</asp:ListItem>
                    <asp:ListItem>g</asp:ListItem>
                    <asp:ListItem>m</asp:ListItem>
                    <asp:ListItem>mm</asp:ListItem>
                    <asp:ListItem>cm</asp:ListItem>
                    <asp:ListItem>l</asp:ListItem>
                    <asp:ListItem>Nos</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Quantity</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">                
                <asp:Button ID="Button1" runat="server" Text="Add" CssClass="auto-style2" OnClick="Button1_Click" />                
            </td>
            <td  align="center">
                <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="auto-style2"  />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">                
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
