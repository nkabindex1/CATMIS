<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    
    <div class="content content-container-md">
        <div style="padding: 5%;display:none;;width:100%; color:red; background: white; height:20vh;">

            <p runat="server" id="debug_here"></p>
        </div>
        <section class="hero">
            <h1 class="hero_welcome">Welcome To The Information Security Analytics Portal, Helping you find your insights much quicker.</h1>
            <!--img -->
            <div class="box-curve">
            </div>
            <div class="hero-img">
                
            </div>
        </section>
            
        <section class="content-section">

            <div class="content-left-col">
                <p class="content-welcome">Home</p>
                <h2 class="content-header">Cyber Analytics</h2>
                <p class="content-sub-welcome">Navigate below to find the dashboard you are looking for.</p>
                
                <ul class="nav-body" runat="server" id="body_nav">
                    <li> 
                        <h5 class="tb-head">Cases</h5>
                        <ul class="tb-child">
                             <li><a href="AddNewCase.aspx">Add New</a></li>
                            <li><a href="ViewAllCases.aspx">View Open Cases</a></li>
                            <li><a href="ViewClosedCases.aspx">View Closed Cases</a></li>
                            <li><a href="MyCases.aspx">Assigned To Me</a></li>
                        </ul>
                    </li>


                    <li><h5 class="tb-head">Case Management</h5>
                        <ul class="tb-child">
                            <li><a href="CATCasesDasboard.aspx">CAT Cases Dashaboard</a></li>
                                            <li><a href="Case Creation Report.aspx">Case Creation Report</a></li>
                                            <li><a href="Case Completion Report.aspx">Case Completion Report</a></li>
                                           
                                            <li><a href="Email Tracking Report.aspx">Email Tracking Report</a></li>
                        </ul>
                    </li>
                    <li><h5 class="tb-head">eFiling</h5>
                        <ul class="tb-child">
                            <li><a href="eFilingVerificationAnalysis.aspx">eFilling Verification Analysis</a></li>
                                            <li><a href="RAV01RegistrationsbyPeriod.aspx">RAV01 Registrations by Period</a></li>
                                            <li><a href="SubmissionsbyComputer_Internal.aspx">Submissions by Computer - Internal</a></li>
                                            <li><a href="SubmissionsbyIPAddress_Internal.aspx">Submissions by IP Address - Internal</a></li>
                                            <li><a href="SubmissionsbyTaxRef_Internal.aspx">Submissions by TaxRef - Internal</a></li>
                                            <li><a href="SubmissionsbyUserID_Internal.aspx">Submissions by UserID - Internal</a></li>
                                            <li><a href="SubmissionsbyTaxPayerID_RegNo.aspx">Submissions by Tax Payer ID/Reg No.</a></li>
                                            <li><a href="SubmissionsbyTaxPayerTaxRefNo.aspx">Submissions by Tax Payer Tax Ref No.</a></li>
                                            <li><a href="SubmissionsbyTaxUserCellNo.aspx">Submissions by Tax User Cell No.</a></li>
                                            <li><a href="SubmissionsbyTaxUserEmailAddress.aspx">Submissions by Tax User Email Address</a></li>
                                            <li><a href="SubmissionsbyTaxUserIDNo.aspx">Submissions by Tax User ID No.</a></li>
                                            <li><a href="SubmissionsbyTaxUserLoginName.aspx">Submissions by Tax User LoginName</a></li>
                        </ul>
                    </li>
                    <li><h5 class="tb-head">User Activity - SARS Systems</h5>
                        <ul class="tb-child">
                             <li><a href="SSM_ITS_ReportByCaseNr.aspx">Executive Task Manager</a></li>
                                            <li><a href="SSM_ITS_ReportByCaseNr.aspx">User Activity (SSM - ITS) Report by CaseNr</a></li>
                                            <li><a href="SSM_ITS_ReportByComputerName.aspx">SSM - ITS Report by ComputerName</a></li>
                                            <li><a href="SSM_ITS_ReportByRegNr.aspx">SSM - ITS Report by RegNr</a></li>
                                            <li><a href="SSM_ITS_ReportByTaxRef.aspx">SSM - ITS Report by TaxRef</a></li>
                                            <li><a href="SSM_ITS_ReportByUserID.aspx">SSM - ITS Report by User ID </a></li>
                                            <li><a href="SSM_CasesReportByTaxRef.aspx">SSM Cases Report by TaxRef</a></li>
                                            <li><a href="SSM_CasesReportByUserID.aspx">SSM Cases Report by User ID</a></li>
                                            <li><a href="SSM_LoginReportByComputer.aspx">SSM Login Report by Computer</a></li>
                                            <li><a href="SSM_LoginReportByUserID.aspx">SSM Login Report by User ID</a></li>
                        </ul>
                    </li>
                    <li><h5 class="tb-head">Security</h5>
                        <ul class="tb-child">
                             <li><a href="mfa2.aspx">MFA Report</a></li>
                                            <li><a href="SSL.aspx">SSL Certificate</a></li>
                                            <li><a href="Gmail_dashboard.aspx">G-Mail Investigation</a></li>
                        </ul>
                    </li>
                    <li><h5 class="tb-head">CAT Customer Reports</h5>
                        <ul class="tb-child">
                                <li><a href="http://ptaqacat01/Reports/browse/CAT%20Reports" target="_blank">User Activity and Logins</a></li>

                        </ul>
                    </li>
                </ul>
                
                
                
                
                
                
                <div class="table">
                    <table style="display:none;">
                        <thead>
                          <tr class="tb-headers">
                      
                            <th>Cases</th>
                            <th>Case Management</th>
                            <th>eFilling</th>
                            <th>User Activity - SARS Systems</th>
                            <th>Security Operations</th>
                          </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> <a>Add New</a></td>
                                <td><a>View Open Cases</a></td>
                                <td><a>View Closed Cases</a></td>
                                <td><a>Assigned To Me</a></td>
                            </tr>
                            <tr>
                                <td><a>CAT Cases Dashboard</a></td>
                                <td><a>Case Creation Report</a></td>
                                <td><a>Case Completion Report</a></td>
                                <td><a>Email Tracking Report</a></td>
                            </tr>
                            <tr>
                                <td> <a>eFiling Verification Analysis</a></td>
                                <td><a>RAV01 Registration by Period</a></td>
                                <td><a>Submission by Computer</a></td>
                                <td><a>Submissions by IP Address - Internal</a></td>
                                <td> <a>Submissions by TaxRef - Internal</a></td>
                                <td><a>Submissions by UserID - Internal</a></td>
                                <td><a>Submissions by Tax Payer ID/Reg No.</a></td>
                                <td><a>Submissions by Tax Payer Tax Ref No.</a></td>
                                <td><a>Submissions by Tax User Cell No.</a></td>
                                <td><a>Submissions by Tax User Email Address</a></td>
                                <td><a>Submissions by Tax User ID No.</a></td>
                                <td><a>Submissions by Tax User LoginName</a></td>
                          </tr>
                                <tr>
                                    <td>Centro comercial Moctezuma</td>
                                    <td>Francisco Chang</td>
                                    <td>Mexico</td>
                                    <td>Centro comercial Moctezuma</td>
                                    <td>Centro comercial Moctezuma</td>
                                </tr>
                            <tr>
                            <td>Centro comercial Moctezuma</td>
                            <td>Francisco Chang</td>
                            <td>Mexico</td>
                              <td>Centro comercial Moctezuma</td>
                              <td>Centro comercial Moctezuma</td>
                          </tr>
                </tbody>
                            </table>
                </div>
                
            </div>
            <div class="content-right-col">

                <div class="blockqoute">
                    <blockquote>
                    The power of education extends beyond the development of skills we need for economic success. It can contribute to nation-building and reconciliation.
                    </blockquote>
                    <cite class="cite">- Nelson Mandela</cite>
                </div>
                

                <div class="pay_your_tax">

                </div>

                <div class="content_sars_logo">
                    <img src="assets/images/logo-sars.png" />
                </div>
                <%--<img class="pay_your_tax" src="assets/images/pay_your_tax.jpg" alt="Pay Your Tax!">
                <img class="sars_bottom" src="assets/images/logo-sars.png" alt="Sars Logo"/>--%>
            </div>
        </section>

        

    </div>




    <div style="display:none;" class="right_col" role="main" ID="rpt" Runat="Server">
        <div class="">
        <style>
            
        #itemshield {
            position: relative;
            float: right;
            width: 34px;
            height: 750px;
            background: #eaeaea;
        }
          .panel {
           
            position: relative;
            height: 0;
            overflow: hidden;
            /*background-image: url("assets/images/background.png");*/
        }


            .block {
                height:100%;
                border: 5px solid gray;
            }
 
        .panelcontainer {
            
            margin: auto;
            padding:8px 8px 8px 8px;
            padding-bottom: 56.25%;
            background-image: url("assets/images/background.png");
        }
        

        
        .panel .block {
            
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            
            color: white;
        }

        .panelcontainer ul li {
            list-style-type:none;
            margin:0;
            padding:0;
            font-size:15px;
            
        }


            .panelcontainer a{
                color: white;
            }
            .panelcontainer a:hover{
                color: red;
            }
    </style>

        <div class="panel panelcontainer">

            <div class="row">
                <h1>Welcome, </h1>

            </div>


            <div class="row">



            
            <div class="col-md-3">
                      
                            <h3> 
                            <i class="fa fa-area-chart"></i> Case Management</h3>

                            <ul >
                                <li><a href="AddNewCase.aspx">Case Status Dashboard</a></li>
                                <li><a href="ViewAllCases.aspx">Case Creation</a></li>
                                <li><a href="ViewClosedCases.aspx">Case Completion Report</a></li>
                                <li><a href="MyCases.aspx">Case Completion Dashboard</a></li>
                            </ul>

                      
                    
                        
                    </div>
                

            


            <div class="col-md-3">
                

                    <h3> <i class="fa fa-file"></i> eFiling </h3>
                    <ul >
                        <li><a href="AddNewCase.aspx">RAV01 Registration by Period</a></li>
                        <li><a href="ViewAllCases.aspx">Submission by Computer Internal</a></li>
                        <li><a href="ViewClosedCases.aspx">Submission by IP Address - Internal</a></li>
                        <li><a href="MyCases.aspx">Submission by TaxRef - Internal</a></li>
                        <li><a href="MyCases.aspx">Submission by userID - Internal</a></li>
                        <li><a href="MyCases.aspx">Submission by Tax Payer - ID/Reg No.</a></li>
                        <li><a href="MyCases.aspx">Submission by Tax Payer UserCell No.</a></li>
                        <li><a href="MyCases.aspx">Submission by Tax User Email Address</a></li>
                        <li><a href="MyCases.aspx">Submission by Tax User ID No.</a></li>
                        <li><a href="MyCases.aspx">Submission by Tax User LoginName</a></li>
                    </ul>
                </div>
           
            
            

            <div class="col-md-3">
               
                    <h3> <i class="fa fa-users"></i> User Activity</h3>
                    <ul >
                        <li><a href="SSM_ITS_ReportByCase.aspx">User Activity (SSM - ITS) Report by CaseNr</a></li>
                        <li><a href="SSM_ITS_ReportByComputerName.aspx">SSM - ITS Report by ComputerName</a></li>
                        <li><a href="./ssm/itsReportByRegNr.aspx">SSM - ITS Report by RegNr</a></li>
                        <li><a href="./ssm/itsReportByUserID.aspx">SSM - ITS Report by User ID</a></li>
                        <li><a href="./ssm/casesReportByTaxRef.aspx">SSM Cases Report by TaxRef</a></li>
                        <li><a href="./ssm/casesReportByUserID.aspx">SSM Cases Report by User ID</a></li>
                        <li><a href="./ssm/loginReportByUserID.aspx">SSM Login Report by User ID</a></li>
                    </ul>
               

                </div>


                 <div class="col-md-3">
            
           
           
                <h3> <i class="fa fa-bug"></i> Security</h3>
                <ul >
                    <li><a href="mfa2.aspx">MFA Report</a></li>
                    <li><a href="ssl.aspx">SSL Certificates</a></li>
                    <li><a href="vpn.aspx">VPN Reports</a></li>
                    <li><a href="/ops/payments.aspx">Payments</a></li>
                    <li><a href="/ops/userActivities.aspx">User Activities</a></li>
                </ul>


            
            </div>
            </div>
          

           
            
        <div style="clear:both;"></div>
        </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="end" Runat="Server">
</asp:Content>

