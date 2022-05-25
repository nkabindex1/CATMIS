<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewChart.aspx.cs" Inherits="NewChart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    
    <div class="content content-container-md">

        <section class="hero">
            <h1 class="hero_welcome">Welcome To The Information Security Analytics Portal,&nbsp;Helping you find your insights much quicker.</h1>
            <!--img -->
            <div class="box-curve">
            </div>
            <div class="hero-img">
                
            </div>
        </section>
            
        <section class="content-section">

            <div class="content-left-col">
                <p class="content-welcome">Home >> NewChart</p>
                <h2 id="page_header" class="content-header" runat="server">Add New Chart (100) </h2>
                <p class="content-sub-welcome">Navigate below to add new chart.</p>
                



                <div class="frm_add_chart">
                    

                    <div class="row frm_name">
                        
                        <label for="name">Name*</label>
                        <asp:TextBox class="form-control" name="name" ID="txtChartName" runat="server"></asp:TextBox>
                    </div>
                    
                        
                    <div class="row frm_category">
                        <label for="category">Category*</label>

                    <asp:DropDownList class="form-control" style="width:75%;" ID="categoryDropDownList" runat="server"></asp:DropDownList>
                    
                    </div>
                    

                    <div class="row frm_url">
                        <label for="url">Url*</label>
                        <asp:TextBox class="form-control" name="url" ID="txtChartUrl" runat="server"></asp:TextBox>
                    </div>

                    <div class="row frm_btns">
                        <asp:Button class="add_new_chart_submit" ID="btnSubmit1" runat="server" Text="Submit" OnClick="btnSubmit1_Click" />
                        <asp:Button class="add_new_chart_cancel" ID="btnClose1" runat="server" Text="Close" OnClick="btnClose1_Click" />
                       
                    </div>
               

                </div>

                
                
                
            </div>
            <div class="content-right-col">

                <div class="blockqoute">
                    <blockquote>
                    Inspire others to do better than before, the goal is to be awesome and not copy what others are doing.
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



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="end" Runat="Server">
</asp:Content>

