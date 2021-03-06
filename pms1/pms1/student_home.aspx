﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student_home.aspx.cs" Inherits="pms1.student_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
     <form id="form1" runat="server">
   
   <nav class="navbar navbar-inverse">
  <div class="container-fluid" >
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">PROFILE MANAGEMENT SYSTEM</a>
        <a class="navbar-brand" href="#">HOME<span class="sr-only">(current)</span></a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>

        <div class="form-horizontal">
      <div class="form-group">
      <label class="col-lg-5 control-label">NAME</label>
          <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputName" placeholder="NAME"></asp:textbox>
      </div>
      </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">REGISTER NUMBER</label>
             <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputRegisterNo" placeholder="REGISTER NUMBER"></asp:textbox>
      </div>
            </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">FIRST NAME</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputFirstName" placeholder="FIRST NAME"></asp:textbox>
      </div>
            </div>
         <div class="form-group">
      <label class="col-lg-5 control-label">MIDDLE NAME</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputMiddleName" placeholder="MIDDLE NAME"></asp:textbox>
      </div>
              </div>
         <div class="form-group">
      <label class="col-lg-5 control-label">LAST NAME</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputLastName" placeholder="LAST NAME"></asp:textbox>
      </div>
              </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">GENDER</label>
         <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputGender"></asp:textbox>
      </div>
           
      </div>    
        <div class="form-group">
      <label class="col-lg-5 control-label">MOBILE NUMBER</label>
        <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputMobileNo" placeholder="MOBILE NUMBER"></asp:textbox>
      </div>    
        </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">LANDLINE NUMBER</label>
        <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputLandLineNo" placeholder="LANDLINE NUMBER"></asp:textbox>
      </div>    
        </div>

        <div class="form-group">
      <label class="col-lg-5 control-label">KARUNYA MAIL ID</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputKarunyaEmailId" placeholder="KARUNYA MAIL ID"></asp:textbox>
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-5 control-label">PERSONAL MAIL ID</label>
        <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputPersonalMailId" placeholder="PERSONAL MAIL ID"></asp:textbox>
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-5 control-label">D.O.B</label>
        <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputDOB" placeholder="DATE OF BIRTH"></asp:textbox>
      </div>
    </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">FATHER'S NAME</label>
         <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputFatherName" placeholder="FATHER'S NAME"></asp:textbox>
      </div>  
        </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">FATHER'S DESIGNATION</label>
        <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputFatherDesignation" placeholder="FATHER'S DESIGNATION"></asp:textbox>
      </div>  
        </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">FATHER'S MOBILE NUMBER</label>
        <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputFatherMobileNo" placeholder="FATHER'S MOBILE NUMBER"></asp:textbox>
      </div>  
        </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">MOTHER'S NAME</label>
         <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputMotherName" placeholder="MOTHER'S NAME"></asp:textbox>
      </div>  
        </div>

        <div class="form-group">
      <label class="col-lg-5 control-label">MOTHER'S DESIGNATION</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputMotherDesignation" placeholder="MOTHER'S DESIGNATION"></asp:textbox>
      </div>
                  </div>
            <div class="form-group">
      <label class="col-lg-5 control-label">MOTHER'S MOBILE NUMBER</label>
          <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputMothersMobileNo" placeholder="MOTHER'S MBL NO."></asp:textbox>
      </div>
            </div>
       <div class="form-group">
      <label class="col-lg-5 control-label">MENTOR'S NAME</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputMentorName" placeholder="MENTOR'S NAME"></asp:textbox>
      </div>   
                   </div>
                <div class="form-group">
      <label class="col-lg-5 control-label">HOSTEL NAME</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputHostelName" placeholder="HOSTEL NAME"></asp:textbox>
      </div>
                            </div>
                    <div class="form-group">
      <label class="col-lg-5 control-label">LOCAL ADDRESS LINE 1</label>
    <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputLocalAddr1" placeholder="LOCAL ADDRESS LINE 1"></asp:textbox>
      </div>
                    </div>
                    <div class="form-group">
      <label class="col-lg-5 control-label">LOCAL ADDRESS LINE 2</label>
             <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputLocalAddr2" placeholder="LOCAL ADDRESS LINE 2"></asp:textbox>
      </div>
                                    </div>
                        <div class="form-group">
      <label class="col-lg-5 control-label">CITY</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputCity1" placeholder="CITY"></asp:textbox>
      </div>
                                                  </div>
                            <div class="form-group">
      <label class="col-lg-5 control-label">PINCODE</label>
             <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputPincode1" placeholder="PINCODE"></asp:textbox>
      </div>
                                                          </div>
                                <div class="form-group">
      <label class="col-lg-5 control-label">STATE</label>
     <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputState1" placeholder="STATE"></asp:textbox>
      </div>
                                </div>
                                <div class="form-group">
      <label class="col-lg-5 control-label">PERMANENT ADDRESS LINE 1</label>
    <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputPermanentAddr1" placeholder="PERMANENT ADDRESS LINE 1"></asp:textbox>
      </div>
    </div>
                                <div class="form-group">
      <label class="col-lg-5 control-label">PERMANENT ADDRESS LINE 2</label>
             <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputPermanentAddr2" placeholder="PERMANENT ADDRESS LINE 2"></asp:textbox>
      </div>
                                                   </div>
                                <div class="form-group">
      <label class="col-lg-5 control-label">CITY</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputCity2" placeholder="CITY"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">PINCODE</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputPincode2" placeholder="PINCODE"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">STATE</label>
     <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputState" placeholder="STATE"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label"><u>INDIAN LANGUAGES KNOWN</u></label>
             
                                                                    </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">LANGUAGE 1</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputIndianLanguagesKnown1" placeholder="INDIAN LANGUAGES KNOWN"></asp:textbox>
      </div>
                                        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">LANGUAGE 2</label>
             <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputIndianLanguagesKnown2" placeholder="INDIAN LANGUAGES KNOWN"></asp:textbox>
      </div>
                                        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">LANGUAGE 3</label>
             <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputIndianLanguagesKnown3" placeholder="INDIAN LANGUAGES KNOWN"></asp:textbox>
      </div>
                                        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">LANGUAGE 4</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputIndianLanguagesKnown4" placeholder="INDIAN LANGUAGES KNOWN"></asp:textbox>
      </div>
                                        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">LANGUAGE 5</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputIndianLanguagesKnown5" placeholder="INDIAN LANGUAGES KNOWN"></asp:textbox>
      </div>
             </div>
        
        
                                        <div class="form-group">
      <label class="col-lg-5 control-label"><u>OTHER FOREIGN LANGUAGES KNOWN</u></label>
     
                                        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">LANGUAGE 1</label>
             <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="foreignLanguagesKnown1" placeholder="INDIAN LANGUAGES KNOWN"></asp:textbox>
      </div>
                                        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">LANGUAGE 2</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="foreignLanguagesKnown2" placeholder="INDIAN LANGUAGES KNOWN"></asp:textbox>
      </div>
                                        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">LANGUAGE 3</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="foreignLanguagesKnown3" placeholder="FOREIGN LANGUAGES KNOWN"></asp:textbox>
      </div>
                                        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">LANGUAGE 4</label>
            <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="foreignLanguagesKnown4" placeholder="FOREIGN LANGUAGES KNOWN"></asp:textbox>
      </div>
                                        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">LANGUAGE 5</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="foreignLanguagesKnown5" placeholder="FOREIGN LANGUAGES KNOWN"></asp:textbox>
      </div>
        </div>
      <div class="form-group">
      <label class="col-lg-5 control-label">PASSPORT</label>
          <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputPassport"></asp:textbox>
      </div>
      </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">DRIVING LICENSE</label>
         <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputDL"></asp:textbox>
      </div>
                                    </div>
                                        <div class="form-group">
      <label class="col-lg-5 control-label"><u>10TH</u></label>
      
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">PERCENTAGE</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="input10thPer" placeholder="10 %"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">YEAR OF PASSING</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="input10thYr" placeholder="10th YEAR OF PASSING"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">GRADUATING STATE</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="input10thState" placeholder="10th GRADUATING STATE"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">NAME OF THE BOARD/UNIVERSITY</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputBoard1" placeholder="NAME OF THE BOARD/UNIVERSITY"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">NAME OF THE SCHOOL</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputSchool1" placeholder="SCHOOL NAME"></asp:textbox>
      </div>
    </div>
                                        <div class="form-group">
      <label class="col-lg-5 control-label"><u>12TH</u></label>
      
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">PERCENTAGE</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="Textbox1" placeholder="STATE"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">YEAR OF PASSING</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputYr2" placeholder="YEAR OF PASSING"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">GRADUATING STATE</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputGraduatingState2" placeholder="GRADUATING STATE"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">NAME OF THE BOARD/UNIVERSITY</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputBoard2" placeholder="BOARD/UNIVERSITY NAME"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">NAME OF SCHOOL</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputSchool2" placeholder="SCHOOL NAME"></asp:textbox>
      </div>
    </div>
                                        <div class="form-group">
      <label class="col-lg-5 control-label"><U>DIPLOMA</U></label>
      
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">PERCENTANGE</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputDiplPer" placeholder="DIPLOMA %"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">YEAR OF PASSING</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputDipYr" placeholder="DIPLOMA %"></asp:textbox>
      </div>
    </div>
                                        <div class="form-group">
      <label class="col-lg-5 control-label"><U>UNGER GRADUATION</U></label>
      
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">SGPA 1</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputSGPA1" placeholder="SGPA 1"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">SGPA 2</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputSGPA2" placeholder="SGPA 2"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">SGPA 3</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputSGPA3" placeholder="SGPA 3"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">SGPA 4</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputSGPA4" placeholder="SGPA 4"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">SGPA 5</label>
     <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputSGPA5" placeholder="SGPA 5"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">SGPA 6</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputSGPA6" placeholder="SGPA 6"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">SGPA 7</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputSGPA7" placeholder="SGPA 7"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">CGPA</label>
     <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputCGPA" placeholder="CGPA"></asp:textbox>
      </div>
    </div>
                                        <div class="form-group">
      <label class="col-lg-5 control-label"><U>POST GRADUATION</U></label>
      
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">SGPA 1</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputpgSGPA1" placeholder="SGPA 1"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">SGPA 2</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputpgSGPA2" placeholder="SGPA 2"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">SGPA 3</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputpgSGPA3" placeholder="SGPA 3"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">CGPA</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputPgCgpa" placeholder="CGPA"></asp:textbox>
      </div>
    </div>
             <div class="form-group">
      <label class="col-lg-5 control-label">GATE SCORE</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputGate" placeholder="GATE"></asp:textbox>
      </div>
    </div>
                            
        <div class="form-group">
      <label class="col-lg-5 control-label">NO. OF CURRENT ARREARS</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputArrear" placeholder="NO. OF CURRENT ARREARS"></asp:textbox>
      </div>
    </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">HISTORY OF ARREARS</label>
        <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputHistoryOfArrears" placeholder="HISTORY OF ARREARS"></asp:textbox>
      </div>
       </div>
                                    <div class="form-group">
      <label class="col-lg-5 control-label">BREAK IN STUDIES</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="InputBreakInStudies" placeholder="BREAK IN STUDIES"></asp:textbox>
      </div>                              </div>
                                    
                                            <div class="form-group">
      <label class="col-lg-5 control-label"><u>INTERNSHIP</u></label>
      
    </div>
    

      <div class="form-group">
      <label class="col-lg-5 control-label">INTERNSHIP</label>       
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputInternship" placeholder="KARUNYA MAIL ID"></asp:textbox>
      </div>
      </div>
       <div class="form-group">
      <label class="col-lg-5 control-label">If yes, COMPANY NAME</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputIntCompany" placeholder="COMPANY NAME"></asp:textbox>
      </div>
      </div>
      <div class="form-group">
      <label class="col-lg-5 control-label">FROM DATE</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputIntFrom" placeholder="FROM DATE"></asp:textbox>
      </div>
      </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">TO DATE</label>
     <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputIntDuration" placeholder="TO DATE"></asp:textbox>
      </div>
      </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">STIPEND</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputStipend" placeholder="STIPEND"></asp:textbox>
      </div>
      </div>
       
       
                                            <div class="form-group">
      <label class="col-lg-5 control-label"><u>AWARD/RECOGNITION</u></label>
      
    </div>
                                         
                                        <div class="form-group">
      <label class="col-lg-5 control-label">AWARD/RECOGNITION - 1</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputAward1" placeholder="AWARD/RECOGNITION"></asp:textbox>
      </div>
    </div>
                   <div class="form-group">
      <label class="col-lg-5 control-label">AWARD/RECOGNITION - 2</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputAward2" placeholder="AWARD/RECOGNITION"></asp:textbox>
      </div>
                       </div>
                                  <div class="form-group">
      <label class="col-lg-5 control-label">AWARD/RECOGNITION - 3</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputAward3" placeholder="AWARD/RECOGNITION"></asp:textbox>
      </div>
    </diV>             
        
                                            <div class="form-group">
      <label class="col-lg-5 control-label"><u>MEMBERSHIP IN PROFESSIONAL BODIES</u></label>
      
    </div>
         <div class="form-group">
       <label class="col-lg-5 control-label">MEMBERSHIP IN PROFESSIONAL BODY - 1</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputMembership1" placeholder="MEMBERSHIP IN PROFESSIONAL BODIES"></asp:textbox>
      </div>
       
    </div>
                       <div class="form-group">
       <label class="col-lg-5 control-label">MEMBERSHIP IN PROFESSIONAL BODY - 2</label>
     <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputMembership2" placeholder="MEMBERSHIP IN PROFESSIONAL BODIES"></asp:textbox>
      </div>
    </div>
                       <div class="form-group">
       <label class="col-lg-5 control-label">MEMBERSHIP IN PROFESSIONAL BODY - 3</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputMembership3" placeholder="MEMBERSHIP IN PROFESSIONAL BODIES"></asp:textbox>
      </div>
    </div>
        
                                            <div class="form-group">
      <label class="col-lg-5 control-label"><u>PAPER PRESENTED/PROJECT EXHIBITED DETAILS</u></label>
      
    </div>
      
                         <div class="form-group">
                            <label class="col-lg-5 control-label">PAPER PRESENTED/PROJECT EXECUTED DETAILS - 1</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputPaper1" placeholder="PAPER PRESENTED/PROJECT EXECUTED"></asp:textbox>
      </div>
           </div>
                                           <div class="form-group">
                            <label class="col-lg-5 control-label">PAPER PRESENTED/PROJECT EXECUTED DETAILS - 2</label>
                      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputPaper2" placeholder="PAPER PRESENTED/PROJECT EXECUTED"></asp:textbox>
      </div>
     
           </div>
                         <div class="form-group">
                            <label class="col-lg-5 control-label">PAPER PRESENTED/PROJECT EXECUTED DETAILS - 3</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputPaper3" placeholder="PAPER PRESENTED/PROJECT EXECUTED"></asp:textbox>
      </div>
           </div>
                        <div class="form-group">
      <label class="col-lg-5 control-label"><u>EXTRA-CURRICULAR ACTIVITIES</u></label>
      
    </div>          
     
       <div class="form-group">
      <label class="col-lg-5 control-label">EXTRA-CURRICULAR ACTIVITIES - 1</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputExtraCurricular1" placeholder="EXTRA-CURRICULAR ACTIVITIES"></asp:textbox>
      </div>
    </div>
     <div class="form-group">
      <label class="col-lg-5 control-label">EXTRA-CURRICULAR ACTIVITIES - 2</label>
     <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputExtraCurricular2" placeholder="EXTRA-CURRICULAR ACTIVITIES"></asp:textbox>
      </div>
    </div>
     <div class="form-group">
      <label class="col-lg-5 control-label">EXTRA-CURRICULAR ACTIVITIES - 3</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputExtraCurricular3" placeholder="EXTRA-CURRICULAR ACTIVITIES"></asp:textbox>
      </div>
    </div>
        <div class="form-group">
      <label class="col-lg-5 control-label"><u>TECHNICAL TRAINING UNDERGONE</u></label>
      
    </div>
      <div class="form-group">
      <label class="col-lg-5 control-label">TECHNICAL TRAINING UNDERGONE - 1</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputTraining1" placeholder="EXTRA-CURRICULAR ACTIVITIES"></asp:textbox>
      </div>
    </div>
        
      <div class="form-group">
      <label class="col-lg-5 control-label">TECHNICAL TRAINING UNDERGONE - 2</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputTraining2" placeholder="EXTRA-CURRICULAR ACTIVITIES"></asp:textbox>
      </div>
    </div>
        <div class="form-group">
      <label class="col-lg-5 control-label">TECHNICAL TRAINING UNDERGONE - 3</label>
     <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputTraining3" placeholder="EXTRA-CURRICULAR ACTIVITIES"></asp:textbox>
      </div>
    </div>
                  <div class="form-group">
      <label class="col-lg-5 control-label"><u>DOMAIN EXPERTISE</u></label>
      
    </div>
      <div class="form-group">
      <label class="col-lg-5 control-label">DOMAIN EXPERTISE - 1</label>
     <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="Textbox4" placeholder="EXTRA-CURRICULAR ACTIVITIES"></asp:textbox>
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-5 control-label">DOMAIN EXPERTISE - 2</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputDomainExp1" placeholder="DOMAIN EXPERTISE"></asp:textbox>
      </div>
    </div>
     
                        <div class="form-group">
      <label class="col-lg-5 control-label">DOMAIN EXPERTISE - 3</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputDomainExp2" placeholder="DOMAIN EXPERTISE"></asp:textbox>
      </div>
    </div>
                     <div class="form-group">
      <label class="col-lg-5 control-label"><u>TECHNICAL SKILLS</u></label>
      
    </div>
       
    <div class="form-group">
      <label class="col-lg-5 control-label">TECHNICAL SKILLS - 1</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputTech1" placeholder="TECHNICAL SKILLS"></asp:textbox>
      </div>
    </div>
       <div class="form-group">
      <label class="col-lg-5 control-label">TECHNICAL SKILLS - 2</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputTech2" placeholder="TECHNICAL SKILLS"></asp:textbox>
      </div>
    </div>
                       <div class="form-group">
      <label class="col-lg-5 control-label">TECHNICAL SKILLS - 3</label>
     <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputTech3" placeholder="TECHNICAL SKILLS"></asp:textbox>
      </div>
    </div>
                     <div class="form-group">
      <label class="col-lg-5 control-label"><u>INTERESTED COMPANIES TO WORK</u></label>
      
    </div>
      <div class="form-group">
      <label class="col-lg-5 control-label">INTERESTED COMPANIES TO WORK - 1</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputCompany1" placeholder="INTERESTED COMPANIES"></asp:textbox>
      </div>
          </div>
       <div class="form-group">
       <label class="col-lg-5 control-label">INTERESTED COMPANIES TO WORK - 2</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputCompany2" placeholder="INTERESTED COMPANIES"></asp:textbox>
      </div>
          </div>
       <div class="form-group">
       <label class="col-lg-5 control-label">INTERESTED COMPANIES TO WORK - 3</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputCompany3" placeholder="INTERESTED COMPANIES"></asp:textbox>
      </div>
          </div>
           
       <div class="form-group">
      <label class="col-lg-5 control-label">LINKEDIN ID</label>
       <div class="col-lg-7">
        <asp:textbox runat="server" style="width:300px;height:30px;" class="form-control" id="inputLinkedIn" placeholder="LINKEDIN ID"></asp:textbox>
      </div>
               </div>
           <br />
           <div class="form-group">
      <label class="col-lg-5 control-label">PREPARATORY ACTIVITIES</label>
      <div class="col-lg-7">
        <asp:textbox runat="server" style="width:100px;height:30px;" class="form-control" id="inputPrep" placeholder="INTERESTED COMPANIES"></asp:textbox>
      </div>
           </div>
           <div class="form-group">
      <label class="col-lg-5 control-label">ATTEND PLACEMENT INTERVIEWS</label>
           <div class="col-lg-7">
        <asp:textbox runat="server" style="width:100px;height:30px;" class="form-control" id="inputPlacementActivity" placeholder="INTERESTED COMPANIES"></asp:textbox>
      </div>
                </div>
           <div class="form-group">
        <label class="col-lg-5 control-label">INTERESTED IN HIGHER STUDIES</label>
           <div class="col-lg-7">
        <asp:textbox runat="server" style="width:100px;height:30px;" class="form-control" id="higher_studies" placeholder="INTERESTED COMPANIES"></asp:textbox>
      </div>     
           </div>
           <div class="form-group">
        <label class="col-lg-5 control-label">INTERESTED TO BECOME ENTREPRENEUR</label>
               <div class="col-lg-7">
        <asp:textbox runat="server" style="width:100px;height:30px;" class="form-control" id="entrepreneur" placeholder="INTERESTED COMPANIES"></asp:textbox>
      </div>
                </div>
        
         <div class="form-group">
      <label class="col-lg-5 control-label">PLACED</label>
     <div class="col-lg-2">
       
             <div class="radio">
            <label>
                 <asp:RadioButton runat="server" name="optionsRadios1" id="optionsRadio1" GroupName="placed" value="option1"></asp:RadioButton>
            YES
          </label>
                 <label>
            <asp:RadioButton runat="server" name="optionsRadios1" id="optionsRadio2" GroupName="placed" value="option2"  Checked="true"></asp:RadioButton>
            NO
              </label>
          
            
      </div>
           
      </div>
    </div>            

       <div class="form-group">
           <div class="col-lg-11">
               
                <asp:Button runat="server" class="btn btn-primary" id="update_button" Text="SUBMIT" ></asp:Button>
               <br/>   <asp:Label ID="label1" runat="server"></asp:Label>
           </div>
               </div>


            </div>

    </form>
</body>
</html>
