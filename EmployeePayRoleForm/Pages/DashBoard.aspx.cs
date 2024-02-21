using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayRoleForm
{
    public partial class DashBoard : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=BOOK-L13QO8KE6K\SQLEXPRESS01;Initial Catalog=ApiCoreDb;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            Get();
        }
        void Get()
        {

            using (SqlConnection conn = new SqlConnection(connectionstring))
            {
                SqlCommand cmd = new SqlCommand("spGetAllEmployee", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}