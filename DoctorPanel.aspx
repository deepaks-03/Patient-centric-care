<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorPanel.aspx.cs" Inherits="DoctorPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Panel</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Doctor Panel</h2>
            
            <label for="txtPatientName">Patient Name:</label>
            <asp:TextBox ID="txtPatientName" runat="server"></asp:TextBox>
            <br />
            
            <label for="txtPrescription">Prescription:</label>
            <asp:TextBox ID="txtPrescription" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
            <br />
            
            <asp:Button ID="btnPrescribe" runat="server" Text="Prescribe" OnClick="btnPrescribe_Click" />
        </div>
    </form>
</body>
</html>
