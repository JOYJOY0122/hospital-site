using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WebApplicationHospital
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strcon = WebConfigurationManager.ConnectionStrings["hhhConnectionString"].ConnectionString;
            using(SqlConnection sqlcon=new SqlConnection(strcon))
            {
                sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand();
                sqlcmd.Connection = sqlcon;
                sqlcmd.CommandText = "insert into [case] (ID, Name, Gender, Height, Weight, Birthdate, PhoneNumber, Email, Address) values (@ID, @Name, @Gender, @Height, @Weight, @Birthdate, @PhoneNumber, @Email, @Address)";

                sqlcmd.Parameters.AddWithValue("@ID", TextBox1.Text);
                sqlcmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                sqlcmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
                sqlcmd.Parameters.AddWithValue("@Height", TextBox3.Text);
                sqlcmd.Parameters.AddWithValue("@Weight", TextBox4.Text);
                sqlcmd.Parameters.AddWithValue("@Birthdate", TextBox5.Text);
                sqlcmd.Parameters.AddWithValue("@PhoneNumber", TextBox6.Text);
                sqlcmd.Parameters.AddWithValue("@Email", TextBox7.Text);
                sqlcmd.Parameters.AddWithValue("@Address", TextBox8.Text);
                //sqlcmd.Parameters.AddWithValue("@History", RadioButtonList2.SelectedItem.Text);
                sqlcmd.ExecuteNonQuery();
            }
            Response.Redirect("WebForm3.aspx");

        }
    }
}