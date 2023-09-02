using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webformTMDT_DoAn.homepage
{

    public partial class _default : System.Web.UI.Page
    {
        LOPKETNOI ketnoi = new LOPKETNOI();

        protected void Page_Load(object sender, EventArgs e)
        {


            if (IsPostBack) return;
            string maloai = Request.QueryString["ml"] + "";
            string sql = "";
            if (maloai == "")
            {
                sql = "select * from THIETBI";
            }
            else
            {
                sql = "select * from THIETBI where MADANHMUC =" + maloai;

            }

            ddl_mathang.DataSource = ketnoi.laydulieu(sql);
            ddl_mathang.DataBind();

        }
        

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            string mathietbi = ((ImageButton)sender).CommandArgument;
            Response.Redirect("chitiet.aspx?mtb=" + mathietbi);
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            string mathietbi = ((LinkButton)sender).CommandArgument;
            Response.Redirect("chitiet.aspx?mtb=" + mathietbi);

        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            string mathietbi = ((LinkButton)sender).CommandArgument;
            Response.Redirect("chitiet.aspx?mtb=" + mathietbi);
        }
    }
}