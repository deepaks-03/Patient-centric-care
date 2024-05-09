<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorDashboard.aspx.cs" Inherits="DoctorDashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Dashboard</title>
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
    <li><a href="Prescription.aspx">Prescription</a></li>
   
       <li><a href="DoctorLogin.aspx">Logout</a></li>
    </ul>
  </div>
</nav>
    <form id="form1" runat="server">
   <div class="panel panel-info">
     <div class="panel-heading"><center><h4>LIMES HOSPITAL</h4></center>
    </div>  
<div class="banner101">
     <ul class="bxslider">
         <li><img src="image/22.jpeg" alt="" class="img-responsive"   width="1850px" height="10px"/></li>
             </ul>
             </div>
    </div>
    </form>
</body>
</html>
