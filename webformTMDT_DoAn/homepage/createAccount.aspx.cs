using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webformTMDT_DoAn.homepage
{
    public partial class createAccount : System.Web.UI.Page
    {
        LOPKETNOI ketnoi = new LOPKETNOI();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Click(object sender, EventArgs e)
        {
            string sql_capnhat = "";
            //string sql_capnhat = "select  * from LIENHEKHACHHANG";

            //DataTable dt = ketnoi.laydulieu(sql_dulieu);

            sql_capnhat = "insert into KHACHHANG values('" + (txtUsername.Text) + "','" + (txtPassword.Text) + "','" + (email.Text) + "','" + (diachi.Text) + "','" + (sodienthoai.Text) + "')";



            //string sql="insert into DONHANG values('"+tendangnhap+"',"+mahang+","+soluong+")";
            int ketqua = ketnoi.capnhat(sql_capnhat);

            if (ketqua >= 0) lblMessage.Text = " Bạn Đã Tạo Tài Khoản Thành Công !";
            else lblMessage.Text = "khong thanh cong";
        }
    }
}