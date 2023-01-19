using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveAPP
{
    public partial class Login : System.Web.UI.Page
    {
        static SqlConnection con = new SqlConnection("Data Source = DESKTOP-5MTLCKA;Initial Catalog = Emp_Leave_Management;Integrated Security = true;");
        static SqlDataReader reader;
        static SqlDataReader EmpCheck;
        static SqlCommand select;
        static SqlCommand Search;
        static string Department;
        static string Username;
        static string Password;
        static string HRPassword;
        static string SignUpID;
        void ClearData()
        {
            Txt_ID.Text = "";
            Txt_Email.Text = "";
            Txt_Password.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_messege.Text = "";
            con.Close();
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            Search = new SqlCommand("select * from Employee_master where EmpID = @EmpID", con);
            Search.Parameters.AddWithValue("@EmpID", Txt_ID.Text);
            con.Open();
            EmpCheck = Search.ExecuteReader();
            EmpCheck.Read();
            Session["EmpID"] = EmpCheck[0].ToString();
            Session["Name"] = EmpCheck[1].ToString();
            Session["Designation"] = EmpCheck[5].ToString();
            con.Close();

            select = new SqlCommand("select * from LoginDetails where Username = @uid", con);
            select.Parameters.AddWithValue("@uid", Txt_Email.Text);
            con.Open();
            reader = select.ExecuteReader();
            
            if (reader.Read())
            {
                SignUpID = reader[0].ToString();
                Username = reader[1].ToString();
                Password = reader[2].ToString();
                HRPassword = "HRKEY"+reader[2].ToString();
                Department = reader[4].ToString();
                if (Session["EmpID"].ToString() == SignUpID && Session["Designation"].ToString() == "HR" && Username == Txt_Email.Text && HRPassword == Txt_Password.Text)
                {
                    Response.Redirect("EmployeeData.aspx");
                    con.Close();
                }
                else if (Session["EmpID"].ToString() == SignUpID && Session["Designation"].ToString() != "HR" && Username == Txt_Email.Text && Password == Txt_Password.Text)
                {
                    Response.Redirect("LeaveApplication.aspx");
                    con.Close();
                }
                else if (Session["EmpID"].ToString() == SignUpID && Session["Designation"].ToString() == "HR" && Username == Txt_Email.Text && Password == Txt_Password.Text)
                {
                    Response.Redirect("LeaveApplication.aspx");
                    con.Close();
                }
                else
                {
                    lbl_messege.Text = "User not Exist";
                    con.Close();
                }
            }
            ClearData();
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            ClearData();
            con.Close();
            lbl_messege.Text = "";
        }
    }
}