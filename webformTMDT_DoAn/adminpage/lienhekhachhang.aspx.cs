using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webformTMDT_DoAn.adminpage
{
    public partial class lienhekhachhang : System.Web.UI.Page
    {
        LOPKETNOI ketnoi = new LOPKETNOI();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Session["adminname"] != null)
            {

                string tendangnhap = Session["adminname"].ToString();
                string PASS = Session["adminpass"].ToString();

                //   string sql = $@"SELECT * FROM DATHANG WHERE DATHANG.TENKHACHHANG = '{tendangnhap}'";

                string sql = $@"SELECT * FROM LIENHEKHACHHANG, ADMIN WHERE ADMIN.ACCNAME = '{tendangnhap}'AND ADMIN.PASSWORD = '{PASS}'";
                GridView1.DataSource = ketnoi.laydulieu(sql);
                GridView1.DataBind();
            }
            else
            {

                Response.Redirect("default.aspx");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["adminname"] + "";
            if (tendangnhap != "")
            {
                string tenkhachhang = ((LinkButton)sender).CommandArgument;
                string sql = "delete LIENHEKHACHHANG where TENKHACHHANGLIENHE= + '" + tenkhachhang + "'";
                int ketqua = ketnoi.capnhat(sql);
                if (ketqua > 0) lb_thongbao.Text = "Thành công";
                else lb_thongbao.Text = "Không thành công";
            }
        }
    }
}