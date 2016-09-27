using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalaryInformationSystem
{
    public partial class MyAccount : System.Web.UI.Page
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
                    
                    using (SqlCommand cm = new SqlCommand("select * from new_reg where emp_name='" + emp_id + "'", cmd))
                    {
                        using(SqlDataReader rdr=cm.ExecuteReader())
                        {
                            while(rdr.Read())
                            {
                                id.Text = rdr["emp_id"].ToString();
                                name.Text = rdr["emp_name"].ToString();
                                sex.Text = rdr["sex"].ToString();
                                f_name.Text = rdr["father_name"].ToString();
                                ph_no.Text = rdr["contact_no"].ToString();
                                designation.Text = rdr["designation"].ToString();
                                dob.Text = rdr["dob"].ToString();
                                email.Text = rdr["email"].ToString();
                                salary.Text = rdr["salary"].ToString();
                                address.Text = rdr["address"].ToString();
                                pre_exp.Text = rdr["previous_experience"].ToString();
                                edu_qual.Text = rdr["educational_qualification"].ToString();

                            }
                        }
                        
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string emp_name = Request.QueryString["emp_name"];
            Response.Redirect("Edit_Account.aspx?emp_name=" + emp_name);
        }
    }
}