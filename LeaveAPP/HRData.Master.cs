﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveAPP
{
    public partial class HRData : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_EmpName.Text = Session["Name"].ToString();
            lbl_Designation.Text = Session["Designation"].ToString();
        }

    }
}