<%@ Page Title="" Language="C#" MasterPageFile="~/Store/Store.Master" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="Production_Planning_System.Store.Store1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .table{
            table-layout: auto;
            width: auto;
        }
        td, th {
              border: 1px solid;
              text-align: left;
              padding: 5px;
        }

        tr:nth-child(even) {
          background-color: lightgrey;
        }
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="table">
            <tr>
                <td><strong>Total Weight</strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>MS Channel</strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>MS Flat</strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>MS Pipe</strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>MS Angle</strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>MS Sheet</strong></td>
                <td class="auto-style1">
                    <strong>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>MS Rod</strong></td>
                <td class="auto-style1">
                    <strong>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
</asp:Content>
