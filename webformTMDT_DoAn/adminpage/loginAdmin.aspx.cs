using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace webformTMDT_DoAn.adminpage
{
    public partial class loginAdmin : System.Web.UI.Page
    {
        LOPKETNOI ketnoi = new LOPKETNOI();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Click(object sender, EventArgs e)
        {
            string user = txtUsername.Text;
               string pass = txtPassword.Text;

                string sql = "select * from ADMIN where ACCNAME='" + user + " ' " +
                    "           and PASSWORD='" + pass + "' ";
                DataTable dt = ketnoi.laydulieu(sql);

               if (dt.Rows.Count > 0)
                {
                    Session["adminname"] = user;
                    Session["adminpass"] = pass;
                    Response.Redirect("default.aspx");
               }
                else
                {
                    lblMessage.Text = "tên và mật khẩu không đúng";
                }

        }
        //protected void Login1_Click(object sender, EventArgs e)
        //{
        //    string user = txtUsername.Text;
        //    string pass = txtPassword.Text;

        //    string sql = "select * from ADMIN where ACCNAME='" + user + " ' " +
        //        "           and PASSWORD='" + pass + "' ";
        //    DataTable dt = ketnoi.laydulieu(sql);

        //    if (dt.Rows.Count > 0)
        //    {
        //        Session["adminname"] = user;
        //        Response.Redirect("default.aspx");
        //    }
        //    else
        //    {
        //        lblMessage.Text = "tên và mật khẩu không đúng";
        //    }
        //}
    }
}