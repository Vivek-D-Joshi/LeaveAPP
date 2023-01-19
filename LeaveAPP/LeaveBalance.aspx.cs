using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveAPP
{
    public partial class LeaveBalance : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-5MTLCKA;Initial catalog=Emp_Leave_Management;Integrated Security=true");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from Employee_Leave_Balance where EmployeeID = @EmpID", con);
                cmd.Parameters.AddWithValue("@EmpID", Session["EmpID"]);
                SqlDataAdapter getLeaveBalance = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                getLeaveBalance.Fill(ds);

                txt_CausalLeave.Text = ds.Tables[0].Rows[0]["Leave_Balance"].ToString();
                txt_EarnedLeave.Text = ds.Tables[0].Rows[1]["Leave_Balance"].ToString();
                txt_Leavewithoutpay.Text = ds.Tables[0].Rows[2]["Leave_Balance"].ToString();
                txt_WorkFromHome.Text = ds.Tables[0].Rows[3]["Leave_Balance"].ToString();
                txt_MarriageLeave.Text = ds.Tables[0].Rows[4]["Leave_Balance"].ToString();
                txt_MaternityLeave.Text = ds.Tables[0].Rows[5]["Leave_Balance"].ToString();
                txt_PaternityLeave.Text = ds.Tables[0].Rows[6]["Leave_Balance"].ToString();
            }
            catch(Exception ex)
            {
            }
        }
    }
}