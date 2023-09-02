using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace webformTMDT_DoAn.adminpage
{
    public partial class danhmuc : System.Web.UI.Page
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

                string sql = $@"SELECT * FROM DANHMUC, ADMIN WHERE ADMIN.ACCNAME = '{tendangnhap}'AND ADMIN.PASSWORD = '{PASS}'";
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
                string madanhmuc = bt.CommandArgument;
                
                GridViewRow gr = (GridViewRow)bt.Parent.Parent;
                string madanhmucsua = ((TextBox)gr.FindControl("madanhmuc")).Text;
                int madanhmucsua2 = int.Parse(madanhmucsua);
                string tendanhmucsua = ((TextBox)gr.FindControl("tendanhmuc")).Text;

                string sql_capnhat = "update DANHMUC Set MADANHMUC =" + madanhmucsua + ", TENDANHMUC ='" + tendanhmucsua + "'  where MADANHMUC= " + madanhmuc ;
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
                string madanhmuc = ((LinkButton)sender).CommandArgument;
                string sql = "delete DANHMUC where MADANHMUC=" + madanhmuc ;
                int ketqua = ketnoi.capnhat(sql);
                if (ketqua > 0) lb_thongbao.Text = "Thành công";
                else lb_thongbao.Text = "Không thành công";
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string sql_capnhat = "";
            //string sql_capnhat = "select  * from LIENHEKHACHHANG";

            //DataTable dt = ketnoi.laydulieu(sql_dulieu);

            sql_capnhat = "insert into DANHMUC values('" + (madanhmuc.Text) + "','" + (tenkhanhmuc.Text) + "')";



            //string sql="insert into DONHANG values('"+tendangnhap+"',"+mahang+","+soluong+")";
            int ketqua = ketnoi.capnhat(sql_capnhat);

            if (ketqua >= 0) lb_thong_bao.Text = " Cap Nhat Thanh Cong !";
            else lb_thong_bao.Text = "khong thanh cong";
        }

      

        protected void searchbutton_Click(object sender, EventArgs e)
        {
            if (Session["adminname"] != null)
            {

                string tendangnhap = Session["adminname"].ToString();
                string PASS = Session["adminpass"].ToString();
                
                string tendanhmuc = searchname.Text;


                //   string sql = $@"SELECT * FROM DATHANG WHERE DATHANG.TENKHACHHANG = '{tendangnhap}'";

                string sql = $@"SELECT * FROM DANHMUC, ADMIN WHERE ADMIN.ACCNAME = '{tendangnhap}'AND ADMIN.PASSWORD = '{PASS}' AND DANHMUC.TENDANHMUC= '{tendanhmuc}'";
                GridView1.DataSource = ketnoi.laydulieu(sql);
                GridView1.DataBind();
            }
        }
    }
}