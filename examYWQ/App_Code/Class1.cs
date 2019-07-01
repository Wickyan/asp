using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Class1 的摘要说明
/// </summary>
public class Class1
{
	public Class1()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    static public DataSet GetDsFromSql(string sqlStr)
    {
        SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
        DataSet ds = new DataSet();
        try
        {
            SqlDataAdapter da = new SqlDataAdapter(sqlStr, conn);
            conn.Open();
            da.Fill(ds);
            //return ds;
        }
        catch (Exception)
        {
            ds.Tables.Add("TempTable");

            //return ds;
        }
        conn.Close();
        return ds;
    }
    static public bool ExecuteSql(string sqlStr)
    {
        SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
        try
        {
            SqlCommand com = new SqlCommand(sqlStr, conn);
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();
            return true;
        }
        catch (Exception ee)
        {
            conn.Close();
            return false;
        }
    }

}