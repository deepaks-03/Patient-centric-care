<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="AdminDashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Admin Dashboard</title>
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

    <form id="form1" runat="server">
  

     <div class="panel panel-info">
     <div class="panel-heading"><center><h4>LIMES HOSPITAL</h4></center>
    </div>  
  
    <div align="center">
    </br>
    </br>
    </br> 
    
    <br />
             <br /><br />
             <br />
            <br />
            <br /> 
             <div class="container" id="Div">
             
            
             <div class="col-xs-27 col-sm-9 col-md-6">
             <div class="thumbnail">

             <div class="caption">
             <p>OUT PATIENT ENTRY FORM</p>
             <a href="adminreg.aspx" 
                     class="btn btn-info btn-xs" role="button" style="color: #000000">     ENTRY    </a>
             </div>
             </div>
             </div>
             
            <div class="col-xs-27 col-sm-9 col-md-6">
             <div class="thumbnail">
             <div class="caption">
             <p>VIEW APPOINTMENTS</p>
             <a href="AdminViewTest.aspx" 
                     class="btn btn-info btn-xs" role="button" style="color: #000000">     VIEW    </a>
             </div>
             </div>
             </div>
             
             <div class="col-xs-27 col-sm-9 col-md-6">
             <div class="thumbnail">
             
             <div class="caption">
             <p>PATIENT REPORTS PORTAL</p>
             <a href="AdminSendReport.aspx"
                     class="btn btn-info  btn-xs" role="button" style="color: #000000">SEND REPORT</a>
             </div>
             </div>
             </div>

              <div class="col-xs-27 col-sm-9 col-md-6">
             <div class="thumbnail">
             
             <div class="caption">
             <p>PATIENT SUPPORT</p>
             <a href="AdminChatReply.aspx"
                     class="btn btn-info  btn-xs" role="button" style="color: #000000">OPEN</a>
             </div>
             </div>
             </div>
             <br />
             <br />
             <a href="AdminLogin.aspx" class="btn btn-info  btn-xs" role="button" style="color: #000000">LOGOUT</a>
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
               <br />
             <br />
             <br />
             <br />
             <br />
            
               <br />
             <br />
           <p>-----------------------------------------------------------------------------------------------------------</p>
            <p>copyrights@limeshospital</p> 
                         
    </form>
</body>
</html>
