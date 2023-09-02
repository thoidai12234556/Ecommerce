using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


namespace webformTMDT_DoAn
{
    public class LOPKETNOI : System.Web.UI.Page
    {
        SqlConnection con;
        public void ketnoi()
        {


            string sqlcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("/App_Data/DBBANHANGDIENTU.mdf")+";Integrated Security=True";
            
            con = new SqlConnection(sqlcn);
            con.Open();

        }
        public void dongketnoi()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
        public DataTable laydulieu(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                ketnoi();
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(dt);
            }
            catch
            {
                // mistaskes
            }
            finally
            {
                dongketnoi();
            }
            return dt;
        }

        public int capnhat(string sql)
        {
            int kq = 0;
            try
            {
                // them sua xoa dung excuteNonquery. 
                ketnoi();
                SqlCommand cmd = new SqlCommand(sql, con);
                kq = cmd.ExecuteNonQuery();

            }
            catch
            {
                kq = 0;

            }
            finally
            {
                dongketnoi();
            }
            return kq;

        }

    }
}