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
    public partial class details_page : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=JANITA\SQLEXPRESS;Initial Catalog=pms;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            inputRegisterNo.Text = Session["id"].ToString();
            inputRegisterNo.ReadOnly = true;
        }

        protected void submit_button_Click(object sender, EventArgs e)
        {
            try
            {
                string gender = "";
                string passport = "";
                string license = "";
                if (optionsRadio1.Checked == true)
                {
                    gender = "male";
                }
                else if (optionsRadio2.Checked == true)
                {
                    gender = "female";
                }
                if (optionsRadio3.Checked == true)
                {
                    passport = "yes";
                }
                else if (optionsRadio4.Checked == true)
                {
                    passport = "no";
                }
                if (optionsRadio5.Checked == true)
                {
                    license = "yes";
                }
                else if (optionsRadio6.Checked == true)
                {
                    license = "no";
                }

                string arr = "no";            //acedamics details
                string brk = "no";
                if (optionsRadio7.Checked == true)
                {
                    arr = "yes";
                }
                else if (optionsRadio8.Checked == true)
                {
                    arr = "no";
                }

                if (optionsRadio9.Checked == true)
                {
                    brk = "yes";
                }
                else if (optionsRadio10.Checked == true)
                {
                    brk = "no";
                }

                string intern = "";
                if (optionsRadio11.Checked == true)
                {
                    intern = "yes";
                }
                if (optionsRadio12.Checked == true)
                {
                    intern = "no";
                }
                string prep = "";
                if (optionsRadio13.Checked == true)
                {
                    prep = "yes";
                }
                if (optionsRadio14.Checked == true)
                {
                    prep = "no";
                }
                string atp = " ";
                if (optionsRadio15.Checked == true)
                {
                    atp = "yes";
                }
                else if (optionsRadio16.Checked == true)
                {
                    atp = "no";
                }
                string hs = " ";
                if (optionsRadio17.Checked == true)
                {
                    hs = "yes";
                }
                else if (optionsRadio18.Checked == true)
                {
                    hs = "no";
                }
                string ent = " ";
                if (optionsRadio19.Checked == true)
                {
                    ent = "yes";
                }
                else if (optionsRadio20.Checked == true)
                {
                    ent = "no";
                }
                string awd1 = inputAward1.Text;
                string awd2 = inputAward2.Text;
                string awd3 = inputAward3.Text;
                
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO [student_details] (userId,name,First_name,Middle_name,Last_name,Mobile_no,Land_line,Karunya_mail_id,Personal_mail_id,gender,Date_of_birth,Father_name,Father_designation,Father_mobile_no,Mother_name,Mother_designation,Mother_mobile_no,Mentor_name,Hostel_name,Local_Address_Line1,Local_Address_Line2,local_city,local_pincode,local_state,Permanent_Address_Line1,Permanent_Address_Line2,Permanent_City,Permament_Pincode,Permament_State,Indian_languages_known1,Indian_languages_known2,Indian_languages_known3,Indian_languages_known4,Indian_languages_known5,Other_languages_known1,Other_languages_known2,Other_languages_known3,Other_languages_known4,Other_languages_known5,Passport,Driving_license,percentage_10th,year_of_passing_10th,graduating_state_10th,board_name_10th,school_name_10th,percentage_12th,year_of_passing_12th,graduating_state_12th,board_name_12th,school_name_12th,percentage_diploma,year_of_passing_diploma,ug_sgpa1,ug_sgpa2,ug_sgpa3,ug_sgpa4,ug_sgpa5,ug_sgpa6,ug_sgpa7,ug_cgpa,pg_sgpa1,pg_sgpa2,pg_sgpa3,pg_cgpa,gate_score,no_of_current_arrears,history_of_arrears,break_in_studies,placed,internship,internship_company_name,from_date,to_date,stipend,award_or_recognition1,award_or_recognition2,award_or_recognition3, membership_in_profession,membership_in_professional_bodies2,membership_in_professional_bodies3,paper_presented_or_project_exhibited1,paper_presented_or_project_exhibited2,paper_presented_or_project_exhibited3,extra_curricular_activities1,extra_curricular_activities2,extra_curricular_activities3,technical_training_undergone1,technical_training_undergone2,technical_training_undergone3,domain_expertise1,domain_expertise2,domain_expertise3,technical_skills1,technical_skills2,technical_skills3,interested_companies_to_work1,interested_companies_to_work2,interested_companies_to_work3,preparatory_activities,attend_placements,higher_studies,entrepreneur,linkedin_id) VALUES (@u,@n,@fn,@mn,@ln,@mob_no,@ll,@kmail,@pmail,@g,@dob,@father_n,@father_des,@father_mob_no,@mother_n,@mother_des,@mother_mob_no,@mentor_name,@hostel_name,@l_a_1,@l_a_2,@l_c,@l_p,@l_s,@p_a_1,@p_a_2,@p_c,@p_p,@p_s,@i_l_1,@i_l_2,@i_l_3,@i_l_4,@i_l_5,@o_l_1,@o_l_2,@o_l_3,@o_l_4,@o_l_5,@pas,@dl,@per_10,@yr_10,@gr_10,@bn_10,@sc_10,@per_12,@yr_12,@gr_12,@bn_12,@sc_12,@per_dip,@yr_dip,@u_sgpa_1,@u_sgpa_2,@u_sgpa_3,@u_sgpa_4,@u_sgpa_5,@u_sgpa_6,@u_sgpa_7,@u_cgpa,@p_sgpa_1,@p_sgpa_2,@p_sgpa_3,@p_cgpa,@gate,@n_arr,@history_arr,@brk,@pl,@in,@in_company,@from,@to,@stipend, @aw1, @aw2, @aw3,@mem1, @mem2, @mem3,@pp1, @pp2, @pp3,@ex1, @ex2, @ex3,@tt1, @tt2, @tt3,@dm1, @dm2, @dm3, @ts1, @ts2, @ts3,@ic1, @ic2, @ic3,@pr,@at,@hs,@en,@li)", con);
                cmd.Parameters.Add("@u", SqlDbType.VarChar, 20, "userId").Value = inputRegisterNo.Text.ToUpper();
                cmd.Parameters.Add("@n", SqlDbType.VarChar, 255, "name").Value = inputName.Text;
                cmd.Parameters.Add("@fn", SqlDbType.VarChar, 20, "First_name").Value = inputFirstName.Text;
                cmd.Parameters.Add("@mn", SqlDbType.VarChar, 20, "Middle_name").Value = inputMiddleName.Text;
                cmd.Parameters.Add("@ln", SqlDbType.VarChar, 15, "Last_name").Value = inputLastName.Text;
                cmd.Parameters.Add("@mob_no", SqlDbType.VarChar, 15, "Mobile_no").Value = inputMobileNo.Text;
                cmd.Parameters.Add("@ll", SqlDbType.VarChar, 50, "Land_line").Value = inputLandLineNo.Text;
                cmd.Parameters.Add("@kmail", SqlDbType.VarChar, 255, "Karunya_mail_id").Value = inputKarunyaEmailId.Text;
                cmd.Parameters.Add("@pmail", SqlDbType.VarChar, 255, "Personal_mail_id").Value = inputPersonalMailId.Text;
                cmd.Parameters.Add("@g", SqlDbType.VarChar, 6, "gender").Value = gender;
                cmd.Parameters.Add("@dob", SqlDbType.VarChar, 15, "Date_of_birth").Value = inputDOB.Text;
                cmd.Parameters.Add("@father_n", SqlDbType.VarChar, 255, "Father_name").Value = inputFatherName.Text;
                cmd.Parameters.Add("@father_des", SqlDbType.VarChar, 255, "Father_designation").Value = inputFatherDesignation.Text;
                cmd.Parameters.Add("@father_mob_no", SqlDbType.VarChar, 50, "Father_mobile_no").Value = inputFatherMobileNo.Text;
                cmd.Parameters.Add("@mother_n", SqlDbType.VarChar, 255, "Mother_name").Value = inputMotherName.Text;
                cmd.Parameters.Add("@mother_des", SqlDbType.VarChar, 20, "Mother_designation").Value = inputMotherDesignation.Text;
                cmd.Parameters.Add("@mother_mob_no", SqlDbType.VarChar, 50, "Mother_mobile_no").Value = inputMothersMobileNo.Text;
                cmd.Parameters.Add("@mentor_name", SqlDbType.VarChar, 255, "Mentor_name").Value = inputMentorName.Text;
                cmd.Parameters.Add("@hostel_name", SqlDbType.VarChar, 20, "Hostel_name").Value = inputHostelName.Text;
                cmd.Parameters.Add("@l_a_1", SqlDbType.VarChar, 50, "Local_Address_Line1").Value = inputLocalAddr1.Text;
                cmd.Parameters.Add("@l_a_2", SqlDbType.VarChar, 50, "Local_Address_Line2").Value = inputLocalAddr2.Text;
                cmd.Parameters.Add("@l_c", SqlDbType.VarChar, 50, "local_city").Value = inputCity1.Text;
                cmd.Parameters.Add("@l_p", SqlDbType.Int, 10, "local_pincode").Value = int.Parse(inputPincode1.Text);
                cmd.Parameters.Add("@l_s", SqlDbType.VarChar, 50, "local_state").Value = inputState.Text;
                cmd.Parameters.Add("@p_a_1", SqlDbType.VarChar, 50, "Permanent_Address_Line1").Value = inputPermanentAddr1.Text;
                cmd.Parameters.Add("@p_a_2", SqlDbType.VarChar, 50, "Permanent_Address_Line2").Value = inputPermanentAddr2.Text;
                cmd.Parameters.Add("@p_c", SqlDbType.VarChar, 50, "Permanent_City").Value = inputCity2.Text;
                cmd.Parameters.Add("@p_p", SqlDbType.Int, 50, "Permament_Pincode").Value = inputPincode2.Text;
                cmd.Parameters.Add("@p_s", SqlDbType.VarChar, 50, "Permament_State").Value = inputState1.Text;
                cmd.Parameters.Add("@i_l_1", SqlDbType.VarChar, 20, "Indian_languages_known1").Value = inputIndianLanguagesKnown1.Text;
                cmd.Parameters.Add("@i_l_2", SqlDbType.VarChar, 20, "Indian_languages_known2").Value = inputIndianLanguagesKnown2.Text;
                cmd.Parameters.Add("@i_l_3", SqlDbType.VarChar, 20, "Indian_languages_known3").Value = inputIndianLanguagesKnown3.Text;
                cmd.Parameters.Add("@i_l_4", SqlDbType.VarChar, 20, "Indian_languages_known4").Value = inputIndianLanguagesKnown4.Text;
                cmd.Parameters.Add("@i_l_5", SqlDbType.VarChar, 20, "Indian_languages_known5").Value = inputIndianLanguagesKnown5.Text;
                cmd.Parameters.Add("@o_l_1", SqlDbType.VarChar, 20, "Other_languages_known1").Value = foreignLanguagesKnown1.Text;
                cmd.Parameters.Add("@o_l_2", SqlDbType.VarChar, 20, "Other_languages_known2").Value = foreignLanguagesKnown2.Text;
                cmd.Parameters.Add("@o_l_3", SqlDbType.VarChar, 20, "Other_languages_known3").Value = foreignLanguagesKnown3.Text;
                cmd.Parameters.Add("@o_l_4", SqlDbType.VarChar, 20, "Other_languages_known4").Value = foreignLanguagesKnown4.Text;
                cmd.Parameters.Add("@o_l_5", SqlDbType.VarChar, 20, "Other_languages_known5").Value = foreignLanguagesKnown5.Text;
                cmd.Parameters.Add("@pas", SqlDbType.VarChar, 5, "Passport").Value = passport;
                cmd.Parameters.Add("@dl", SqlDbType.VarChar, 5, "Driving_license").Value = license;

                cmd.Parameters.Add("@per_10", SqlDbType.Float, 100, "percentage_10th").Value = float.Parse(input10thPer.Text);
                cmd.Parameters.Add("@yr_10", SqlDbType.Int, 100, "year_of_passing_10th").Value = int.Parse(input10thYr.Text);
                cmd.Parameters.Add("@gr_10", SqlDbType.VarChar, 255, "graduating_state_10th").Value = input10thState.Text;
                cmd.Parameters.Add("@bn_10", SqlDbType.VarChar, 255, "board_name_10th").Value = inputBoard1.Text;
                cmd.Parameters.Add("@sc_10", SqlDbType.VarChar, 255, "school_name_10th").Value = inputSchool2.Text;
                cmd.Parameters.Add("@per_12", SqlDbType.Float, 100, "percentage_12th").Value = float.Parse(input12thPer.Text);
                cmd.Parameters.Add("@yr_12", SqlDbType.VarChar, 255, "year_of_passing_12th").Value = input12thPer.Text;
                cmd.Parameters.Add("@gr_12", SqlDbType.VarChar, 255, "graduating_state_12th").Value = inputYr2.Text;
                cmd.Parameters.Add("@bn_12", SqlDbType.VarChar, 255, "board_name_12th").Value = inputBoard2.Text;
                cmd.Parameters.Add("@sc_12", SqlDbType.VarChar, 255, "school_name_12th").Value = inputSchool2.Text;
                cmd.Parameters.Add("@per_dip", SqlDbType.Float, 100, "percentage_diploma").Value = float.Parse(inputDiplPer.Text);
                cmd.Parameters.Add("@yr_dip", SqlDbType.Int, 100, "year_of_passing_diploma").Value = inputYr3.Text;
                cmd.Parameters.Add("@u_sgpa_1", SqlDbType.Float, 100, "ug_sgpa1").Value = float.Parse(inputSGPA1.Text);
                cmd.Parameters.Add("@u_sgpa_2", SqlDbType.Float, 100, "ug_sgpa2").Value = float.Parse(inputSGPA2.Text);
                cmd.Parameters.Add("@u_sgpa_3", SqlDbType.Float, 100, "ug_sgpa3").Value = float.Parse(inputSGPA3.Text);
                cmd.Parameters.Add("@u_sgpa_4", SqlDbType.Float, 100, "ug_sgpa4").Value = float.Parse(inputSGPA4.Text);
                cmd.Parameters.Add("@u_sgpa_5", SqlDbType.Float, 100, "ug_sgpa5").Value = float.Parse(inputSGPA5.Text);
                cmd.Parameters.Add("@u_sgpa_6", SqlDbType.Float, 100, "ug_sgpa6").Value = float.Parse(inputSGPA6.Text);
                cmd.Parameters.Add("@u_sgpa_7", SqlDbType.Float, 100, "ug_sgpa7").Value = float.Parse(inputSGPA7.Text);
                cmd.Parameters.Add("@u_cgpa", SqlDbType.Float, 100, "ug_cgpa").Value = float.Parse(inputCGPA.Text);
                cmd.Parameters.Add("@p_sgpa_1", SqlDbType.Float, 100, "pg_sgpa1").Value = float.Parse(inputpgSGPA1.Text);
                cmd.Parameters.Add("@p_sgpa_2", SqlDbType.Float, 100, "pg_sgpa2").Value = float.Parse(inputpgSGPA2.Text);
                cmd.Parameters.Add("@p_sgpa_3", SqlDbType.Float, 100, "pg_sgpa3").Value = float.Parse(inputpgSGPA3.Text);
                cmd.Parameters.Add("@p_cgpa", SqlDbType.Float, 100, "pg_cgpa").Value = float.Parse(inputpgCGPA.Text);
                cmd.Parameters.Add("@gate", SqlDbType.Float, 100, "gate_score").Value = float.Parse(inputGate.Text);
                cmd.Parameters.Add("@n_arr", SqlDbType.Int, 100, "no_of_current_arrears").Value = int.Parse(inputCurrentArrears.Text);
                cmd.Parameters.Add("@history_arr", SqlDbType.VarChar, 100, "history_of_arrears").Value = arr;
                cmd.Parameters.Add("@brk", SqlDbType.Int, 10, "break_in_studies").Value = inputBreak.Text;
                cmd.Parameters.Add("@pl", SqlDbType.VarChar, 255, "placed").Value = "no";

                cmd.Parameters.Add("@in", SqlDbType.VarChar, 255, "internship").Value = intern;
                cmd.Parameters.Add("@in_company", SqlDbType.VarChar, 255, "internship_company_name").Value = inputIntCompany.Text;
                cmd.Parameters.Add("@from", SqlDbType.VarChar, 50, "from_date").Value = inputIntCompany.Text;
                cmd.Parameters.Add("@to", SqlDbType.VarChar, 50, "to_date").Value = inputIntCompany.Text;
                cmd.Parameters.Add("@stipend", SqlDbType.Int, 100, "stipend").Value = inputIntCompany.Text;
                cmd.Parameters.Add("@aw1", SqlDbType.VarChar, 255, "award_or_recognition1").Value = awd1;
                cmd.Parameters.Add("@aw2", SqlDbType.VarChar, 255, "award_or_recognition2").Value = awd2;
                cmd.Parameters.Add("@aw3", SqlDbType.VarChar, 255, "award_or_recognition3").Value = awd3;
                cmd.Parameters.Add("@mem1", SqlDbType.VarChar, 255, "membership_in_profession").Value = inputMembership1.Text;
                cmd.Parameters.Add("@mem2", SqlDbType.VarChar, 255, "membership_in_professional_bodies2").Value = inputMembership2.Text;
                cmd.Parameters.Add("@mem3", SqlDbType.VarChar, 255, "membership_in_professional_bodies3").Value = inputMembership3.Text;
                cmd.Parameters.Add("@pp1", SqlDbType.VarChar, 255, "paper_presented_or_project_exhibited1").Value = inputPaper1.Text;
                cmd.Parameters.Add("@pp2", SqlDbType.VarChar, 255, "paper_presented_or_project_exhibited2").Value = inputPaper2.Text;
                cmd.Parameters.Add("@pp3", SqlDbType.VarChar, 255, "paper_presented_or_project_exhibited3").Value = inputPaper3.Text;
                cmd.Parameters.Add("@ex1", SqlDbType.VarChar, 255, "extra_curricular_activities1").Value = inputExtraCurricular1.Text;
                cmd.Parameters.Add("@ex2", SqlDbType.VarChar, 255, "extra_curricular_activities2").Value = inputExtraCurricular2.Text;
                cmd.Parameters.Add("@ex3", SqlDbType.VarChar, 255, "extra_curricular_activities3").Value = inputExtraCurricular3.Text;
                cmd.Parameters.Add("@tt1", SqlDbType.VarChar, 255, "technical_training_undergone1").Value = inputTraining1.Text;
                cmd.Parameters.Add("@tt2", SqlDbType.VarChar, 255, "technical_training_undergone2").Value = inputTraining2.Text;
                cmd.Parameters.Add("@tt3", SqlDbType.VarChar, 255, "technical_training_undergone3").Value = inputTraining3.Text;
                cmd.Parameters.Add("@dm1", SqlDbType.VarChar, 255, "domain_expertise1").Value = inputDomainExp1.Text;
                cmd.Parameters.Add("@dm2", SqlDbType.VarChar, 255, "domain_expertise2").Value = inputDomainExp2.Text;
                cmd.Parameters.Add("@dm3", SqlDbType.VarChar, 255, "domain_expertise3").Value = inputDomainExp3.Text;
                cmd.Parameters.Add("@ts1", SqlDbType.VarChar, 255, "technical_skills1").Value = inputTech1.Text;
                cmd.Parameters.Add("@ts2", SqlDbType.VarChar, 255, "technical_skills2").Value = inputTech2.Text;
                cmd.Parameters.Add("@ts3", SqlDbType.VarChar, 255, "technical_skills3").Value = inputTech3.Text;
                cmd.Parameters.Add("@ic1", SqlDbType.VarChar, 255, "interested_companies_to_work1").Value = inputCompany1.Text;
                cmd.Parameters.Add("@ic2", SqlDbType.VarChar, 255, "interested_companies_to_work2").Value = inputCompany2.Text;
                cmd.Parameters.Add("@ic3", SqlDbType.VarChar, 255, "interested_companies_to_work3").Value = inputCompany3.Text;
                cmd.Parameters.Add("@pr", SqlDbType.VarChar, 255, "preparatory_activities").Value = prep;
                cmd.Parameters.Add("@at", SqlDbType.VarChar, 3, "attend_placements").Value = atp;
                cmd.Parameters.Add("@hs", SqlDbType.VarChar, 3, "higher_studies").Value = hs;
                cmd.Parameters.Add("@en", SqlDbType.VarChar, 3, "entrepreneur").Value = ent;
                cmd.Parameters.Add("@li", SqlDbType.VarChar, 50, "linkedin_id").Value = inputLinkedIn.Text;

                int query_result = cmd.ExecuteNonQuery();
                if(query_result >= 1)
                {
                    label1.Text = "SUCCESSFULL";
                    //Response.Redirect("");
                }

            }
            catch (Exception ex)
            {
                label1.Text = ex.Message;
            }
            con.Close();
        }
    }
}