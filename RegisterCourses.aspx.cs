using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterCourses : System.Web.UI.Page
{
    DBConnectionClass dbclass = new DBConnectionClass();
    public void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            pnltblCourseMain.Visible = false;
        }
    }

    protected void btnTermSubmit_Click(object sender, EventArgs e)
    {
        if (pnltblCourseMain.Visible == false)
        {
            pnltblCourseMain.Visible = true;
            plTerm.Visible = false;
        }
        else
            plTerm.Visible = true;
    }


    protected void btnCourseSearch_Click(object sender, EventArgs e)
    {
        
        dbclass.conn.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.Connection = dbclass.conn;
        cmd.CommandText = "select * from course";
        cmd.CommandType = System.Data.CommandType.Text;
        //OracleDataReader dr = cmd.ExecuteReader();
       // dr.Read();
        DataTable dt = new DataTable();
        OracleDataAdapter oAdapter = new OracleDataAdapter(cmd.CommandText, dbclass.conn);
        oAdapter.Fill(dt);
        gvCourselist.DataSource = dt;
        gvCourselist.DataBind();
       
        dbclass.conn.Close();
    }
}