using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearningManagementSystem
{
    public partial class UsersDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["ID"].ToString();
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            string str = "~/fonts/";
            string str1 = "";

            IDataReader dr = (IDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (dr.Read())
            {
                str1 = dr["studentsPhoto"].ToString();
                studentsID.Text = dr["studentsID"].ToString();
                studentsEmail.Text = dr["email"].ToString();
                student.Text = dr["Student"].ToString();
                studentsGender.Text = dr["studentsGender"].ToString();
                studentsDOB.Text = dr["studentsDOB"].ToString();
                studentsAddress.Text = dr["Address"].ToString();
                studentsEnrollmentDat.Text = dr["studentsEnrollmentDate"].ToString();
                companyName.Text = dr["companyName"].ToString();
                courseName.Text = dr["courseName"].ToString();
                supervisor.Text = dr["Supervisor"].ToString();
                studentsNumber.Text = dr["number"].ToString();
            }
            if (str1 != "N/A") Image1.ImageUrl = str + str1;
            else Image1.ImageUrl = "~/fonts/avatar.png";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}