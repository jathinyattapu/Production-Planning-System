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
      
    </div>
    <div class="card">
    </div>
  </div>
</div>

<div class="footer">
  <h2>Footer</h2>
</div>

</body>
</html>
