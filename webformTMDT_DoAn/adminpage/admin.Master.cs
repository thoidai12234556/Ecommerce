using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webformTMDT_DoAn.adminpage
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear(); Response.Redirect("default.aspx");
        }



    }
}