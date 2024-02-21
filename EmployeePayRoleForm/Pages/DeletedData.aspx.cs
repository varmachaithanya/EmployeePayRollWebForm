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
    public partial class DeletedData : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=BOOK-L13QO8KE6K\SQLEXPRESS01;Initial Catalog=ApiCoreDb;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            delete();
            Response.Redirect("DeleteGet.aspx");
        }
        
        void delete()
        {
            using (SqlConnection conn = new SqlConnection(connectionstring))
            {

                SqlCommand cmd = new SqlCommand("spDeleteEmployee", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                int Id = (int)Session["Id"];
                cmd.Parameters.AddWithValue("@Id", Id);
                conn.Open();
                cmd.ExecuteNonQuery();
            }


        }
    }
}