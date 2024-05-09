using System;
using System.Web.UI;

public partial class DoctorPanel : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Page load logic (if needed)
    }

    protected void btnPrescribe_Click(object sender, EventArgs e)
    {
        // Get patient name and prescription from the form
        string patientName = txtPatientName.Text;
        string prescription = txtPrescription.Text;

        // Call a method to send prescription to the patient portal
        bool prescriptionSent = SendPrescriptionToPortal(patientName, prescription);

        // Display success or error message
        if (prescriptionSent)
        {
            Response.Write("Prescription sent successfully!");
        }
        else
        {
            Response.Write("Error sending prescription. Please try again.");
        }
    }

    private bool SendPrescriptionToPortal(string patientName, string prescription)
    {
        // Implement logic to send prescription to patient portal
        // This could involve making an API request, updating a database, etc.
        // For demonstration purposes, we'll just return true here.
        return true;
    }
}
