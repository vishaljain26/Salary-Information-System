using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalaryInformationSystem
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "Edit")
            {
                Response.Redirect("Edit_Account.aspx?emp_id="+e.CommandArgument.ToString());
            }
            else if (e.CommandName.ToString() == "Delete")
            {
                Response.Redirect("Delete_Account.aspx?emp_id="+e.CommandArgument.ToString());
            }
        }

      
      

     
      
    }
}