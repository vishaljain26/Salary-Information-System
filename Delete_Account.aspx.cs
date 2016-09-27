using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace SalaryInformationSystem
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              string emp_id = Request.QueryString["emp_id"];
              if (!Page.IsPostBack)
              {
                  using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                  {
                      if (cmd.State != System.Data.ConnectionState.Open)
                          cmd.Open();
                      using (SqlCommand cm = new SqlCommand("select emp_name,designation from new_reg where emp_id='" + emp_id + "'", cmd))
                      {
                          using (SqlDataReader rdr = cm.ExecuteReader())
                          {
                              while (rdr.Read())
                              {
                                  TextBox1.Text = emp_id;
                                  TextBox2.Text = rdr["emp_name"].ToString();
                                  TextBox3.Text = rdr["designation"].ToString();
                              }
                          }
                      }
                      
                  }
              }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                    cmd.Open();

                using (SqlCommand cm1 = new SqlCommand("delete from new_reg where emp_id='" + TextBox1.Text + "'", cmd))
                {
                    cm1.ExecuteNonQuery();
                }
                using (SqlCommand cm2 = new SqlCommand("insert into Deleted_Employees values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", cmd))
                {
                    cm2.ExecuteNonQuery();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}