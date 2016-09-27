using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace SalaryInformationSystem
{
    public partial class Attendance : System.Web.UI.Page
    {
        DateTime dt = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

            //using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            //{
            //    if (cmd.State != System.Data.ConnectionState.Open)
            //        cmd.Open();
            //    TextBox1.Text = dt.ToShortDateString();
            //    using (SqlCommand cm = new SqlCommand("select emp_name from new_reg where emp_id='" + TextBox2.Text + "'", cmd))
            //    {
            //        using (SqlDataReader rdr = cm.ExecuteReader())
            //        {
            //            while (rdr.Read())
            //            {
            //                TextBox3.Text = rdr["emp_name"].ToString();
            //            }
            //        }
            //    }
            //}

            TextBox1.Text = dt.ToShortDateString();
            

            
        }
        
        
        
        protected void Button1_Click(object sender, EventArgs e)
        {

            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                    cmd.Open();
                if (TextBox4.Text == "" && TextBox2.Text!="")
                {
                    using (SqlCommand cm1 = new SqlCommand("insert into Attendance values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + dt.ToShortTimeString() + "',' ','')", cmd))
                    {
                        cm1.ExecuteNonQuery();
                    }
                }
                else
                {
                    Response.Write("<script language='javascript'>" + Environment.NewLine + "alert('Error!!!')</script>");
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                    cmd.Open();
                string[] time = dt.ToShortTimeString().Split(':');
                int t = Convert.ToInt32(time[0]);
                if (TextBox2.Text != "")
                {
                    if (TextBox4.Text.Contains(':') && t >= 16)
                    {
                        using (SqlCommand cm = new SqlCommand("update Attendance set out_time='" + dt.ToShortTimeString() + "',attend='P' where emp_id='" + TextBox2.Text + "'and date='"+dt.ToShortDateString()+"'", cmd))
                        {
                            cm.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        using (SqlCommand cm = new SqlCommand("update Attendance set out_time='" + dt.ToShortTimeString() + "',attend='H' where emp_id='" + TextBox2.Text + "'and date='"+dt.ToShortDateString()+"'", cmd))
                        {
                            cm.ExecuteNonQuery();
                        }
                    }
                }
                else
                {
                    Response.Write("<script language='javascript'>" + Environment.NewLine + "alert('Error!!!')</script>");
                }
            }
            
            
        }
        
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
            string attend="0",date="0";
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                    cmd.Open();
                
               
                    using (SqlCommand cm = new SqlCommand("select emp_name from new_reg where emp_id='" + TextBox2.Text + "'", cmd))
                    {
                        using (SqlDataReader rdr = cm.ExecuteReader())
                        {
                            while (rdr.Read())
                            {
                                TextBox3.Text = rdr["emp_name"].ToString();
                               //TextBox4.Text = rdr["in_time"].ToString();
                            }
                        }
                    }
                    try
                    {
                        using (SqlCommand cm1 = new SqlCommand("select attend,in_time,date from Attendance where emp_id='" + TextBox2.Text + "'and date='"+TextBox1.Text+"'", cmd))
                        {
                            using (SqlDataReader rdr = cm1.ExecuteReader())
                            {
                                while (rdr.Read())
                                {
                                     date = rdr["date"].ToString();
                                     attend = rdr["attend"].ToString();
                                     string[] da = date.Split('-');
                                     string[] da1 = TextBox1.Text.Split('-');

                                     if ((Convert.ToInt32(da[0]) == Convert.ToInt32(da1[0])) && (Convert.ToInt32(da[1]) == Convert.ToInt32(da1[1])) && (Convert.ToInt32(da[2]) == Convert.ToInt32(da1[2])) && (attend!="P")||(attend!="H"))
                                    {
                                        //TextBox3.Text = rdr["emp_name"].ToString();
                                        TextBox4.Text = rdr["in_time"].ToString();
                                       
                                        
                                        
                                    }
                                }
                            }
                        }

                        string[] da2 = date.Split('-');
                        string[] da3 = TextBox1.Text.Split('-');

                        if (Convert.ToInt32(da2[0]) == Convert.ToInt32(da3[0]) && Convert.ToInt32(da2[1]) == Convert.ToInt32(da3[1]) && Convert.ToInt32(da2[2]) == Convert.ToInt32(da3[2]) && attend.Contains('P') || attend.Contains('H'))
                        {
                            Response.Redirect("Attendance.aspx");
                            
                        }
                    }
                        
                    catch (Exception)
                    {
                        //Response.Write("<script language='javascript'>" + Environment.NewLine + "alert('Multiple Entries not Allowed!!!')</script>");
                    }
                
                    //using (SqlCommand cm = new SqlCommand("select emp_name from new_reg where emp_id='" + TextBox2.Text + "'", cmd))
                    //{
                    //    using (SqlDataReader rdr = cm.ExecuteReader())
                    //    {
                    //        while (rdr.Read())
                    //        {
                    //            TextBox3.Text = rdr["emp_name"].ToString();
                    //        }
                    //    }
                    //}

                
            }
            
           
        }
    }
}