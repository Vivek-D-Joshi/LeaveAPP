using System;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace LeaveAPP
{
    public partial class EmployeeData1 : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-5MTLCKA;Initial catalog=Emp_Leave_Management;Integrated Security=true");
        
        void InsertLeaveBalance()
        {
            SqlDataAdapter getDataLeaveMaster = new SqlDataAdapter("Select * from Leave_master", con);
            DataSet ds = new DataSet();
            getDataLeaveMaster.Fill(ds);
            SqlCommand InsertLeaveBalance;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                InsertLeaveBalance = new SqlCommand("spInsertLeaveBalance", con);
                InsertLeaveBalance.CommandType = CommandType.StoredProcedure;
                InsertLeaveBalance.Parameters.AddWithValue("@EmpID", txt_EmpID.Text);
                InsertLeaveBalance.Parameters.AddWithValue("@LeaveType", ds.Tables[0].Rows[i]["Leave_type"]);
                InsertLeaveBalance.Parameters.AddWithValue("@Total_Leaves", ds.Tables[0].Rows[i]["No_of_Leaves"]);
                InsertLeaveBalance.Parameters.AddWithValue("@Leave_Take",0);
                con.Open();
                InsertLeaveBalance.ExecuteNonQuery();
                con.Close();
            }
        }
        void ClearData()
        {
            txt_Empname.Text = "";
            txt_EmpAdd.Text = "";
            txt_employeemail.Text = "";
            Txt_EmpPhone.Text = "";
            SqlCommand cmd = new SqlCommand("SELECT TOP 1 * FROM Employee_master ORDER BY EmpId DESC", con);
            con.Open();
            SqlDataReader SearchID = cmd.ExecuteReader();
            if (SearchID.Read())
            {
                int EmpID = Convert.ToInt32(SearchID[0]);
                txt_EmpID.Text = (EmpID).ToString();
            }
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT TOP 1 * FROM Employee_master ORDER BY EmpId DESC", con);
            con.Open();
            SqlDataReader SearchID = cmd.ExecuteReader();
            if (SearchID.Read())
            {
                int EmpID = Convert.ToInt32(SearchID[0]);
                txt_EmpID.Text = (EmpID + 1).ToString();
            }
            con.Close();
            lbl_message.Text = "";
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand Insert = new SqlCommand("spInsertEmployee_master", con);
                Insert.CommandType = CommandType.StoredProcedure;
                Insert.Parameters.AddWithValue("@EmpID",txt_EmpID.Text);
                Insert.Parameters.AddWithValue("@EmpName", txt_Empname.Text);
                Insert.Parameters.AddWithValue("@Address", txt_EmpAdd.Text);
                Insert.Parameters.AddWithValue("@Email", txt_employeemail.Text);
                Insert.Parameters.AddWithValue("@Phone", Txt_EmpPhone.Text);
                Insert.Parameters.AddWithValue("@Designation", Drp_Designation.SelectedValue);
                con.Open();
                Insert.ExecuteNonQuery();
                con.Close();
                ClearData();
                InsertLeaveBalance();
                lbl_message.Text = "Record Submitted Successfully";
            }
            catch (Exception ex)
            {
                if (ex.Message != null)
                {
                    lbl_message.Text = /*ex.Message;*/ "Record is already Present";
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