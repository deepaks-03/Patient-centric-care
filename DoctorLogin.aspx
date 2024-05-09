<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorLogin.aspx.cs" Inherits="DoctorLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Doctor Login</title>
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
        	background-image:url('image/bgad.jpg');
        	background-repeat:no-repeat;
        	background-attachment:fixed;
        	background-size:cover;
        }
        .style1
        {
            width: 117px;
        }
        .style2
        {
            color: #FFFFFF;
            font-weight: bold;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid" style="background:#ffffff">
    <ul class="nav navbar-nav">

     <li class="style2"><a href="Home.aspx" class="style4">Home</a></li>
     <li class="style2"><a href="AdminLogin.aspx" class="style4">Admin</a></li>
      
      
      <li class="style2"><a href="DoctorLogin.aspx" class="style4">Doctor</a></li>
      
    </ul>
  </div>
</nav>
    <form id="form1" runat="server">
     <div align="center">
    <center><h3 style="font-family:Candara Light;"  class="style2">Doctor Login</h3></center>
    </div>
   
    <div align="center">
    
    <div class="col-xs-18 col-sm-6 col-md-4">
             <div class="thumbnail">
             <div class="caption">
  
    <table>
 
    <tr>
    <td class="style1">
     <strong><asp:Label ID="name" runat="server" Text="Username" Font-Bold="true" Font-Names="Candara Light" 
    Font-Size="Large" ForeColor="Black"></asp:Label></strong>
    </td>
    <td>
    :
    </td>
    <td>
     <strong><asp:TextBox ID="txt_name" runat="server" Font-Bold="true" Font-Names="Candara Light" 
    Font-Size="small" ForeColor="Black" Width="231px" Height="35px" 
            ></asp:TextBox></strong>
    </td>
    </tr>

    <tr>
    <td class="style1">
    &nbsp;
    </td>
    </tr>

    <tr>
    <td class="style1">
     <strong><asp:Label ID="pass" runat="server" Text="Password" Font-Bold="true" Font-Names="Candara Light"
    Font-Size="Large" ForeColor="black"></asp:Label></strong>
    </td>
    <td>
    :
    </td>
    <td>
     <strong><asp:TextBox ID="txt_pass" runat="server" Font-Bold="true" Font-Names="Candara Light" 
    Font-Size="small" ForeColor="black" TextMode="Password" Width="231px" 
            Height="35px"></asp:TextBox></strong>
    </td>
    </tr>
    <tr>
    <td class="style1">
    &nbsp;
    </td>
    </tr>



    <tr>
    <td class="style1">
    &nbsp;
    </td>
    <td>
    &nbsp;
    </td>
    <td>&nbsp;&nbsp;&nbsp;
     <strong><asp:Button ID="login" runat="server" Text="Sign-In" Font-Bold="true " Font-Names="Candara Light" 
    Font-Size="small" ForeColor="black" onclick="login_Click" Width="80px" 
            Height="40px" BackColor="skyblue"/></strong>
    </td>
    </tr>
    </table>
    
    </center>
    <br />
     <center><p>--------------------------------------------------------------</p></center>
    <center><p>copyright@limeshospital</p></center>
     
      
    
    </div>
    </div>
    </div>
    
    
    </div>
    </form>
</body>
</html>
