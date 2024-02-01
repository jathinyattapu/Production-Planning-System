<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Production_Planning_System.Home.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Production Planning</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Production Planning System" />
    <meta name="author" content="Yattapu Jathin Kumar Reddy" />
    <link href="css/home.css" rel="stylesheet" />
    <style>
        table.table1 {
            table-layout: auto;
            width: auto;
        }

        table.table1 td, th {
            border: 1px solid;
            text-align: left;
            padding: 5px;
        }

        table.table1 tr:nth-child(even) {
            background-color: lightgrey;
        }

        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <!-- Menu -->
    <div class="header"><h1>Production Planning System</h1></div>  
    <div class="navbar">
        <a href="Home.aspx">Home</a> 
    </div>

<!-- Body -->
<div class="row">
  <div class="leftcolumn">
      <div class="card">
    </div>
 </div>
  <div class="rightcolumn">
    <div class="card">
        <div class="container" align="center">
            <form runat="server">
            <h4>Login</h4>
            <table>
                <tr>
                    <td>User Id</td><td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password</td><td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr><td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></td></tr>
            </table>
            </form>
          </div>
    </div>
    <div class="card">
      <table class="table1">
            <tr>
                <td><strong>Total Manpower</strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>Welder&#39;s</strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>Fitter&#39;s</strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>Operator&#39;s</strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>Fabricator&#39;s</strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>Helper&#39;s</strong></td>
                <td class="auto-style1">
                    <strong>
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>Supervisor&#39;s</strong></td>
                <td class="auto-style1">
                    <strong>
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
    </div>
    <div class="card">
        <table class="table1">
            <tr>
                <td><strong>Total Weight</strong></td>
                <td><strong>
                    <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>MS Channel</strong></td>
                <td><strong>
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>MS Flat</strong></td>
                <td><strong>
                    <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>MS Pipe</strong></td>
                <td><strong>
                    <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>MS Angle</strong></td>
                <td><strong>
                    <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>MS Sheet</strong></td>
                <td class="auto-style1"><strong>
                    <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>MS Rod</strong></td>
                <td class="auto-style1"><strong>
                    <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </div>
  </div>
</div>

<div class="footer">
Production Planning System || Designed By: Jathin
</div>

</body>
</html>
