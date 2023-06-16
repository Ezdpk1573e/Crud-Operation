using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Employee__Details_2
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "select User_Type from Password where User_Name='"+ TextBox1.Text +"'and Password='"+TextBox2.Text+"'";
            SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=SHUBHAM;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(q, cn);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                string tp = dr[0].ToString();

                if (tp.Replace(" ","") == "A")
                {
                    Response.Redirect("~/Admin Panel/Admin panel.aspx");
                }

                else
                {
                    Response.Redirect("~/User Panel/User panel.aspx");
                }
            }
            else
            {
                Response.Write("Invalid User Name And Password.....");

            }
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    string q = "insert into Emp_2 values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        //    SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=SHUBHAM;Integrated Security=True");
        //    cn.Open();
        //    SqlCommand cmd = new SqlCommand(q, cn);
        //    SqlDataReader dr = cmd.ExecuteReader();



        //    Response.Redirect("Regidtration Form.aspx");
        
    }
}