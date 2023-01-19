
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveAPP
{
    public partial class ProjectData : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = DESKTOP-5MTLCKA;Initial catalog = Emp_Leave_Management;Integrated Security = true");
        void ClearData()
        {
            txt_projectname.Text = "";
            txt_clientid.Text = "";
            txt_projectmanager.Text = "";
            txt_startDate.Text = "";
            txt_endDate.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_message.Text = "";
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand Insert = new SqlCommand("spInsertProjectData",con);
                Insert.CommandType = System.Data.CommandType.StoredProcedure;
                Insert.Parameters.AddWithValue("@ProjectName", txt_projectname.Text);
                Insert.Parameters.AddWithValue("@ClientID", txt_clientid.Text);
                Insert.Parameters.AddWithValue("@startDate", Convert.ToDateTime(txt_startDate.Text));
                Insert.Parameters.AddWithValue("@endDate", Convert.ToDateTime(txt_endDate.Text));
                Insert.Parameters.AddWithValue("@PMId", txt_projectmanager.Text);
                con.Open();
                Insert.ExecuteNonQuery();
                con.Close();
                ClearData();
                lbl_message.Text = "Record Submitted Successfully";
            }
            catch(Exception ex)
            {
                if (ex.Message != null)
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