using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearningManagementSystem
{
    public partial class REGISTRATION : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StdsDOB_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            String str = ProfilePhoto.PostedFile.FileName;
            SqlDataSource1.InsertParameters["studentsPhoto"].DefaultValue = str;
            

            try
            {
                SqlDataSource1.Insert();
            }
            catch (FormatException ex)
            {
                Label23.Visible = true;
            }
            
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("REGISTRATION.aspx", true);
        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            Label1.Text = e.Command.Parameters["@OUTMASSAGE"].Value.ToString();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            Button1.Enabled = true;
        }

    }
}