using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace LeaveAPP
{
    public partial class LeaveStatusHR : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data source=DESKTOP-5MTLCKA;Initial catalog=Emp_Leave_Management;Integrated Security=true");
        SqlCommand Update;
       
        int EmpID;
        int AppID;
        string LeaveType;
        string LeaveStatus;

        void UpdateLeaveBalanceApprove(DateTime StartDate,DateTime EndDate) 
        {
            int LeaveDays = Convert.ToInt32((EndDate - StartDate).TotalDays);

            SqlCommand cmd = new SqlCommand("select EmployeeID,Leave_Type,Leave_Take,Leave_Balance,Total_Leaves from Employee_Leave_Balance " +
                                            "where EmployeeID = @EmpID and Leave_Type = @Type", conn);
            cmd.Parameters.AddWithValue("@EmpID",EmpID);
            cmd.Parameters.AddWithValue("@Type",LeaveType);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.Read())
            {
                int LeaveTake = Convert.ToInt32(reader[2].ToString());
                int LeaveBalance = Convert.ToInt32(reader[3].ToString());
                int TotalLeaves = Convert.ToInt32(reader[4].ToString());
                LeaveBalance = LeaveBalance - (LeaveDays+1); 
                if (LeaveStatus == "Pending" || LeaveStatus == "Rejected")
                {
                    conn.Close();
                    LeaveTake += (LeaveDays + 1);
                    SqlCommand Update = new SqlCommand("Update Employee_Leave_Balance Set Leave_Take = @LeaveTake,Leave_Balance = @Balance Where EmployeeId = @EmpID and Leave_Type = @Type",conn);
                    Update.Parameters.AddWithValue("@LeaveTake", LeaveTake);
                    Update.Parameters.AddWithValue("@EmpID", EmpID);
                    Update.Parameters.AddWithValue("@Type", LeaveType);
                    Update.Parameters.AddWithValue("@Balance", LeaveBalance);
                    conn.Open();
                    Update.ExecuteNonQuery();
                    conn.Close();
                }
            }
            conn.Close();
        }
        void UpdateLeaveBalanceReject(DateTime StartDate, DateTime EndDate)
        {
            int LeaveDays = Convert.ToInt32((EndDate - StartDate).TotalDays);

            SqlCommand cmd = new SqlCommand("select EmployeeID,Leave_Type,Leave_Take,Leave_Balance,Total_Leaves from Employee_Leave_Balance " +
                                            "where EmployeeID = @EmpID and Leave_Type = @Type", conn);
            cmd.Parameters.AddWithValue("@EmpID", EmpID);
            cmd.Parameters.AddWithValue("@Type", LeaveType);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                int LeaveTake = Convert.ToInt32(reader[2].ToString());
                int LeaveBalance = Convert.ToInt32(reader[3].ToString());
                int TotalLeaves = Convert.ToInt32(reader[4].ToString());
                LeaveBalance += LeaveTake;
                if (LeaveStatus == "Approved")
                {
                    conn.Close();
                    LeaveTake += (LeaveDays + 1);
                    SqlCommand Update = new SqlCommand("Update Employee_Leave_Balance Set Leave_Take = @LeaveTake, Leave_Balance = @Balance Where EmployeeId = @EmpID and Leave_Type = @Type", conn);
                    Update.Parameters.AddWithValue("@LeaveTake", LeaveTake);
                    Update.Parameters.AddWithValue("@EmpID", EmpID);
                    Update.Parameters.AddWithValue("@Type", LeaveType);
                    Update.Parameters.AddWithValue("@Balance", LeaveBalance);
                    conn.Open();
                    Update.ExecuteNonQuery();
                    conn.Close();
                }
            }
            conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "cmdApprove")
                {
                    int ID_column_index = Convert.ToInt32(e.CommandArgument.ToString());
                    EmpID = Convert.ToInt32(GridView1.Rows[ID_column_index].Cells[1].Text);
                    LeaveType = GridView1.Rows[ID_column_index].Cells[2].Text;
                    LeaveStatus = GridView1.Rows[ID_column_index].Cells[6].Text;
                    AppID = Convert.ToInt32(GridView1.Rows[ID_column_index].Cells[0].Text);
                    DateTime startDate = Convert.ToDateTime(GridView1.Rows[ID_column_index].Cells[3].Text);
                    DateTime endDate = Convert.ToDateTime(GridView1.Rows[ID_column_index].Cells[4].Text);
                    Update = new SqlCommand("UPDATE Leave_Application set Status = 'Approved' where EmpID = @EmpID and ApplicationID = @AppID", conn);
                    Update.Parameters.AddWithValue("@EmpID", EmpID);
                    Update.Parameters.AddWithValue("@AppID", AppID);
                    UpdateLeaveBalanceApprove(startDate, endDate);
                    conn.Open();
                    Update.ExecuteNonQuery();
                    conn.Close();
                }
                else if (e.CommandName == "cmdReject")
                {
                    int ID_column_index = Convert.ToInt32(e.CommandArgument.ToString());
                    EmpID = Convert.ToInt32(GridView1.Rows[ID_column_index].Cells[1].Text);
                    LeaveType = GridView1.Rows[ID_column_index].Cells[2].Text;
                    LeaveStatus = GridView1.Rows[ID_column_index].Cells[6].Text;
                    AppID = Convert.ToInt32(GridView1.Rows[ID_column_index].Cells[0].Text);
                    DateTime startDate = Convert.ToDateTime(GridView1.Rows[ID_column_index].Cells[3].Text);
                    DateTime endDate = Convert.ToDateTime(GridView1.Rows[ID_column_index].Cells[4].Text);
                    Update = new SqlCommand("UPDATE Leave_Application set Status = 'Rejected' where EmpID = @EmpID and ApplicationID = @AppID", conn);
                    Update.Parameters.AddWithValue("@EmpID", EmpID);
                    Update.Parameters.AddWithValue("@AppID", AppID);
                    UpdateLeaveBalanceReject(startDate, endDate);
                    conn.Open();
                    Update.ExecuteNonQuery();
                    conn.Close();
                }
            }
            catch(Exception ex)
            {

            } 
        }
    }
}