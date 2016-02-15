using Employee3.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee3.EmployeePages
{
    public partial class LeaveAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayLeave();
        }
        protected void btnAddAnother_Click(object sender, EventArgs e)
        {
            int result = SaveLeave();
            DisplayLeave();
        }
        protected void DisplayLeave()
        {
            DataTable DT = new DataTable();
            string conStr = ConfigurationManager.ConnectionStrings["EmployeeConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                SqlParameter EmployeeID = new SqlParameter("@EmployeeID", SqlDbType.Int);
                EmployeeID.Value = 1;
                string SQL = "[sp_get_LeaveDetails]";
                SqlCommand CMD = new SqlCommand(SQL, con);
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.Parameters.Add(EmployeeID);
                SqlDataAdapter SDA = new SqlDataAdapter(CMD);
                SDA.Fill(DT);
                CMD.Connection.Close();
                CMD = null;
                SDA.Dispose();
            }
            dgLeave.DataSource = DT;
            dgLeave.DataBind();
            //Code By Yogendra
        }

        private int SaveLeave()
        {
            int result = 0;
            string conStr = ConfigurationManager.ConnectionStrings["EmployeeConnection"].ConnectionString;
            tblLeaveDetails tblLeaveD = new tblLeaveDetails();
            tblLeaveD.fldLeaveID = EmployeeMGRConfig.ConvertDigits(ddlLeaveType.SelectedValue);
            tblLeaveD.fldDaysTaken = EmployeeMGRConfig.ConvertDigits(txtDaysTaken.Text);
            tblLeaveD.fldTakenDate = Convert.ToDateTime(txtDaysTaken.Text);
            tblLeaveD.fldNote = txtNote.Text;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                string SQL = "sp_Insert_LeaveDetails";
                SqlCommand CMD = new SqlCommand(SQL, con);
                CMD.CommandType = CommandType.StoredProcedure;

                CMD.Parameters.AddWithValue("@EmployerID", 1);
                CMD.Parameters.AddWithValue("@fldLeaveID", tblLeaveD.fldLeaveID);
                CMD.Parameters.AddWithValue("@fldDaysTaken", tblLeaveD.fldDaysTaken);
                CMD.Parameters.AddWithValue("@fldTakenDate", tblLeaveD.fldTakenDate);
                CMD.Parameters.AddWithValue("@fldNote", tblLeaveD.fldNote);
                

                result = CMD.ExecuteNonQuery();
                CMD.Connection.Close();
                CMD = null;

            }
            return result;
        }

        protected void dgLeave_PreRender(object sender, EventArgs e)
        {
            try
            {
                dgLeave.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            catch (Exception)
            {
            }
        }


    }
}