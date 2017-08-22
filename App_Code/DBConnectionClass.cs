using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;

/// <summary>
/// Summary description for DBConnectionClass
/// </summary>
public class DBConnectionClass
{
    public string connString = string.Empty;
    public OracleConnection conn=null;
    public DBConnectionClass()
    {
        System.Configuration.Configuration rootWebConfig =
                System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
      //  System.Configuration.ConnectionStringSettings connString;

        connString = "DATA SOURCE = localhost:1523 / XE; PASSWORD = tiger1; USER ID = SA";
        conn = new OracleConnection(connString);
       
       
    }
}