using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticket
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["ValidateNum"].ToString() == TextBox2.Text)
            {
                try
                {
                    SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TicketConnectionString"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("select * from admin", cnn);
                    cnn.Open();
                    string num = (string)cmd.ExecuteScalar();
                    cnn.Close();
                    if (num == TextBox1.Text)
                    {
                        Response.Redirect("./addBanCi.aspx");
                    }
                    else
                    {
                        Response.Write(createDlgStr("登录失败"));
                    }
                }
                catch (SqlException ex)
                {
                    Response.Write(createDlgStr("数据库查询失败" + ex.Message));
                }
            }
        }

        public String createDlgStr(string tmp)
        {
            return ("<script>alert(\"" + tmp + "\");</script>");
        }
    }
}