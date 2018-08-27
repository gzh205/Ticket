using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticket
{
    public partial class payWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IEnumerable rows = SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView row in rows)
            {
                lblBanCi.Text = row[0].ToString().Trim();
                lblStart.Text = row[1].ToString().Trim();
                lblDist.Text = row[2].ToString().Trim();
                lblPrice.Text = row[3].ToString().Trim();
                lblTime.Text = row[4].ToString().Trim();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Image1.Visible = true;
            Button1.Visible = false;
            try
            {
                SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TicketConnectionString"].ConnectionString);
                SqlCommand selectCmd = new SqlCommand("select count(*) from DingDan where BanCiHao='" + Session["select"] + "'", cnn);
                cnn.Open();
                int num = (int)selectCmd.ExecuteScalar()+1;
                cnn.Close();
                SqlCommand cmd = new SqlCommand("insert into DingDan values('" + Session["select"].ToString().Trim() + "-" + num + "','" + Session["select"] + "','" + Session["UserInfo"] + "')", cnn);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
                Response.Write(createDlgStr("支付成功!"));
                Response.Write("<script>window.location.href='./searchBanCi.aspx'</script>");
            }
            catch (SqlException ex)
            {
                Response.Write(createDlgStr("票卖完了!"+ex.Message));
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("./searchBanCi.aspx");
        }

        public String createDlgStr(string tmp)
        {
            return ("<script>alert(\"" + tmp + "\");</script>");
        }
    }
}