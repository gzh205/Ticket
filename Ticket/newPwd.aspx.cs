using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticket
{
    public partial class newPwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == TextBox2.Text)
            {
                try
                {
                    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["TicketConnectionString"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("update HuiYuan set HuiYuanPassword='" + TextBox1.Text + "' where HuiYuanHao='" + Session["UserInfo"] + "'", cnn);
                    cnn.Open();
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    Response.Redirect("./index.aspx");
                }
                catch(SqlException ex)
                {
                    Response.Write("<script>alert(\""+ex.Message+"\");</script>");
                }
            }
            else
            {
                Response.Redirect("两次输入的密码不一致");
            }
        }
    }
}