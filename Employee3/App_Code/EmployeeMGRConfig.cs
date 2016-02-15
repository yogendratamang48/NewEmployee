using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Employee3.App_Code
{
    public class EmployeeMGRConfig
    {
        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["EmployeeConnection"].ConnectionString;
        }
        public static SqlConnection GetConnection()
        {
            try
            {
                return DBOpenconnection(GetConnectionString());
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }


        }
        public static DataSet GetDataSet(string sqlQuery)
        {
            SqlDataAdapter SDA = new SqlDataAdapter(sqlQuery, GetConnection());
            DataSet ds = new DataSet();
            SDA.Fill(ds);
            return ds;
        }
        static protected SqlConnection DBOpenconnection(string conStr)
        {
            //SqlConnection Tempconn ;
            try
            {
                SqlConnection Tempconn = new SqlConnection(conStr);
                //if (Tempconn.State == ConnectionState.Open)
                //{
                //    DBCloseconnection(Tempconn);
                //}
                Tempconn.ConnectionString = conStr;
                if (Tempconn.State == ConnectionState.Closed)
                    Tempconn.Open();
                return Tempconn;
            }
            catch (Exception ex)
            {
                //error log
                throw new Exception(ex.ToString());
                //return null;
            }

        }
        //close connection if it is opened
        static public void DBCloseconnection(SqlConnection Tempconn)
        {
            try
            {
                if (Tempconn == null || Tempconn.State == ConnectionState.Open)
                {
                    Tempconn.Close();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.StackTrace);
                //error log
            }
        }
        public static DataTable GetDataTable(string sqlQuery)
        {
            SqlDataAdapter SDA = new SqlDataAdapter(sqlQuery, GetConnection());
            DataTable DT = new DataTable();
            SDA.Fill(DT);
            return DT;
        }
        public static SqlDataReader GetSqlDataReader(SqlCommand com)
        {
            SqlConnection con = GetConnection();
            com.Connection = con;
            con.Open();
            SqlDataReader reader = com.ExecuteReader(CommandBehavior.CloseConnection);
            return reader;
        }
        public static int ConvertDigits(string sText)
        {
            string strVal = "";
            foreach (char c in sText)
            {
                strVal += (c.ToString().Replace("०", "0")
                .Replace("१", "1")
                .Replace("२", "2")
                .Replace("३", "3")
                .Replace("४", "4")
                .Replace("५", "5")
                .Replace("६", "6")
                .Replace("७", "7")
                .Replace("८", "8")
                .Replace("९", "9"));
            }
            return int.Parse(strVal);

        }
    }
}