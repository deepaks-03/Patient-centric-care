<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HospitalReportSending.aspx.cs" Inherits="HospitalReportSending" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Report</title>
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
     <li><a href="HospitalViewBooking.aspx">View Booking</a></li>
      <li><a href="HospitalReportSending.aspx">Report Sending</a></li>
       <li><a href="Home.aspx">Logout</a></li>
    </ul>
  </div>
</nav>
    <form id="form1" runat="server">
     <div align="center">
    <center><h3 style="color:White">Report Details</h3></center>
    </div>
    <div align="center">
    <table>
    <tr>
    <td>
    <asp:Label ID="uname" runat="server" Text="Username" Font-Bold="false" Font-Names="Monotype Corsiva" 
    Font-Size="X-Large" ForeColor="White"></asp:Label>
    </td>
    <td>:</td>
    <td>
    <asp:DropDownList ID="ddl_uname" runat="server" AppendDataBoundItems="True" 
            DataTextField="uname" DataValueField="uname" AutoPostBack="True">
    <asp:ListItem>---Select---</asp:ListItem>
    </asp:DropDownList>
    </td>
    <td><asp:Button ID="hd" runat="server" Text="get" onclick="hd_Click" /></td>
    </tr>

    <tr><td>&nbsp;</td></tr>

    <tr>
    <td>
    <asp:Label ID="details" runat="server" Text="Patient Suggested Tests" Font-Bold="false" Font-Names="Monotype Corsiva" 
    Font-Size="X-Large" ForeColor="White"></asp:Label>
    </td>
    <td>:</td>
    <td>
    <asp:TextBox ID="txt_details" runat="server" Font-Bold="false" Font-Names="Monotype Corsiva" 
    Font-Size="X-Large" ForeColor="Red" TextMode="MultiLine" Rows="3" Columns="30"></asp:TextBox>
    </td>
    </tr>

     <tr><td>&nbsp;</td></tr>

    

    <tr>
    <td>
    <asp:Label ID="file" runat="server" Text="Report File" Font-Bold="false" Font-Names="Monotype Corsiva" 
    Font-Size="X-Large" ForeColor="White"></asp:Label>
    </td>
    <td>:</td>
    <td>
    <asp:FileUpload ID="fileupload" runat="server" />
    </td>
    </tr>

     <tr><td>&nbsp;</td></tr>

   
     <tr>
     <td>
     &nbsp;
     </td>
     <td>&nbsp;</td>
     <td>
     <asp:Button ID="submit" runat="server" Text="Send" Font-Bold="false" Font-Names="Monotype Corsiva" 
    Font-Size="X-Large" ForeColor="Blue" onclick="submit_Click" />
     </td>
     </tr>
     </table>
     </div>
    </form>
</body>
</html>
