using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace webformTMDT_DoAn.homepage
{
    public partial class giohang : System.Web.UI.Page
    {
        LOPKETNOI ketnoi = new LOPKETNOI();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["username"] != null)
            {

                string tendangnhap = Session["username"].ToString();
                //   string sql = $@"SELECT * FROM DATHANG WHERE DATHANG.TENKHACHHANG = '{tendangnhap}'";

                string sql = $@"SELECT * FROM DATHANG, THIETBI WHERE DATHANG.TENKHACHHANG = '{tendangnhap}' AND DATHANG.MATHIETBI = THIETBI.MATHIETBI";
                GridView1.DataSource = ketnoi.laydulieu(sql);
                GridView1.DataBind();
            }
            else
            {

                Response.Redirect("login.aspx");
            }




            //string tendangnhap = Session["username"] + "";
            //  if (tendangnhap != "")
            //{
            //string sql = "select THIETBI.MATHIETBI, DATHANG.TENKHACHHANG, EMAIL, SODIENTHOAI, DIACHI, TENTHIETBI, MOTA, DONGIA, SOLUONG, DONGIA * SOLUONG AS THANHTIEN"
            //     + " from MATHIETBI, DATHANG, KHACHHANG"
            //     + " where TENKHACHHANG='" + tendangnhap + "' And THIETBI.MATHIETBI = DATHANG.MATHETBI ";

            //string sql = $@"SELECT * FROM DATHANG";

            //GridView1.DataSource = ketnoi.laydulieu(sql);
            //GridView1.DataBind();
            //}
        }


        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //string tendangnhap = Session["username"] + "";
            //if (tendangnhap != "")
            //{
            //    string mahang = ((LinkButton)sender).CommandArgument;
            //    string sql = "delete from DATHANG  where THIETBI=" + mahang + "and  TENKHACHHANG= '" + tendangnhap + "'";
            //    int ketqua = ketnoi.capnhat(sql);
            //    if (ketqua > 0) lb_thongbao.Text = "thành công";
            //    else lb_thongbao.Text = "không thành công";
            //}


            string tendangnhap = Session["username"] + "";
            if (tendangnhap != "")
            {
                string mahang = ((LinkButton)sender).CommandArgument;
                string sql = "delete DATHANG where MATHIETBI=" + mahang + " and TENKHACHHANG='" + tendangnhap + "'";
                int ketqua = ketnoi.capnhat(sql);
                if (ketqua > 0) lb_thongbao.Text = "Thành công";
                else lb_thongbao.Text = "Không thành công";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["username"] + "";
            if (tendangnhap != "")
            {
                Button bt = (Button)sender;
                string mahang = bt.CommandArgument;
                GridViewRow gr = (GridViewRow)bt.Parent.Parent;
                string soluong = ((TextBox)gr.FindControl("TextBox1")).Text;
                string sql_capnhat = "update DATHANG Set SOLUONG =" + soluong + "where TENKHACHHANG= '" + tendangnhap + "'and MATHIETBI= " + mahang;
                int ketqua = ketnoi.capnhat(sql_capnhat);
                if (ketqua > 0) lb_thongbao.Text = "thành công";
                else lb_thongbao.Text = "không thành công";
            }
        }


    }
}