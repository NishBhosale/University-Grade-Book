using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBConnectionClass dbclass = new DBConnectionClass();
        dbclass.conn.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.Connection = dbclass.conn;
        cmd.CommandText = "select COURSE_NAME from course";
        cmd.CommandType = System.Data.CommandType.Text;
        OracleDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Label1.Text = dr.GetString(0);
        dbclass.conn.Close();
    }
}