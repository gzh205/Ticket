using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticket
{
    public partial class addBanCi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TicketConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("update admin set pwd='"+TextBox1.Text.Trim()+"'", cnn);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
                Response.Write(createDlgStr("密码修改成功"));
            }
            catch (SqlException ex)
            {
                Response.Write(createDlgStr("数据库修改失败" + ex.Message));
            }
        }

        public String createDlgStr(string tmp)
        {
            return ("<script>alert(\"" + tmp + "\");</script>");
        }
    }
}