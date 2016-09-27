using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalaryInformationSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                    cmd.Open();
                using(SqlCommand cm=new SqlCommand("select password from new_reg where username='"+TextBox1.Text+"'",cmd))

                {
                    SqlDataReader rdr = cm.ExecuteReader();
                    while (rdr.Read())
                    {
                        if (rdr["password"].ToString() == TextBox2.Text)
                        {
                            Session["User_Name"] = TextBox1.Text;
                            Response.Redirect("Home.aspx");
                        }
                        else
                        {
                            Response.Write("<script language='javascript'>" + Environment.NewLine + "alert('Wrong Inforamtion Supplied!!!')</script>");
                        }
                    }
                }
            }
        }
    }
}