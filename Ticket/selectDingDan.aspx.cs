using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticket
{
    public partial class selectDingDan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1.HeaderRow != null)
            {
                
                GridView1.HeaderRow.Cells[0].Text = "班次编号";
                GridView1.HeaderRow.Cells[1].Text = "剩余票数";
                GridView1.HeaderRow.Cells[2].Text = "价格";
                GridView1.HeaderRow.Cells[3].Text = "出发时间";
                GridView1.HeaderRow.Cells[4].Text = "目的地";
                GridView1.HeaderRow.Cells[5].Text = "出发点";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("./searchBanCi.aspx");
        }
    }
}