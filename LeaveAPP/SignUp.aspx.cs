using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LeaveAPP
{
    public partial class SignUp : System.Web.UI.Page
    {
        static SqlConnection con = new SqlConnection("Data Source = DESKTOP-5MTLCKA;Initial Catalog = Emp_Leave_Management;Integrated Security = true;");
        static SqlCommand Insert;
        static SqlCommand Search;
        static SqlDataReader EmpCheck;

        void ClearField()
        {
            Txt_Name.Text = "";
            Txt_Username.Text = "";
            Txt_Password.Text = "";
            Txt_ConfirmPassword.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Search = new SqlCommand("select * from Employee_master where EmpID = @EmpID", con);
            Search.Parameters.AddWithValue("@EmpID", Txt_ID.Text);
            con.Open();
            EmpCheck = Search.ExecuteReader();
            EmpCheck.Read();
            Session["Email"] = EmpCheck[3].ToString();
            con.Close();

            if (Session["Email"].ToString() == Txt_Username.Text)
            {
                Insert = new SqlCommand("spInsertLoginDetails", con);
                Insert.CommandType = CommandType.StoredProcedure;
                Insert.Parameters.AddWithValue("@EmpID", Txt_ID.Text);
                Insert.Parameters.AddWithValue("@username", Txt_Name.Text);
                Insert.Parameters.AddWithValue("@email", Txt_Username.Text);
                Insert.Parameters.AddWithValue("@Department", Drp_Designation.SelectedValue);
                Insert.Parameters.AddWithValue("@password", Txt_Password.Text);
                con.Open();
                Insert.ExecuteNonQuery();
                con.Close();
                ClearField();
                Response.Redirect("Login.aspx");
            }   
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            ClearField();
        }
    }
}