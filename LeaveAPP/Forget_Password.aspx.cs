using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveAPP
{
    public partial class Forget_Password : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = DESKTOP-5MTLCKA;Initial catalog = Emp_Leave_Management;Integrated Security = true");
        
        void clear()
        {
            Email.Text = "";
            Password.Text = "";
            Confirmpassword.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_message.Text = "";
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand Update = new SqlCommand("spUpdatePassword", con);
                Update.CommandType = System.Data.CommandType.StoredProcedure;
                Update.Parameters.AddWithValue("@Email", Email.Text);
                Update.Parameters.AddWithValue("@password", Password.Text);
                con.Open();
                Update.ExecuteNonQuery();
                con.Close();
                clear();
                lbl_message.Text = "Password Changed Successfully";
            }
            catch(Exception ex)
            {
                lbl_message.Text = ex.Message;
            }
            
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}