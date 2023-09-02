using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webformTMDT_DoAn.homepage
{
    public partial class homeMaster : System.Web.UI.MasterPage
    {
        LOPKETNOI ketnoi = new LOPKETNOI();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql = "select * from DANHMUC";

            DataList1.DataSource = ketnoi.laydulieu(sql);
            DataList1.DataBind();
        }
       

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            string maloai = ((LinkButton)sender).CommandArgument;
            Response.Redirect("default.aspx?ml=" + maloai);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear(); Response.Redirect("login.aspx");
        }
    }
}