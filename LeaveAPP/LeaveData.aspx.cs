
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveAPP
{
    public partial class LeaveData : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-5MTLCKA;Initial Catalog=Emp_Leave_Management;Integrated Security=true");
        void ClearData()
        {
            con.Close();
            txt_leaveID.Text = "";
            txt_NoOfLeaves.Text = "";
            lbl_message.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Close();
            lbl_message.Text = "";
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmdInsert = new SqlCommand("spInsertLeave_master", con);
                cmdInsert.CommandType = System.Data.CommandType.StoredProcedure;
                cmdInsert.Parameters.AddWithValue("@Id",txt_leaveID.Text);
                cmdInsert.Parameters.AddWithValue("@Type", Drp_LeaveType.SelectedValue);
                cmdInsert.Parameters.AddWithValue("@No_Of_Leaves", txt_NoOfLeaves.Text);
                con.Open();
                cmdInsert.ExecuteNonQuery();
                con.Close();
                lbl_message.Text = "Record Insert Successfully";
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
        protected void Update_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand Update = new SqlCommand("spUpdateLeaveMaster", con);
                Update.CommandType = System.Data.CommandType.StoredProcedure;
                Update.Parameters.AddWithValue("@Id", txt_leaveID.Text);
                Update.Parameters.AddWithValue("@Type", Drp_LeaveType.SelectedValue);
                Update.Parameters.AddWithValue("@No", txt_NoOfLeaves.Text);
                con.Open();
                Update.ExecuteNonQuery();
                con.Close();
                lbl_message.Text = "Record Update Successfully";
            }
            catch (Exception ex)
            {
                if (ex.Message == null)
                {
                    lbl_message.Text = "Update Failed";
                }
                else
                {
                    lbl_message.Text = "Record Update Successfully";
                }
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-5MTLCKA;Initial Catalog=Emp_Leave_Management;Integrated Security=true");
            SqlCommand cmdDelete = new SqlCommand("spDeleteLeave_master", con);
            cmdDelete.CommandType = System.Data.CommandType.StoredProcedure;
            try
            {
                cmdDelete.Parameters.AddWithValue("@Id", txt_leaveID.Text);
                con.Open();
                cmdDelete.ExecuteNonQuery();
                con.Close();
                lbl_message.Text = "Record Delete Successfully";
            }
            catch (Exception ex)
            {
                if (ex.Message == null)
                {
                    lbl_message.Text = "Delete Failed";
                }
                else
                {
                    lbl_message.Text = "Record is Deleted Successfully";
                }
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            ClearData();
        }
    }
}