<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewChart.aspx.cs" Inherits="ViewChart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    

   



    <div class="right_col" role="main" ID="rpt" Runat="Server">
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
        }
 
        .panelcontainer {
            padding-bottom: 56.25%;
        }
        
        .panel iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: white;
        }
    </style>
            <div id="chart_tool" class="chart_tool" runat="server">
                
                <div class="row">
                    <div class="col-md-12">
                        <p class="chart_tool_title" style="float:left; font-size:1.6rem;">Confirm Chart: <span>(press submit to save chart)</span></p>

                    </div>

                <div class="col-md-12">
                    <table class="table tool_table" style="border-collapse:collapse;">
		<tbody>
            <tr>

                <td style="white-space:nowrap;">
                    
                   <p class="table_details">Name :<span class="chart_name">eFiling Registration Report YTD</span> &ensp; &emsp; Category: <span class="chart_category">Case Management</span>  &ensp; &emsp; </p></td>
			    <td style="white-space:nowrap;">
            </tr>
            <tr>

                <td style="white-space:nowrap;">
                    
                   <p class="table_details" style="font-weight:bold;">Url: <span class="chart_url">http://ptaqacat01/Reports/report/CAT%20Reports/Internal%20eFiling%20Registration%20Report%20-%20Monthly</span> </p></td>
			    <td style="white-space:nowrap;">
            </tr>  
                    
            <tr>
			    <td class="tool_buttons" style="white-space:nowrap;"><asp:Button style="float:left; background: red; color:white;" ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" /><asp:Button style="float:left; margin-left: 8px; background-color: green; color:white;" ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" /></td>
		</tr>
	</tbody>

	</table>
                </div>
                    
                </div>
               
            </div>
        <div class="panel panelcontainer">
            <div runat="server" id="chart_panel">
                <iframe Runat="Server" ID="rptv" src="http://ptaqacat01/reports/powerbi/SSL%20Certificates/SSL%20Certificate?rs:embed=true&filterPaneEnabled=false"></iframe>
            </div>
        
        <div id="itemshield">
        </div>
        <div style="clear:both;"></div>
        </div>
        </div>
    </div>

   
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="end" Runat="Server">
</asp:Content>

