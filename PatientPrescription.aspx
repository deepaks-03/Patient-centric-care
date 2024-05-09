<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientPrescription.aspx.cs" Inherits="PatientPrescription" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>PrescriptionReport</title>
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
    <form id="form1" runat="server">
    <asp:Label ID="lbl_sess1" runat="server"></asp:Label>
        <div align="center">
    <center><h3 style="font-family:Verdana;color:White;">PRESCRIPTION REPORT</h3></center>
    </div>
    <div class="View_Details">
        <div class="container">
            <div class="row">
        <asp:GridView ID="GridView2" class="table table-bordered grid" AutoGenerateColumns="false" runat="server" OnRowCommand="GridView2_RowCommand">
           <Columns>
           <asp:TemplateField HeaderText="USERNAME">
                <ItemTemplate>
                <asp:Label ID="uname" runat="server" Text='<%#Eval("uname") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="Black" BackColor="skyBlue"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="false" ForeColor="Black" BackColor="White"/>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText="TEST ID">
                <ItemTemplate>
                <asp:Label ID="id" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="Black" BackColor="skyBlue"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="false" ForeColor="Black" BackColor="White" />
                   
                </asp:TemplateField>

                <asp:TemplateField HeaderText="PATIENT ADDRESS">
                <ItemTemplate>
                <asp:Label ID="address" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="Black" BackColor="skyBlue"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="false" ForeColor="Black" BackColor="White"/>
                     
                 </asp:TemplateField>

                <asp:TemplateField HeaderText="TESTING MODE" >
                <ItemTemplate>
                <asp:Label ID="mode" runat="server" Text='<%#Eval("mode") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="Black" BackColor="skyblue"  Width="300px"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="false" ForeColor="Black" BackColor="White"/>
                     
                 </asp:TemplateField>

                  <asp:TemplateField HeaderText="DOWNLOAD REPORT" >
                <ItemTemplate>
                 <asp:LinkButton ID="lnkDownload" runat="server" CausesValidation="False" CommandArgument='<%# Eval("upload") %>'  
                                   CommandName="Download" Text='<%# Eval("upload") %>' /> 
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="Black" BackColor="skyBlue"  Width="300px"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"  Font-Bold="false"  ForeColor="Black" BackColor="White"/>
                     
                 </asp:TemplateField>
                </Columns>
                </asp:GridView>
                </div>
                </div>
                </div>
    </form>
</body>
</html>
