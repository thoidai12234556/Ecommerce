using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace webformTMDT_DoAn.homepage
{
    public partial class chitiet : System.Web.UI.Page
    {
        LOPKETNOI ketnoi = new LOPKETNOI();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string mathietbi = Request.QueryString["mtb"] + "";
            if (mathietbi != "")
            {
                string sql = "select * from THIETBI where MATHIETBI=" + mathietbi;

                DataList1.DataSource = ketnoi.laydulieu(sql);

                DataList1.DataBind();
            }
            else
            {
                lb_thong_bao.Text = "khong co san pham";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["username"] + "";
            if (tendangnhap != "")
            {
                string mathietbi = ((Button)sender).CommandArgument;
                Button bt_mua = (Button)sender;
                DataListItem item = (DataListItem)bt_mua.Parent;
                TextBox txtSoLuong = (TextBox)item.FindControl("txt_soluong");
                TextBox textghichu = (TextBox)item.FindControl("ghichu");
                string soluong = txtSoLuong.Text;
                string ghichu = textghichu.Text;


                

              

                // update data
                string sql_dulieu = "select  * from DATHANG where TENKHACHHANG='" + tendangnhap + "' and MATHIETBI=" + mathietbi;

                DataTable dt = ketnoi.laydulieu(sql_dulieu);
                string sql_capnhat = "";
                if (dt.Rows.Count > 0)
                {
                  //update
                    sql_capnhat = "update DATHANG Set SOLUONG =SOLUONG+" + soluong + " where TENKHACHHANG= '" + tendangnhap + "' and MATHIETBI=" + mathietbi;
                }
                else
                {
                    //insert
                    sql_capnhat = "insert into DATHANG values(" + mathietbi + ",'" + tendangnhap + "'," + soluong + ",'"+ ghichu + "')";
                }


                
                int ketqua = ketnoi.capnhat(sql_capnhat);

                if (ketqua > 0) lb_thong_bao.Text = " Cap Nhat Thanh Cong !";
                else lb_thong_bao.Text = "khong thanh cong";
            }
            else
            {
                Response.Redirect("/homepage/login.aspx");
                lb_thong_bao.Text = "BAN PHAI DANG NHAP";
            }
        }
    }
}