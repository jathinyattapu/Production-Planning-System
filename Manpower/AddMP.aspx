<%@ Page Title="" Language="C#" MasterPageFile="~/Manpower/Manpower.Master" AutoEventWireup="true" CodeBehind="AddMP.aspx.cs" Inherits="Production_Planning_System.Manpower.AddMP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .container {
            background-color: azure
        }
        .auto-style2 {
            margin-left: 80px;
        }
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 130px;
        }
        .auto-style6 {
            width: 130px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
    <form id="form1" runat="server">
        <table align="center">
            <tr>
                <td class="auto-style5">Id</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="225px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="225px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Trade</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server"  Width="225px">
                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                        <asp:ListItem>Welder</asp:ListItem>
                        <asp:ListItem>Fitter</asp:ListItem>
                        <asp:ListItem>Operator</asp:ListItem>
                        <asp:ListItem>Helper</asp:ListItem>
                        <asp:ListItem>Fabricator</asp:ListItem>
                        <asp:ListItem>Supervisor</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Grade</td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="A" Text="A" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="A" Text="B" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="A" Text="C" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Section</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="225px">
                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                        <asp:ListItem>Store</asp:ListItem>
                        <asp:ListItem>Line-1</asp:ListItem>
                        <asp:ListItem>Line-2</asp:ListItem>
                        <asp:ListItem>Line-3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Date of Join</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" Width="225px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Phone</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Phone" Width="225px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Address</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="225px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Add" />
                    </strong></td>
                <td align="center"><button type="reset" onclick="this.form.reset();return false"><b>Clear</b></button></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
</form>
        </div>
</asp:Content>
