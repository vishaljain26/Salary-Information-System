using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalaryInformationSystem
{
    public partial class Edit_Account : System.Web.UI.Page
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
                    
                    using (SqlCommand cm = new SqlCommand("select * from new_reg where emp_id='" + emp_id + "'", cmd))
                    {
                        using(SqlDataReader rdr=cm.ExecuteReader())
                        {
                            while(rdr.Read())
                            {
                                TextBox1.Text = rdr["emp_id"].ToString();
                                TextBox2.Text = rdr["emp_name"].ToString();
                                TextBox3.Text = rdr["sex"].ToString();
                                TextBox4.Text = rdr["father_name"].ToString();
                                TextBox5.Text = rdr["contact_no"].ToString();
                                TextBox6.Text = rdr["designation"].ToString();
                                TextBox7.Text = rdr["dob"].ToString();
                                TextBox8.Text = rdr["email"].ToString();
                                TextBox9.Text = rdr["salary"].ToString();
                                TextBox10.Text = rdr["address"].ToString();
                                TextBox11.Text = rdr["previous_experience"].ToString();
                                TextBox12.Text = rdr["educational_qualification"].ToString();
                                

                            }
                        }
                        
                    }
                    
                    using (SqlCommand cm1 = new SqlCommand("select * from Resumes where fileID='" + TextBox1.Text + "'", cmd))
                    {
                        using (SqlDataReader rdr = cm1.ExecuteReader())
                        {
                            while (rdr.Read())
                            {
                                HyperLink2.Text = rdr["filename"].ToString();
                            }
                        }
                    }
                    
                    HyperLink2.NavigateUrl = "~//Resumes//" + HyperLink2.Text + "";
                }
            }
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                    cmd.Open();
                using (SqlCommand cm = new SqlCommand("update new_reg set emp_name='" + TextBox2.Text + "',sex='" + TextBox3.Text + "',father_name='" + TextBox4.Text + "',contact_no='" + TextBox5.Text + "',designation='" + TextBox6.Text + "',dob='" + TextBox7.Text + "',email='" + TextBox8.Text + "',address='" + TextBox10.Text + "',previous_experience='" + TextBox11.Text + "',educational_qualification='" + TextBox12.Text + "' where emp_id='" + TextBox1.Text + "'", cmd))
                {
                    cm.ExecuteNonQuery();
                }
 
                                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}