using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Employee__Details_2
{
    public partial class Crud_Operstion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void Empty()
        {
            TextBox1.Text = "";
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;

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


            Empty();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // for updated...
            string q = "update  Emp_2 set name='" + TextBox1.Text + "',address='" + TextBox2.Text + "',city='" + TextBox3.Text + "'where id=" + TextBox4.Text;
            SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=SHUBHAM;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(q, cn);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
                Response.Write("Data Updated Successfully");
            else
                Response.Write("Not Updataeted");


            Empty();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // delete code...
            string q = "delete from Emp_2 where id=" + TextBox4.Text;
            SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=SHUBHAM;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(q, cn);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
                Response.Write("Data Deleted Successfully");
            else
                Response.Write("Data Not Deleted");


            Empty();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            // data show....
            string q = "select name,address,city from Emp_2 where id=" + TextBox4.Text;
            SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=SHUBHAM;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(q, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();

            }
            else
            {
                Response.Write("Data Not Found....");
                Empty();
            }


        }
    }
}