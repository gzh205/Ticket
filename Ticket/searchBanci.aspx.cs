using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticket
{
    public partial class searchBanci : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public String createDlgStr(string tmp)
        {
            return ("<script>alert(\"" + tmp + "\");</script>");
        }

        protected void drop_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex != -1 && DropDownList2.SelectedIndex == -1)
            {
                GridView1.DataSourceID = "SqlDataSource4";
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["select"] = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("./payWeb.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("./selectDingDan.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("./index.aspx");
        }
    }
}