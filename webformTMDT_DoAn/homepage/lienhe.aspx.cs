using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace webformTMDT_DoAn.homepage
{
    public partial class lienhe : System.Web.UI.Page
    {
        LOPKETNOI ketnoi = new LOPKETNOI();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

        }
      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string sql_capnhat = "";
            //string sql_capnhat = "select  * from LIENHEKHACHHANG";

            //DataTable dt = ketnoi.laydulieu(sql_dulieu);

            sql_capnhat = "insert into LIENHEKHACHHANG values('" + (name.Text) + "','" + (email.Text) + "','" + (message.Text) + "')";



            //string sql="insert into DONHANG values('"+tendangnhap+"',"+mahang+","+soluong+")";
            int ketqua = ketnoi.capnhat(sql_capnhat);

            if (ketqua >= 0) lb_thong_bao.Text = " Cap Nhat Thanh Cong !";
            else lb_thong_bao.Text = "khong thanh cong";

        }
    }
}