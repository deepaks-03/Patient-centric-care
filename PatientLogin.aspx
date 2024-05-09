<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientLogin.aspx.cs" Inherits="PatientLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>limes hospital</title>
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
        	
        }
        .style1
        {
            width: 100px;
        }
        .style2
        {
            font-family: "Candara Light";
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default">
  
    <ul class="nav navbar-nav">
     <li><a href="Home.aspx">Home</a></li>
     
      
    </ul>
 
</nav>
    <form id="form1" runat="server">
     <div align="center">
  
    
    </div>
    </div>
    </div>
    <br />
    <div align="right">
        <div class="container" id="Div" backcolor="skyblue>
     <div class="col-xs-25 col-sm-7 col-md-6">
             <div class="thumbnail">
             <div class="caption">
             <center><h3 class="style2"><strong>Patient Login</strong></h3></center>
    
    <table>
    <tr>
    <td class="style1">
    <asp:Label ID="name" runat="server" Text="User_id/Username" Font-Bold="True" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="black"></asp:Label>
    </td>
    <td>
    :
    </td>
    <td>
    <asp:TextBox ID="txt_name" runat="server" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="Black"></asp:TextBox>
    </td>
    </tr>

    <tr>
    <td class="style1">
    &nbsp;
    </td>
    </tr>

    <tr>
    <td class="style1">
    <asp:Label ID="pass" runat="server" Text="Password" Font-Bold="True" Font-Names="Candara Light"
    Font-Size="X-Large" ForeColor="black"></asp:Label>
    </td>
    <td>
    :
    </td>
    <td>
    <asp:TextBox ID="txt_pass" runat="server" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="Black" TextMode="Password"></asp:TextBox>
    </td>
    </tr>


    <tr>
    <td class="style1">
    &nbsp;
    </td>
    </tr>

    <tr>
    <td class="style1">
    <asp:Label ID="random" runat="server" Text="Login Key" Font-Bold="True" Font-Names="Candara Light"
    Font-Size="X-Large" ForeColor="black"></asp:Label>
    </td>
    <td>
    :
    </td>
    <td>
    <asp:TextBox ID="txt_random" runat="server" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="Black" TextMode="Password"></asp:TextBox>
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
    <asp:Button ID="login" runat="server" Text="Login" Font-Bold="True" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="Black" onclick="login_Click"/>
    &nbsp;&nbsp;&nbsp;
     <asp:Button ID="register" runat="server" Text="New Register" Font-Bold="True" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="Blue" onclick="register_Click" BackColor="White"/>
    </td>
    </tr>
    </table>
    <br />
    <center><p>--------------------------------------------------------------</p></center>
    <center><p>copyright@limeshospital</p></center>
    </div>
    </div>
    </div>
    </div>
    </div>
    
    </form>
</body>
</html>
