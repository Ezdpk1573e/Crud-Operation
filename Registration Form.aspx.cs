using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Employee__Details_2
{
    public partial class Registration_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "insert into Password values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButton1.Text + "')";
            SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=SHUBHAM;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(q, cn);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
                Response.Write("You Register Successfully");
            else
                Response.Write("You Do Not Register ");

            TextBox1.Text = "";
            TextBox2.Text = string.Empty;
            RadioButton1.Checked = false;
        }
    }
}