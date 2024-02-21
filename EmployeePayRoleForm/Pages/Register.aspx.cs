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
    public partial class Register1 : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=BOOK-L13QO8KE6K\SQLEXPRESS01;Initial Catalog=ApiCoreDb;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Register(object sender, EventArgs e)
        {

                using (SqlConnection conn = new SqlConnection(connectionstring))
                {

                    SqlCommand cmd = new SqlCommand("spAddEmployee", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    string Name = TextBox1.Text;
                    string ProfileImage = "";
                    if (RadioButton1.Checked)
                    {
                        ProfileImage = Image1.ImageUrl;
                    }
                    if (RadioButton2.Checked)
                    {
                        ProfileImage = Image2.ImageUrl;
                    }
                    if (RadioButton3.Checked)
                    {
                        ProfileImage = Image3.ImageUrl;
                    }
                    if (RadioButton4.Checked)
                    {
                        ProfileImage = Image4.ImageUrl;
                    }
                    string Gender = RadioButtonList1.Text;
                    string Department = RadioButtonList2.Text;
                    string Salary = TextBox3.Text;
                    string StartDate = TextBox5.Text;
                    string Notes = TextBox4.Text;
                    cmd.Parameters.AddWithValue("@Name", Name);
                    cmd.Parameters.AddWithValue("@ProfileImage", ProfileImage);
                    cmd.Parameters.AddWithValue("@Gender", Gender);
                    cmd.Parameters.AddWithValue("@Department", Department);
                    cmd.Parameters.AddWithValue("@Salary", Salary);
                    cmd.Parameters.AddWithValue("@StartDate", StartDate);
                    cmd.Parameters.AddWithValue("@Notes", Notes);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                Response.Redirect("GetData.aspx");
                }
            }

          
        }
    }
