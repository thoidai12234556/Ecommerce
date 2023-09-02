using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace webformTMDT_DoAn.adminpage
{
    public partial class thietbi : System.Web.UI.Page
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

                string sql = $@"SELECT * FROM THIETBI, ADMIN WHERE ADMIN.ACCNAME = '{tendangnhap}'AND ADMIN.PASSWORD = '{PASS}'";
                GridView1.DataSource = ketnoi.laydulieu(sql);
                GridView1.DataBind();
            }
            else
            {

                Response.Redirect("default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["adminname"] + "";
            if (tendangnhap != "")
            {
                Button bt = (Button)sender;
                string mathietbicheck = bt.CommandArgument;

                GridViewRow gr = (GridViewRow)bt.Parent.Parent;
                string mathietbi1 = ((TextBox)gr.FindControl("mathietbi")).Text;
                string tenthietbi1 = ((TextBox)gr.FindControl("tenthietbi")).Text;
                string mota1 = ((TextBox)gr.FindControl("mota")).Text;
                string mausac1 = ((TextBox)gr.FindControl("mausac")).Text;
                string dongia1 = ((TextBox)gr.FindControl("dongia")).Text;
                string hinhanh1 = ((TextBox)gr.FindControl("hinhanh")).Text;

                string sql_capnhat = "update THIETBI Set MATHIETBI =" + mathietbi1 + ", TENTHIETBI ='" + tenthietbi1 + "', MOTA='"+ mota1 + "',MAUSAC='"+ mausac1 + "',DONGIA="+ dongia1+ ",HINHANH='"+ hinhanh1 + "'  where MATHIETBI= " + mathietbicheck;
                int ketqua = ketnoi.capnhat(sql_capnhat);
                if (ketqua > 0) lb_thongbao.Text = "thành công";
                else lb_thongbao.Text = "không thành công";
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["adminname"] + "";
            if (tendangnhap != "")
            {
                string mathietbi = ((LinkButton)sender).CommandArgument;
                string sql = "delete THIETBI where MATHIETBI=" + mathietbi;
                int ketqua = ketnoi.capnhat(sql);
                if (ketqua > 0) lb_thongbao.Text = "Thành công";
                else lb_thongbao.Text = "Không thành công";
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string sql_capnhat = "";
            

            sql_capnhat = "insert into THIETBI values('" + (thietbin.Text) + "','" + (tenthietbin.Text) + "','" + (motan.Text) + "','" + (mausacn.Text) + "'," + (dongian.Text) + ",'" + (hinhanhn.Text) + "'," + (madanhmucn.Text) + ")";



           
            int ketqua = ketnoi.capnhat(sql_capnhat);

            if (ketqua >= 0) lb_thong_bao.Text = " TẠO MỚI THÀNH CÔNG !";
            else lb_thong_bao.Text = "khong thanh cong";
        }
    }
}