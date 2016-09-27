using System;
using System.Text;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace SalaryInformationSystem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        int Full=0,Half=0;
        double leaves=0,gross_salary,salary_per_day,basic,DA,PF,salary;
        double ESIC;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using(SqlConnection cmd=new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                    cmd.Open();
                leaves = 24 - Convert.ToInt32(TextBox2.Text);
                
                gross_salary = Convert.ToInt32(Label6.Text);
                basic = 0.35 * gross_salary;
                DA = 0.15 * gross_salary;
                PF = 0.12 * (basic + DA);
                ESIC = (1.75 / 100) * gross_salary;
                salary = gross_salary - (PF + ESIC + (leaves * (Convert.ToInt32(TextBox3.Text))));
                Label5.Text = "Rs." + salary.ToString();
                Session["esic"] = ESIC;
                Session["pf"] = PF;
                Session["da"] = DA;
                Session["basic"] = basic;
                Session["Sal_per_day"] = TextBox3.Text;
               

            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string emp_name="0",designation="0";
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                    cmd.Open();
                using (SqlCommand cm = new SqlCommand("select * from new_reg where emp_id='" + TextBox1.Text + "'", cmd))
                {
                    using (SqlDataReader rdr = cm.ExecuteReader())
                    {
                        while (rdr.Read())
                        {
                            emp_name = rdr["emp_name"].ToString();
                            designation = rdr["designation"].ToString();
                        }

                    }
                }
                DateTime dt = DateTime.Now;
              
                string[] salary = Label5.Text.Split('.');
                string a = (salary[1] + "." + salary[2]);
                double sal = Convert.ToDouble(a);
                
                

                if (Convert.ToInt32(TextBox2.Text) >= 20)
                {
                    using (SqlCommand cm1 = new SqlCommand("insert into salary values('" + TextBox1.Text + "','" + (24 - Convert.ToInt32(TextBox2.Text)) + "','" + sal + "','" + Convert.ToInt32(Session["pf"]) + "','" + Convert.ToInt32(Session["esic"]) + "','" + dt.Month.ToString() + "_" + dt.Year.ToString() + "')", cmd))
                    {
                        cm1.ExecuteNonQuery();
                    }
                    Session["emp_name"] = emp_name;
                    Session["designation"] = designation;
                    Session["salary"] = Label5.Text;
                    Session["leaves"] = (24 - Convert.ToInt32(TextBox2.Text));

                    Response.Redirect("PaySlip.aspx?emp_id=" + TextBox1.Text);
                }
                else
                {
                    Response.Write("<script language='javascript'>" + Environment.NewLine + "alert('Number of days worked not Sufficient!!!')</script>");
                }

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                    cmd.Open();
                using (SqlCommand cm = new SqlCommand("select COUNT(attend) from Attendance where emp_id='" + TextBox1.Text + "' and attend='P'", cmd))
                {
                    Full = Convert.ToInt32(cm.ExecuteScalar());
                }
                using (SqlCommand cm2 = new SqlCommand("select COUNT(attend) from Attendance where emp_id='" + TextBox1.Text + "' and attend='H'", cmd))
                {
                    Half = Convert.ToInt32(cm2.ExecuteScalar());
                }
                using (SqlCommand cm1 = new SqlCommand("select salary from new_reg where emp_id='" + TextBox1.Text + "'", cmd))
                {
                    salary_per_day = ((Convert.ToInt32(cm1.ExecuteScalar()) / 12) / 30);
                    TextBox3.Text = salary_per_day.ToString();
                    TextBox2.Text = (Full + Half).ToString();
                    double salary_half = (salary_per_day / 2) * Half;
                    double salary_full = (salary_per_day) * Full;
                    double tot_salary = salary_half + salary_full + (salary_per_day * 6);
                    Label6.Text = tot_salary.ToString();
                }
            }
           
        }
    }
}