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
    public partial class _Default : Page
    {

        string connectionstring = @"Data Source=BOOK-L13QO8KE6K\SQLEXPRESS01;Initial Catalog=ApiCoreDb;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }



        protected void Button_Login(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }

        protected void Button_Register(object sender, EventArgs e)
        {

            Response.Redirect("Register.aspx");

        }

        
    }
}