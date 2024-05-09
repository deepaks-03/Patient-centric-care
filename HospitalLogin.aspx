<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HospitalLogin.aspx.cs" Inherits="HospitalLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hospital Login</title>
     <script src="css/3.2.1-jquery.min.js" type="text/javascript"></script>
    <link href="css/3.3.7-bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="css/3.3.7-bootstrap.min.js" type="text/javascript"></script>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="css/bootstrap.min.js" type="text/javascript"></script>
    <link href="css/jquery.bxslider.css" rel="stylesheet" type="text/css" />
    <script src="css/jquery.bxslider.js" type="text/javascript"></script>
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style>
        body
        {
        	background-image:url('image/dot.jpg');
        	background-repeat:no-repeat;
        	background-attachment:fixed;
        	background-size:cover;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
     <li><a href="Home.aspx">Home</a></li>
     <li><a href="AdminLogin.aspx">Admin</a></li>
      <li><a href="HospitalLogin.aspx">Hospital</a></li>
      <li><a href="PatientLogin.aspx">Patient</a></li>
    </ul>
  </div>
</nav>
    <form id="form1" runat="server">
   <div align="center">
    <center><h3 style="color:White;font-family:Verdana;"><b>Hospital Login Details</b></h3></center>
    </div>
    <div align="left">
    <table>
    <tr>
    <td>
    <asp:Label ID="name" runat="server" Text="Username" Font-Bold="True" Font-Names="Arial" 
    Font-Size="X-Large" ForeColor="White"></asp:Label>
    </td>
    <td>
    :
    </td>
    <td>
    <asp:TextBox ID="txt_name" runat="server" Font-Bold="True" Font-Names="Arial" 
    Font-Size="X-Large" ForeColor="Black"></asp:TextBox>
    </td>
    </tr>

    <tr>
    <td>
    &nbsp;
    </td>
    </tr>

    <tr>
    <td>
    <asp:Label ID="pass" runat="server" Text="Password" Font-Bold="True" Font-Names="Arial"
    Font-Size="X-Large" ForeColor="White"></asp:Label>
    </td>
    <td>
    :
    </td>
    <td>
    <asp:TextBox ID="txt_pass" runat="server" Font-Bold="True" Font-Names="Arial" 
    Font-Size="X-Large" ForeColor="Black" TextMode="Password"></asp:TextBox>
    </td>
    </tr>


    <tr>
    <td>
    &nbsp;
    </td>
    </tr>



    <tr>
    <td>
    &nbsp;
    </td>
    <td>
    &nbsp;
    </td>
    <td>&nbsp;&nbsp;&nbsp;
    <asp:Button ID="login" runat="server" Text="Login" Font-Bold="True" Font-Names="Arial" 
    Font-Size="X-Large" ForeColor="Black" onclick="login_Click"/>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
