<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HospitalDashboard.aspx.cs" Inherits="HospitalDashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Hospital Dashboard</title>
     <script src="css/3.2.1-jquery.min.js" type="text/javascript"></script>
    <link href="css/3.3.7-bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="css/3.3.7-bootstrap.min.js" type="text/javascript"></script>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="css/bootstrap.min.js" type="text/javascript"></script>
    <link href="css/jquery.bxslider.css" rel="stylesheet" type="text/css" />
    <script src="css/jquery.bxslider.js" type="text/javascript"></script>
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
     <li><a href="HospitalViewBooking.aspx">View Booking</a></li>
      <li><a href="HospitalReportSending.aspx">Report Sending</a></li>
       <li><a href="Home.aspx">Logout</a></li>
    </ul>
  </div>
</nav>
    <form id="form1" runat="server">
   <div align="center">
    <asp:Label ID="welcome" runat="server" Text="WELCOME" ForeColor="Red"></asp:Label>
     <asp:Label ID="lbl_session_uname" runat="server" Text="HOSPITAL" ForeColor="Red"></asp:Label>
    </div>

     <div class="panel panel-info">
     <div class="panel-heading"><center><h4>HOSPITAL DASHBOARD</h4></center>
    </div>  
<div class="banner101">
     <ul class="bxslider">
         <li><img src="image/11.jpg" alt="" class="img-responsive"   width="1920px" height="100px"/></li>
             </ul>
             </div>
    </div>
    </form>
</body>
</html>
