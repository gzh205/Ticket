using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Ticket
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text==""|| TextBox2.Text==""|| TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            {
                Response.Write(createDlgStr("您必须填完所有的项!"));
            }
            else if(TextBox2.Text!=TextBox3.Text)
            {
                Response.Write(createDlgStr("两次输入的密码不一致!"));
            }
            else
            {
                if(TextBox6.Text == Session["ValidateNum"].ToString())
                {
                    try
                    {
                        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TicketConnectionString"].ConnectionString);
                        SqlCommand cmd = new SqlCommand("insert into HuiYuan values('"+TextBox1.Text+"','"+TextBox4.Text+"','"+TextBox2.Text+"','"+TextBox5.Text+"')", cnn);
                        cnn.Open();
                        int num = cmd.ExecuteNonQuery();             
                        cnn.Close();
                        if(num==1)
                        {
                            Response.Write(createDlgStr("注册成功"));
                        }
                        else
                        {
                            Response.Write(createDlgStr("注册失败"));
                        }
                    }
                    catch (SqlException ex)
                    {
                        Response.Write(createDlgStr("数据库插入失败" +ex.Message));
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("./index.aspx");
        }

        public String createDlgStr(string tmp)
        {
            return ("<script>alert(\"" + tmp + "\");</script>");
        }
    }
}