<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientDashboard.aspx.cs" Inherits="PatientDashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>PATIENT Dashboard</title>
     <script src="css/3.2.1-jquery.min.js" type="text/javascript"></script>
    <link href="css/3.3.7-bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="css/3.3.7-bootstrap.min.js" type="text/javascript"></script>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="css/bootstrap.min.js" type="text/javascript"></script>
    <link href="css/jquery.bxslider.css" rel="stylesheet" type="text/css" />
    <script src="css/jquery.bxslider.js" type="text/javascript"></script>
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
      <style type="text/css">
          #Div
          {
              height: 475px;
              width: 1643px;
          }
         
          .style2
          {
              color: #FFFFFF;
          }
         
      </style>
      
</head>
<body>

    <form id="form1" runat="server">
     <div align="center">

     <div class="panel panel-info">
     <div class="panel-heading"><asp:Label ID="welcome" runat="server" Text="WELCOME" ></asp:Label>
     <asp:Label ID="lbl_session_uname" runat="server" Text="HR" ></asp:Label>
    </div>

    
    </br>
    </br>
    </br> 
    
    
            <br />
            <br /> 
             <div class="container" id="Div">
             
            
             <div class="col-xs-18 col-sm-6 col-md-4">
             <div class="thumbnail">
             <img src="image/ap1.jpg" alt="">
             <div class="caption">
             <p>APPOINT TEST</p>
             <a href="PatientLabtest.aspx" 
                     class="btn btn-info btn-xs" role="button" style="color: #000000">GO</a>
             </div>
             </div>
             </div>
             
            
             <div class="col-xs-18 col-sm-6 col-md-4">
             <div class="thumbnail">
             <img src="image/rp1.jpg" alt="">
             <div class="caption">
             <p>TEST REPORT</p>
             <a href="PatientLabReport.aspx" 
                     class="btn btn-info btn-xs" role="button" style="color: #000000">GO</a>
             </div>
             </div>
             </div>


             <div class="col-xs-18 col-sm-6 col-md-4">
             <div class="thumbnail">
             <img src="image/cht.jpg" alt="">
             <div class="caption">
             <p>VEIW RECENT PRESCRIPTION</p>
             <a href="PatientPrescription.aspx" 
                     class="btn btn-info btn-xs" role="button" style="color: #000000">   GO  </a>
             </div>
             </div>
             </div>

             
             
                 <br />
                 <br />
                 <br />
                
         <p class="style2">hii</p>
            <a href="PatientChat.aspx" 
                     class="btn btn-info btn-xs"  role="button" style="color: #000000">HELP?</a> <a href="PatientLogin.aspx" 
                     class="btn btn-info btn-xs"  role="button" style="color: #000000">LOGOUT</a>
             
               <br />
            <br />
            <br /> 
              
                
                 <br />
                 <br />
                 
            <p>TO KNOW AVAILABLE TYPES OF TEST IN HOSPITAL</p>
             <a href="PatientViewTestes.aspx" 
                     class="btn btn-info btn-xs"  role="button" style="color: #000000">click Here</a>
             <br />
            <br />
            <br /> 
            </div>
              <br />
            <br />
            <br /> 
             <br /> 
             </div>
             </div>
             

            <center><p>copyrights@limes hospital</p></center>

    </form>
</body>
</html>
