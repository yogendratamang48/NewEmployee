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
    public partial class EducationAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayLevel();
        }

        protected void btnAddAnother_Click(object sender, EventArgs e)
        {
           int result= SaveLevel();
           DisplayLevel();
        }
    //    Sub DisplayExperience(ByVal candidateID As String)
    //    Dim DT As DataTable = New DataTable()

    //    DT = Candidate_DataAccess.getCandidateExperience(candidateID)
    //    dgExperience.DataSource = DT
    //    dgExperience.DataBind()

    //End Sub
        private void DisplayLevel()
        {
            DataTable DT = new DataTable();
            string conStr = ConfigurationManager.ConnectionStrings["EmployeeConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                SqlParameter EmployeeID = new SqlParameter("@EmployeeID", SqlDbType.Int);
                EmployeeID.Value = 1;
                string SQL = "sp_Get_Education";
                SqlCommand CMD = new SqlCommand(SQL, con);
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.Parameters.Add(EmployeeID);
                SqlDataAdapter SDA = new SqlDataAdapter(CMD);
                SDA.Fill(DT);
                CMD.Connection.Close();
                CMD = null;
                SDA.Dispose();
            }           
            dgEducation.DataSource = DT;
            dgEducation.DataBind();
        }

        private int SaveLevel()
        {
            int result=0;
            string conStr = ConfigurationManager.ConnectionStrings["EmployeeConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                string SQL = "sp_Insert_Education";
                SqlCommand CMD = new SqlCommand(SQL, con);
                CMD.CommandType = CommandType.StoredProcedure;

                CMD.Parameters.AddWithValue("@EmployeeID", 1);
                CMD.Parameters.AddWithValue("@Level",  ddlLevel.SelectedValue);
                CMD.Parameters.AddWithValue("@BoardOrUniversity",  txtInstitutionName.Text.Trim());
                CMD.Parameters.AddWithValue("@PassedYear", txtPassedYear.Text.Trim());
                CMD.Parameters.AddWithValue("@PassedGrade",  txtPassedGrade.Text.Trim());
                CMD.Parameters.AddWithValue("@MajorSubjects",  txtMajorSubjects.Text.Trim());
                CMD.Parameters.AddWithValue("@Note", txtNotes.Text.Trim());
               
                result = CMD.ExecuteNonQuery();
                CMD.Connection.Close();
                CMD = null;
              
            }
           return result;
        }

        private int DeleteLevel(int EducationInfoID)
        {
            int result = 0;
            string conStr = ConfigurationManager.ConnectionStrings["EmployeeConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                string SQL = "sp_Delete_Education";
                SqlCommand CMD = new SqlCommand(SQL, con);
                CMD.CommandType = CommandType.StoredProcedure;

                CMD.Parameters.AddWithValue("@EducationInfoID", EducationInfoID);               
                result = CMD.ExecuteNonQuery();
                CMD.Connection.Close();
                CMD = null;

            }
            return result;
        }
        protected void dgEducation_PreRender(object sender, EventArgs e)
        {
            try{
                dgEducation.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            catch(Exception)
            {
            }         
        }

        protected void dgEducation_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                int eID = Convert.ToInt32(e.CommandArgument);
                int i = DeleteLevel(eID);
                DisplayLevel();
            }
        }
    }
}
