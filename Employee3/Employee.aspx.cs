using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Employee3;
using Employee3.App_Code;

namespace Employee3
{
    public partial class Employee : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                LoadData();
            }
        }
        private void LoadData()
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            tblEmployee emp = new tblEmployee();
                emp.fldFirstName = txtFirstName.Text.Trim();
                emp.fldMiddleName = txtMiddleName.Text.Trim();
                emp.fldLastName = txtLastNameNepali.Text.Trim();
                emp.fldGender = GetSelectedRadioButton(rbnMale, rbnFemale, rbnOther).Text.Trim();
                emp.fldDob = Convert.ToDateTime(txtBirthDate.Text.Trim());
                emp.fldPhoneNo = txtPhone.Text.Trim();
                emp.fldMobileNo = txtMobile.Text.Trim();
                emp.fldFaxNo = txtFax.Text.Trim();
                emp.fldPersonalEmail = txtPersonalEmail.Text.Trim();
                emp.fldOfficialEmail = txtOfficialEmail.Text.Trim();
                emp.fldAddress = txtAddress.Text.Trim();
                emp.fldDistrict = txtAddress.Text.Trim();
                emp.fldCitizenshipNo = txtCitizenshipNo.Text.Trim();
                emp.fldCitizenshipIssuedDate = Convert.ToDateTime(txtCitizenshipIssuedDate.Text.Trim());
                emp.fldCitzenshipIssuedDistrict = txtCitizenshipIssuedDistrict.Text.Trim();
                emp.fldDateofJoin = Convert.ToDateTime(txtJoinDate.Text.Trim());
                emp.fldDateofPermanent = Convert.ToDateTime(txtPermanentDate.Text.Trim());
                emp.fldDateofRetirement = Convert.ToDateTime(txtRetirementDate.Text.Trim());
                emp.fldMaritalStatus = GetSelectedRadioButton(rbnMarried, rbnUnMarred).Text.Trim();
                emp.fldChildBoy = EmployeeMGRConfig.ConvertDigits(txtChildBoy.Text.Trim());
                emp.fldChildGirl = EmployeeMGRConfig.ConvertDigits(txtChildGirl.Text.Trim());
                emp.fldPpPhoto = "Test";
                emp.fldCitizenshipCopy = "Citizenship_Copy";
                emp.fldLeaveHome = float.Parse(txtLeaveHome.Text.Trim());
                emp.fldLeaveSick=float.Parse(txtSickLeave.Text.Trim());
                emp.fldIsActive=true;
                emp.fldCreatedBy=txtCreatedBy.Text.Trim();
                emp.fldCreatedDate=Convert.ToDateTime(txtCreatedDate.Text.Trim());
                emp.fldUpdatedBy=txtUpdatedBy.Text.Trim();
                emp.fldUpdatedDate=Convert.ToDateTime(txtUpdatedDate.Text.Trim());
                emp.fldDocument=txtDocument.Text.Trim();
                emp.fldNote = txtNote.Text.Trim();
            Console.WriteLine("Class Created Successfully");
            
        }
        private RadioButton GetSelectedRadioButton(params RadioButton[] radioButtonGroup)
        {
            RadioButton checkedRb = new RadioButton();
            for (int i = 0; i < radioButtonGroup.Length; i++)
            {
                if (radioButtonGroup[i].Checked)
                {
                    checkedRb = radioButtonGroup[i];
                }
            }
            return checkedRb;

        }
           
    }
}