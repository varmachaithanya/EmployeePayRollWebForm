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
    public partial class DLogin : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=BOOK-L13QO8KE6K\SQLEXPRESS01;Initial Catalog=ApiCoreDb;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionstring))
            {

              

                    SqlCommand cmd = new SqlCommand("spLoginModel", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    int Id = int.Parse(TextBox1.Text);
                    string Name = TextBox2.Text;
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@Name", Name);
                    conn.Open();
                    cmd.ExecuteNonQuery();

                    Session["Id"] = Convert.ToInt32(TextBox1.Text);
                    Session["Name"] = TextBox2.Text.ToString();
                Response.Redirect("DeletedData.aspx");
            }
        }
    }
}