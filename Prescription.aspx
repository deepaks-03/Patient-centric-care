<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prescription.aspx.cs" Inherits="Prescription" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prescription</title>
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
        .style1
        {
            font-family: "Candara Light";
        }
    </style>
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
 
    <div align="center">
    <br />
   <br />
       <br />
    <div class="container" id="Div" backcolor="skyblue>
     <div class="col-xs-25 col-sm-7 col-md-6">
             <div class="thumbnail">
             <div class="caption">
    <table>
    <tr>
    <td>
    <asp:Label ID="uname" runat="server" Text="Username" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="black"></asp:Label>
    </td>
    <td>:</td>
    <td>
    <asp:DropDownList ID="ddl_uname" runat="server" AppendDataBoundItems="True" 
            DataTextField="uname" DataValueField="uname" AutoPostBack="True">
    <asp:ListItem>---Select---</asp:ListItem>
    </asp:DropDownList>
    </td>
    <td><asp:Button ID="hd" runat="server" Text="get" Font-Bold="true" onclick="hd_Click" /></td>
    </tr>

    <tr><td>&nbsp;</td></tr>

    <tr>
    <td>
    <asp:Label ID="id" runat="server" Text="Test id" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="black"></asp:Label>
    </td>
    <td>:</td>
    <td>
    <asp:TextBox ID="txt_id" runat="server" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="Black"></asp:TextBox>
    </td>
    </tr>

     <tr><td>&nbsp;</td></tr>

    <tr>
    <td>
    <asp:Label ID="address" runat="server" Text="Patient address" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="black"></asp:Label>
    </td>
    <td>:</td>
    <td>
   <asp:TextBox ID="txt_address" runat="server" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="black" Rows="10" Columns="30"></asp:TextBox>
    </td>
    </tr>

     <tr><td>&nbsp;</td></tr>

    <tr>
    <td>
    <asp:Label ID="email" runat="server" Text="Patient Email" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="black"></asp:Label>
    </td>
    <td>:</td>
    <td>
   <asp:TextBox ID="txt_email" runat="server" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="black" Rows="10" Columns="30"></asp:TextBox>
    </td>
    </tr>

     <tr><td>&nbsp;</td></tr>

    <tr>
    <td>
    <asp:Label ID="mode" runat="server" Text="Test Mode" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="black"></asp:Label>
    </td>
    <td>:</td>
    <td>
    <asp:TextBox ID="txt_mode" runat="server" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="black" ></asp:TextBox>
    </td>
    </tr>

     <tr><td>&nbsp;</td></tr>

    <tr>
    <td>
    <asp:Label ID="file" runat="server" Text="Report File" Font-Bold="false" Font-Names="Candara Light" 
    Font-Size="X-Large" ForeColor="black"></asp:Label>
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
     <asp:Button ID="submit" runat="server" Text="Send" Font-Bold="true" Font-Names="Candara Light" 
    Font-Size="Large" ForeColor="black" backcolor="lightgreen" onclick="submit_Click" 
             Height="46px" Width="146px" />
     </td>
     </tr>
     </table>
     </div>
     
    </form>
</body>
</html>
