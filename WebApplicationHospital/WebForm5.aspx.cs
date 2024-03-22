using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplicationHospital
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection();     //產生可以跟資料庫管理系統連接的物件(SqlConnection定義在using System.Data.SqlClient)
            string strcon = @"Data Source=(localdb)\mssqllocaldb;Initial Catalog=hhh;Integrated Security=True;Pooling=False";    //創造連接字串(用來放到時候要連接的資料庫資訊(資料名稱、密碼等資訊)
                                                                                                                                //不同資料庫管理系統他的連結字串格式都不一樣
            sqlcon.ConnectionString = strcon;   //告訴SqlConnection物件它的連結字串是什麼
            sqlcon.Open();      //要求連接物件執行open方法讓資料庫管理系統連接起來
            /*連結完成(此連結會一直存在直到自己把它Close掉)*/

            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = sqlcon;     //sqlcmd透過sqlcon這個連接物件去傳遞指令及接收物件傳遞回來的結果

            /*方法一:不安全，容易被駭客用sql injection攻擊('or 1=1 --)
            sqlcmd.CommandText = "select UId,UPass from users where UId='"+TextBox1.Text+"' and UPass='"+TextBox2.Text+"'"; //查詢指令 //單引號刮起來的地方在SQL指令就是一個字串
            SqlDataReader sqldr= sqlcmd.ExecuteReader();    //建立sqldr物件去存放sqlcmd查詢指令後的結果(透過sqlcmd.ExecuteReader()方法)
            if (sqldr.HasRows)  //若資料表中有此資料，則sqldr.HasRows屬性為True
            {
                Response.Redirect("WebForm2.aspx");
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
            */
            sqlcmd.CommandText = "select Id,Password from login where Id='" + TextBox1.Text + "'";
            SqlDataReader sqldr = sqlcmd.ExecuteReader();    //建立sqldr物件去存放sqlcmd查詢指令後的結果(透過sqlcmd.ExecuteReader()方法)
            if (sqldr.HasRows)  //若資料表中有此資料，則sqldr.HasRows屬性為True
            {
                sqldr.Read();
                if (sqldr.GetString(1) == TextBox2.Text)
                {
                    Response.Redirect("WebForm4.aspx");
                }
                else
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
            sqlcon.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}