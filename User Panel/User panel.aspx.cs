using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Employee__Details_2.User_Panel
{
    public partial class User_panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //for inserted...
            string q = "insert into Emp_2 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=SHUBHAM;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(q, cn);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
                Response.Write("Data Insrted Successfully");
            else
                Response.Write("Data Not Insrted");

            TextBox1.Text = "";
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;


        }
    }
}