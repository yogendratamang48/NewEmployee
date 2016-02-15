using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Employee3.App_Code
{
    public class EmployeeDBAccess
    {
        public static DataTable getDropDownData(string tblName)
        {
            try
            {
                SqlCommand CMD = new SqlCommand();
                CMD.Connection = EmployeeMGRConfig.GetConnection();
                CMD.CommandType = CommandType.Text;
                CMD.CommandText = "Select * From " + tblName;
                SqlDataAdapter SDA = new SqlDataAdapter(CMD);
                DataTable DT = new DataTable();
                SDA.Fill(DT);
                EmployeeMGRConfig.GetConnection().Dispose();
                CMD.Connection.Dispose();
                CMD = null;
                SDA.Dispose();
                return DT;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                EmployeeMGRConfig.GetConnection().Close();
            }
        }
        public static DataTable getDropDownData(string tblFields, string tblName, string whereCond)
        {
            try
            {
                SqlCommand CMD = new SqlCommand();
                CMD.Connection = EmployeeMGRConfig.GetConnection();
                CMD.CommandType = CommandType.Text;
                CMD.CommandText = "Select " + tblFields + " From " + tblName + " where " + whereCond;
                SqlDataAdapter SDA = new SqlDataAdapter(CMD);
                DataTable DT = new DataTable();
                SDA.Fill(DT);
                EmployeeMGRConfig.GetConnection().Dispose();
                CMD.Connection.Dispose();
                CMD = null;
                SDA.Dispose();
                return DT;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                EmployeeMGRConfig.GetConnection().Close();
            }
        }

        public static int saveDataIntblMain(tblEmployee tblEmployeeClass)
        {

            string storeProcedureName = "sp_Insert_tblMain";
            try
            {
                int rowAffected = 0;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = EmployeeMGRConfig.GetConnection();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedureName;

                    cmd.Parameters.AddWithValue("@fldEmployeeID", tblEmployeeClass.fldEmployeeID);
                    cmd.Parameters.AddWithValue("@fldFirstName", tblEmployeeClass.fldFirstName);
                    cmd.Parameters.AddWithValue("@fldMiddleName",tblEmployeeClass.fldMiddleName);
                    cmd.Parameters.AddWithValue("@fldLastName", tblEmployeeClass.fldLastName);
                    cmd.Parameters.AddWithValue("@fldGender", tblEmployeeClass.fldGender);
                    cmd.Parameters.AddWithValue("@fldDob", tblEmployeeClass.fldDob);
                    cmd.Parameters.AddWithValue("@fldPhoneNo", tblEmployeeClass.fldPhoneNo);
                    cmd.Parameters.AddWithValue("@fldMobileNo", tblEmployeeClass.fldMobileNo);
                    cmd.Parameters.AddWithValue("@fldFaxNo", tblEmployeeClass.fldFaxNo);
                    cmd.Parameters.AddWithValue("@fldPersonalEmail", tblEmployeeClass.fldPersonalEmail);
                    cmd.Parameters.AddWithValue("@fldOfficialEmail",tblEmployeeClass.fldOfficialEmail);
                    cmd.Parameters.AddWithValue("@fldAddress",tblEmployeeClass.fldAddress);
                    cmd.Parameters.AddWithValue("@fldDistrict",tblEmployeeClass.fldDistrict);
                    cmd.Parameters.AddWithValue("@fldCitizenshipNo", tblEmployeeClass.fldCitizenshipNo);
                    cmd.Parameters.AddWithValue("@fldCitizenshipIssuedDate", tblEmployeeClass.fldCitizenshipIssuedDate);
                    cmd.Parameters.AddWithValue("@fldCitzenshipIssuedDistrict", tblEmployeeClass.fldCitzenshipIssuedDistrict);
                    cmd.Parameters.AddWithValue("@fldDateofJoin", tblEmployeeClass.fldDateofJoin);
                    cmd.Parameters.AddWithValue("@fldDateofPermanent",tblEmployeeClass.fldDateofPermanent);
                    cmd.Parameters.AddWithValue("@fldDateofRetirement", tblEmployeeClass.fldDateofRetirement);
                    cmd.Parameters.AddWithValue("@fldMaritalStatus", tblEmployeeClass.fldMaritalStatus);
                    cmd.Parameters.AddWithValue("@fldChildBoy", tblEmployeeClass.fldChildBoy);
                    cmd.Parameters.AddWithValue("@fldChildGirl", tblEmployeeClass.fldChildGirl);
                    cmd.Parameters.AddWithValue("@fldPpPhoto", tblEmployeeClass.fldPpPhoto);
                    cmd.Parameters.AddWithValue("@fldCitizenshipCopy", tblEmployeeClass.fldCitizenshipCopy);
                    cmd.Parameters.AddWithValue("@fldLeaveHome", tblEmployeeClass.fldLeaveHome);
                    cmd.Parameters.AddWithValue("@fldLeaveSick", tblEmployeeClass.fldLeaveSick);
                    cmd.Parameters.AddWithValue("@fldIsActive",tblEmployeeClass.fldIsActive);
                    cmd.Parameters.AddWithValue("@fldCreatedBy", tblEmployeeClass.fldCreatedBy);
                    cmd.Parameters.AddWithValue("@fldCreatedDate",tblEmployeeClass.fldCreatedDate);
                    cmd.Parameters.AddWithValue("@fldUpdatedBy",tblEmployeeClass.fldUpdatedBy);
                    cmd.Parameters.AddWithValue("@fldUpdatedDate",tblEmployeeClass.fldUpdatedDate);
                    cmd.Parameters.AddWithValue("@fldDocument",tblEmployeeClass.fldDocument);
                    cmd.Parameters.AddWithValue("@fldNote",tblEmployeeClass.fldNote);

                    rowAffected = int.Parse(cmd.ExecuteScalar().ToString());
                }
                return rowAffected;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
            finally
            {
                EmployeeMGRConfig.GetConnection().Close();
            }


        }

    }
}