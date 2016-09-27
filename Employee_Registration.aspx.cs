using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SalaryInformationSystem
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                    cmd.Open();
                SqlCommand cm = new SqlCommand("select MAX(emp_id) from new_reg", cmd);
                TextBox1.Text= (Convert.ToInt32(cm.ExecuteScalar())+1).ToString();
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs("C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\SalaryInformationSystem\\SalaryInformationSystem\\Resumes\\" + FileUpload1.FileName);

            }
            try
            {
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    if (cmd.State != System.Data.ConnectionState.Open)
                        cmd.Open();
                    
                    SqlCommand cm = new SqlCommand("insert into new_reg values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedItem.Value + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + FileUpload1.FileName + "')", cmd);
                    cm.ExecuteNonQuery();
                    SqlCommand cm1 = new SqlCommand("insert into Resumes values('"+TextBox11.Text+"','"+TextBox1.Text+"','"+FileUpload1.FileName+"','"+ dt.ToShortDateString() + " " + dt.ToShortTimeString() + "')", cmd);
                    cm1.ExecuteNonQuery();
                    //Response.Redirect("Employee_Registration.aspx");
                    Response.Write("<script language='javascript'>" + Environment.NewLine + "alert('Your account has been Activated!!!')</script>");

                }
            }
            catch (Exception)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        
    }
}