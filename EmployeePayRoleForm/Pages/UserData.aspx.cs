﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace EmployeePayRoleForm
{
    public partial class UserData : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=BOOK-L13QO8KE6K\SQLEXPRESS01;Initial Catalog=ApiCoreDb;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "refresh", "window.setTimeout('window.location.reload(true);',60000);", true);
            if (Session["Id"] != null)
            {
                Get();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        void Get()
        {
            using (SqlConnection conn = new SqlConnection(connectionstring))
            {
                SqlCommand cmd = new SqlCommand("spGetEmployeeById", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                int Id = (int)Session["Id"];

                cmd.Parameters.AddWithValue("Id", Id);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}