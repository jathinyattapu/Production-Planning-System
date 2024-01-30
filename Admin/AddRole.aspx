<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddRole.aspx.cs" Inherits="Production_Planning_System.Admin.AddRole" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 43%;
        }
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style3 {
            width: 160px;
        }
        .auto-style4 {
            width: auto;
        }
        .auto-style5 {
            width: 160px;
            height: 48px;
        }
        .auto-style6 {
            width: auto;
            height: 48px;
        }
        .container {
            background-color: azure
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <form id="form1" runat="server">                
               <table align="center" class="auto-style1">
                <tr><td colspan="2" align="center"><b>Role Registration</b></td></tr>
                <tr>
                    <td class="auto-style3">User Id</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" ForeColor="#FF3300">Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">User Role</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Asst Manager</asp:ListItem>
                            <asp:ListItem>Senior Engineer</asp:ListItem>
                            <asp:ListItem>Engineer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3" ForeColor="#FF3300">Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirm Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="TextBox3" ControlToValidate="TextBox2" ForeColor="#FF3300">Check the CNF-Password</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Department</td>
                    <td class="auto-style4">
                    
                        <asp:DropDownList ID="DropDownList2" Width="200px" runat="server">
                            <asp:ListItem Value="0">---Select--</asp:ListItem>
                            <asp:ListItem>Line-1</asp:ListItem>
                            <asp:ListItem>Line-2</asp:ListItem>
                            <asp:ListItem>Line-3</asp:ListItem>
                            <asp:ListItem>Store</asp:ListItem>
                        </asp:DropDownList>
                    
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Name</td>
                    <td class="auto-style4">

                        <asp:TextBox ID="TextBox4" Width="200px" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4" ForeColor="#FF3300">Required</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Date of Joining</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox5" runat="server" Width="200px" ClientIDMode="AutoID" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5" ForeColor="#FF3300">Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Phone Number</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox6" runat="server" Width="200px" TextMode="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Mail ID</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox7" Width="200px" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Address</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox8" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                     <td align="center"><asp:Button ID="Button1" runat="server" Text="Add Role" CssClass="auto-style2" OnClick="Button1_Click" /></td>
                     <td><button type="reset" onclick="this.form.reset();return false"><b>Clear</b></button></td>                  
                </tr>
                <tr>
                <td colspan="2"  align="center">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                </tr>
            </table>
        </form>
    </div>
</asp:Content>
