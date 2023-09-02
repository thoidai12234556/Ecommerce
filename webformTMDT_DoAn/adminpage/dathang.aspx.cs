using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace webformTMDT_DoAn.adminpage
{
    public partial class dathang : System.Web.UI.Page
    {
        LOPKETNOI ketnoi = new LOPKETNOI();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Session["adminname"] != null)
            {

                string tendangnhap = Session["adminname"].ToString();
                string PASS = Session["adminpass"].ToString();

                

                string sql = $@"SELECT * FROM DATHANG, ADMIN WHERE ADMIN.ACCNAME = '{tendangnhap}'AND ADMIN.PASSWORD = '{PASS}'";
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
                string mathietbi = ((LinkButton)sender).CommandArgument;
                string sql = "delete DATHANG where MATHIETBI=" + mathietbi;
                int ketqua = ketnoi.capnhat(sql);
                if (ketqua > 0) lb_thongbao.Text = "Thành công";
                else lb_thongbao.Text = "Không thành công";
            }
        }

        protected void searchbutton_Click(object sender, EventArgs e)
        {

            if (Session["adminname"] != null)
            {

                string tendangnhap = Session["adminname"].ToString();
                string PASS = Session["adminpass"].ToString();

                string thietbi = searchname.Text;


                //   string sql = $@"SELECT * FROM DATHANG WHERE DATHANG.TENKHACHHANG = '{tendangnhap}'";

                //string sql = $@"SELECT * FROM DATHANG, ADMIN WHERE ADMIN.ACCNAME = '{tendangnhap}'AND ADMIN.PASSWORD = '{PASS}' AND (DATHANG.TENKHACHHANG= '" +thietbi+"' OR DATHANG.SOLUONG=" +thietbi+")";

                string sql = $@"SELECT * FROM DATHANG, ADMIN WHERE ADMIN.ACCNAME = '{tendangnhap}' AND ADMIN.PASSWORD = '{PASS}' AND (DATHANG.MATHIETBI = '{thietbi}' OR DATHANG.TENKHACHHANG= '{thietbi}' OR DATHANG.SOLUONG = '{thietbi}')";

                GridView1.DataSource = ketnoi.laydulieu(sql);
                GridView1.DataBind();
            }
        }
    }
}