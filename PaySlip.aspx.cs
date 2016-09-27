using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalaryInformationSystem
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            Label13.Text = dt.ToLongDateString();
            Label7.Text = Request.QueryString["emp_id"];
            Label8.Text =Session["emp_name"].ToString();
            Label9.Text = Session["designation"].ToString();
            Label10.Text = Session["leaves"].ToString();
            Label11.Text = Session["salary"].ToString();
            Label16.Text = Session["esic"].ToString();
            Label17.Text = Session["pf"].ToString();
            Label22.Text = Session["Sal_per_day"].ToString();
            Label21.Text = Session["basic"].ToString();
            Label23.Text = Session["da"].ToString();

        }
    }
}