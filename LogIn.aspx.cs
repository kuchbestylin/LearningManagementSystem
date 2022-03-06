using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearningManagementSystem
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            Label1.Text = e.Command.Parameters["@Feedback"].Value.ToString();
            int ID = (int)e.Command.Parameters["@studentID"].Value;
            if(ID != 0 & ID != 2)
            {
                Session["ID"] = ID;
                Response.Redirect("~/UsersDashboard.aspx");
            }
            else if(ID == 2)
            {
                Response.Redirect("~/Administration.aspx");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            IDataReader dr = (IDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (dr.Read())
            {
                string img = dr[0].ToString();
                if (img != "false") Image1.ImageUrl = "~/fonts/" + img;
                else Image1.ImageUrl = "~/fonts/avatar.png";
            }

        }
    }
}