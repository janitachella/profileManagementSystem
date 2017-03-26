using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace pms1
{
    public partial class student_home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=JANITA\SQLEXPRESS;Initial Catalog=pms;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string userID = Session["id"].ToString().ToUpper();
            inputRegisterNo.Text = userID;
            inputRegisterNo.ReadOnly = true;
            try {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [student_details] WHERE userId=@u",con);
                cmd.Parameters.Add("@u", SqlDbType.VarChar, 10, "userId").Value = userID;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    inputName.Text = (string)dr["name"];
                    inputFirstName.Text = (string)dr["First_name"];
                    inputMiddleName.Text = (string)dr["Middle_name"];
                    inputLastName.Text = (string)dr["Last_name"];
                    inputGender.Text = (string)dr["gender"];
                    inputMobileNo.Text = (string)dr["Mobile_no"];
                    inputLandLineNo.Text = (string)dr["Land_line"];
                    inputKarunyaEmailId.Text = (string)dr["Karunya_mail_id"];
                    inputPersonalMailId.Text = (string)dr["Personal_mail_id"];
                    inputDOB.Text = (string)dr["Date_of_birth"];
                    inputFatherName.Text = (string)dr["Father_name"];
                    inputFatherDesignation.Text = (string)dr["Father_designation"];
                    inputFatherMobileNo.Text = (string)dr["Father_mobile_no"];
                    inputMotherName.Text = (string)dr["Mother_name"];
                    inputMotherDesignation.Text = (string)dr["Mother_designation"];
                    inputMothersMobileNo.Text = (string)dr["Mother_mobile_no"];
                    inputMentorName.Text = (string)dr["Mentor_name"];
                    inputHostelName.Text = (string)dr["Hostel_name"];
                    inputLocalAddr1.Text = (string)dr["Local_Address_Line1"];
                    inputLocalAddr2.Text = (string)dr["Local_Address_Line2"];
                    inputCity1.Text = (string)dr["local_city"];
                    inputPincode1.Text = Convert.ToString((int)dr["local_pincode"]);
                    inputState1.Text = (string)dr["local_state"];
                    inputPermanentAddr1.Text = (string)dr["Permanent_Address_Line1"];
                    inputPermanentAddr2.Text = (string)dr["Permanent_Address_Line2"];
                    inputCity2.Text = (string)dr["Permanent_City"];
                    inputPincode2.Text = Convert.ToString((int)dr["Permament_Pincode"]);
                    inputState.Text = (string)dr["Permament_State"];
                    inputIndianLanguagesKnown1.Text = (string)dr["Indian_languages_known1"];
                    inputIndianLanguagesKnown2.Text = (string)dr["Indian_languages_known2"];
                    inputIndianLanguagesKnown3.Text = (string)dr["Indian_languages_known3"];
                    inputIndianLanguagesKnown4.Text = (string)dr["Indian_languages_known4"];
                    inputIndianLanguagesKnown5.Text = (string)dr["Indian_languages_known5"];
                    foreignLanguagesKnown1.Text = (string)dr["Other_languages_known1"];
                    foreignLanguagesKnown2.Text = (string)dr["Other_languages_known2"];
                    foreignLanguagesKnown3.Text = (string)dr["Other_languages_known3"];
                    foreignLanguagesKnown4.Text = (string)dr["Other_languages_known4"];
                    foreignLanguagesKnown5.Text = (string)dr["Other_languages_known5"];
                    inputPassport.Text = (string)dr["Passport"];
                    inputDL.Text = (string)dr["Driving_license"];
                    input10thPer.Text = dr["percentage_10th"].ToString();
                    input10thYr.Text = Convert.ToString((int)dr["year_of_passing_10th"]);
                    input10thState.Text = (string)dr["graduating_state_10th"];
                    inputBoard1.Text = (string)dr["board_name_10th"];
                    inputSchool1.Text = (string)dr["school_name_10th"];
                    Textbox1.Text = dr["percentage_12th"].ToString();
                    inputYr2.Text = Convert.ToString((int)dr["year_of_passing_12th"]);
                    inputGraduatingState2.Text = (string)dr["graduating_state_12th"];
                    inputBoard2.Text = (string)dr["board_name_12th"];
                    inputSchool2.Text = (string)dr["school_name_12th"];
                    inputDiplPer.Text =dr["percentage_diploma"].ToString();
                    inputDipYr.Text = dr["year_of_passing_diploma"].ToString();
                    inputSGPA1.Text = dr["ug_sgpa1"].ToString();
                    inputSGPA2.Text = dr["ug_sgpa2"].ToString();
                    inputSGPA3.Text = dr["ug_sgpa3"].ToString();
                    inputSGPA4.Text = dr["ug_sgpa4"].ToString();
                    inputSGPA5.Text = dr["ug_sgpa5"].ToString();
                    inputSGPA6.Text = dr["ug_sgpa6"].ToString();
                    inputSGPA7.Text = dr["ug_sgpa7"].ToString();
                    inputCGPA.Text = dr["ug_cgpa"].ToString();
                    inputpgSGPA1.Text = dr["pg_sgpa1"].ToString();
                    inputpgSGPA2.Text = dr["pg_sgpa2"].ToString();
                    inputpgSGPA3.Text = dr["pg_sgpa3"].ToString();
                    inputPgCgpa.Text = dr["pg_cgpa"].ToString();
                    inputGate.Text = dr["gate_score"].ToString();
                    inputArrear.Text = Convert.ToString((int)dr["no_of_current_arrears"]);
                    inputHistoryOfArrears.Text = (string)dr["history_of_arrears"];
                    InputBreakInStudies.Text = Convert.ToString((int)dr["break_in_studies"]);
                    inputInternship.Text = (string)dr["internship"];
                    inputIntCompany.Text = (string)dr["internship_company_name"];
                    inputIntFrom.Text = (string)dr["from_date"];
                    inputIntDuration.Text = (string)dr["to_date"];
                    inputStipend.Text = Convert.ToString((int)dr["stipend"]);
                    inputAward1.Text = (string)dr["award_or_recognition1"];
                    inputAward2.Text = (string)dr["award_or_recognition2"];
                    inputAward3.Text = (string)dr["award_or_recognition3"];
                    inputMembership1.Text = (string)dr["membership_in_profession"];
                    inputMembership2.Text = (string)dr["membership_in_professional_bodies2"];
                    inputMembership3.Text = (string)dr["membership_in_professional_bodies3"];
                    inputPaper1.Text = (string)dr["paper_presented_or_project_exhibited1"];
                    inputPaper2.Text = (string)dr["paper_presented_or_project_exhibited2"];
                    inputPaper3.Text = (string)dr["paper_presented_or_project_exhibited3"];
                    inputExtraCurricular1.Text = (string)dr["extra_curricular_activities1"];
                    inputExtraCurricular2.Text = (string)dr["extra_curricular_activities2"];
                    inputExtraCurricular3.Text = (string)dr["extra_curricular_activities3"];
                    inputTraining1.Text = (string)dr["technical_training_undergone1"];
                    inputTraining2.Text = (string)dr["technical_training_undergone2"];
                    inputTraining3.Text = (string)dr["technical_training_undergone3"];
                    Textbox4.Text = (string)dr["domain_expertise1"];
                    inputDomainExp1.Text = (string)dr["domain_expertise2"];
                    inputDomainExp2.Text = (string)dr["domain_expertise3"];
                    inputTech1.Text = (string)dr["technical_skills1"];
                    inputTech2.Text = (string)dr["technical_skills2"];
                    inputTech3.Text = (string)dr["technical_skills3"];
                    inputCompany1.Text = (string)dr["interested_companies_to_work1"];
                    inputCompany2.Text = (string)dr["interested_companies_to_work2"];
                    inputCompany3.Text = (string)dr["interested_companies_to_work3"];
                    inputLinkedIn.Text = (string)dr["linkedin_id"];
                    inputPrep.Text = (string)dr["preparatory_activities"];
                    inputPlacementActivity.Text = (string)dr["attend_placements"];
                    higher_studies.Text = (string)dr["higher_studies"];
                    entrepreneur.Text = (string)dr["entrepreneur"];
                    if((string)dr["placed"] == "yes")
                    {
                        optionsRadio2.Enabled = false;
                    }
                    dr.Close();
                }
            }
            catch (Exception ex)
            {
                label1.Text = ex.Message;
            }


        }
    }
}