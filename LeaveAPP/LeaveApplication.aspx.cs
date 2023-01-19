
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace LeaveAPP
{
    public partial class LeaveApplication : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-5MTLCKA;Initial catalog=Emp_Leave_Management;Integrated Security=true");
        SqlCommand Insert;
        void ClearData()
        {
            txt_startDate.Text = "";
            txt_endDate.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_message.Text = "";
            lblin_EmpID.Text = Session["EmpID"].ToString();
            lblin_EmpName.Text = Session["Name"].ToString(); 
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                Insert = new SqlCommand("spInsertLeaveApplication", con);
                Insert.CommandType = CommandType.StoredProcedure;
                Insert.Parameters.AddWithValue("@EmpID",lblin_EmpID.Text);
                Insert.Parameters.AddWithValue("@Leave_Type", Drp_LeaveType.SelectedValue);
                Insert.Parameters.AddWithValue("@Start_Date", txt_startDate.Text);
                Insert.Parameters.AddWithValue("@End_Date", txt_endDate.Text);
                Insert.Parameters.AddWithValue("@Name", lblin_EmpName.Text);
                Insert.Parameters.AddWithValue("@Status", "Pending");
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

        protected void Clear_Click(object sender, EventArgs e)
        {
            ClearData();
        }
    }
}