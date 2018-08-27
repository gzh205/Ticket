using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticket
{
    public partial class InputNewPwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TicketConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("update HuiYuan set HuiYuanPassword = '"+TextBox1.Text+"' where HuiYuanHao = '"+Session["UserInfo"] +"'", cnn);
                cnn.Open();
                int num = cmd.ExecuteNonQuery();
                cnn.Close();
                if (num == 1)
                {
                    Session["UserInfo"] = TextBox1.Text;
                    Response.Write(createDlgStr("密码成功被修改"));
                    Response.Redirect("./index.aspx");
                }
                else
                {
                    Response.Write(createDlgStr("密码修改失败!"));
                }
            }
            catch (SqlException ex)
            {
                Response.Write(createDlgStr("数据库查询失败" + ex.Message));
            }
        }
        public String createDlgStr(string tmp)
        {
            return ("<script>alert(\"" + tmp + "\");</script>");
        }
    }
}