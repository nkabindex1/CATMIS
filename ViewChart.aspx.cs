using CATMIS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewChart : System.Web.UI.Page
{


    // pass values that will help us locate the dashboard
    protected void Page_Load(object sender, EventArgs e)
    {

        
        chart_tool.Visible = false;
        // check its a fullView or preView
        string chartId = Request.QueryString["ChartId"];
        string isPreview = Request.QueryString["IsPreview"];

        CsvRecord chart = new CsvRecord();
        if (chartId != null)
        {
            var charts = (List<CsvRecord>)Session["Charts"];
            chart = charts.Where(x => x.Id == Convert.ToInt32(chartId))
                .FirstOrDefault();
            chart_panel.InnerHtml = "<iframe Runat='Server' ID='rptv' src='" + chart.url + "?rs:embed=true' ></iframe>";
        }
        else if(isPreview != null)
        {
            chart_tool.Visible = true;

            chart = (CsvRecord)Session["NewChart"];
            
            
        }
        chart_panel.InnerHtml = "<iframe Runat='Server' ID='rptv' src='" + chart.url + "?rs:embed=true' ></iframe>";

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        // save chart into file 

        var NewChart = (CsvRecord)Session["NewChart"];
        var charts = (List<CsvRecord>)Session["Charts"];
        charts.Add(NewChart);
        CsvRecordToFile(charts);
        Response.Redirect("~/Default.aspx"); // add a toast if you want to be extra
    }

    private void CsvRecordToFile(List<CsvRecord> charts)
    {
        string filename = @"./App_Data/data_print.csv";
        //Session["CsvRecordColumns"] print the columns first
        StringBuilder sbOutput = new StringBuilder();

        for(int i = 0; i < charts.Count; i++)
        {
            if (i == 0)
            {
                // print columns 
                sbOutput.AppendLine((string)Session["CsvRecordColumns"]);
            }

            string strLine = charts[i].displayName + "," + charts[i].department + "," + charts[i].category + "," + charts[i].url + "," + charts[i].isDashboard;
            sbOutput.AppendLine(strLine);
        }
    }

    protected void btnClose_Click(object sender, EventArgs e)
    {
        Session["NewChart"] = null;
        Response.Redirect("~/Default.aspx");
    }
}