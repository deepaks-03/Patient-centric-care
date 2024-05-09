<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminChatReply.aspx.cs" Inherits="AdminChatReply" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Chat Reply</title>
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
    
       <li><a href="AdminChatReply.aspx">Refresh</a></li>
       <li><a href="AdminDashboard.aspx">Back to Dashboard</a></li>
    </ul>
  </div>
</nav>
    <form id="form1" runat="server">
  <div align="center">
    <center><h3 style="font-family:Verdana;color:White;">Chat Reply</h3></center>
    </div>
    <div class="View_Details">
        <div class="container">
            <div class="row">
        <asp:GridView ID="GridView1" class="table table-bordered grid" AutoGenerateColumns="false" runat="server" OnRowDeleting="GridView1_RowDeleting" 
         OnRowEditing="OnRowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="OnCancel">
           <Columns>
           <asp:TemplateField HeaderText="USERNAME">
                <ItemTemplate>
                <asp:Label ID="id" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="Black" BackColor="skyBlue"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="Black" BackColor="White"/>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText="USER QUERY">
                <ItemTemplate>
                <asp:Label ID="query" runat="server" Text='<%#Eval("query") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="Black" BackColor="skyBlue"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="Black" BackColor="White" />
                   <EditItemTemplate>
                   <asp:TextBox ID="txt_query" runat="server" Text='<%#Eval("query") %>'></asp:TextBox>
                   </EditItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="LAB REPLY">
                
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="Black" BackColor="skyBlue"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="Black" BackColor="White" />
                   <EditItemTemplate>
                   <asp:TextBox ID="txt_reply" runat="server"></asp:TextBox>
                   </EditItemTemplate>
                </asp:TemplateField>

               
                <asp:TemplateField HeaderText="Assign">
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="Black" BackColor="skyBlue"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="Black" BackColor="White" />
                <ItemTemplate>
                <asp:Button ID="lnk_edit" runat="server" Text="Reply" Font-Size="small" BackColor="#2ECC71"  ForeColor="black" CommandName="Edit"></asp:Button>
                <asp:Button ID="lnk_delete" runat="server" Text="Delete" Font-Size="small" BackColor="Red"  ForeColor="black" CommandName="Delete"></asp:Button>
                </ItemTemplate>
                <EditItemTemplate>
                <asp:Button ID="lnk_save" runat="server" Text="Send" Font-Size="small" BackColor="#2ECC71"  ForeColor="black" CommandName="Update"></asp:Button>
                <asp:Button ID="lnk_cancel" runat="server" Text="Cancel" Font-Size="small" BackColor="Red"  ForeColor="black" CommandName="Cancel"></asp:Button>
                </EditItemTemplate>
                </asp:TemplateField>
                </Columns>
                </asp:GridView>
                </div>
                </div>
                </div>
    </form>
</body>
</html>
