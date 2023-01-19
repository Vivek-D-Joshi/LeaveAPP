
using System;
using System.Data.SqlClient;
using System.Net;

namespace LeaveAPP
{
    public partial class ClientData : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = DESKTOP-5MTLCKA;Initial catalog = Emp_Leave_Management;Integrated Security = true");
        void ClearData()
        {
            txt_clientname.Text = "";
            txt_clientaddress.Text = "";
            txt_officeemail.Text = "";
            txt_officephoneno.Text = "";
            txt_contactpersonname.Text = "";
            txt_contactpersonemail.Text = "";
            txt_contactpersonphoneno.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_message.Text = "";
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand Insert = new SqlCommand("spInsertClientData", con);
                Insert.CommandType = System.Data.CommandType.StoredProcedure;
                Insert.Parameters.AddWithValue("@Client_Name", txt_clientname.Text);
                Insert.Parameters.AddWithValue("@Address", txt_clientaddress.Text);
                Insert.Parameters.AddWithValue("@Office_Email", txt_officeemail.Text);
                Insert.Parameters.AddWithValue("@Office_Phone", txt_officephoneno.Text);
                Insert.Parameters.AddWithValue("@Contact_Person", txt_contactpersonname.Text);
                Insert.Parameters.AddWithValue("@Contact_Person_Email", txt_contactpersonemail.Text);
                Insert.Parameters.AddWithValue("@Contact_Person_Mobile", txt_contactpersonphoneno.Text);
                con.Open();
                Insert.ExecuteNonQuery();
                con.Close();
                ClearData();
                lbl_message.Text = "Record Submitted Successfully";
            }
            catch (Exception ex)
            {
                if (ex.Message == null)
                {
                    lbl_message.Text = "Record is already Present";
                }
                else
                {
                    lbl_message.Text = "Record is already Submitted";
                }
            }
        }
    }
}