using System;
using System.Collections.Generic;
using System.IO;
using CATMIS;
using System.Linq;
using System.Diagnostics;
public partial class MasterPage : System.Web.UI.MasterPage
{

    string filename = @"./App_Data/data1.csv";

    

    protected void Page_Init(object sender, EventArgs e)
    {
        
        debug_master.InnerHtml += "The master page ran this many times " + Session["count"] + " <br/>";
        List<CsvRecord> charts = ReadCsvRecords();
        Session["Charts"] = charts;
        List<CsvCategory> categories = ReadCsvCategories();
        Session["Categories"] = categories;
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        // if there arent charts 
        lblLoginName.Text = SarsUser.SID;

    }

    private List<CsvCategory> ReadCsvCategories()
    {

        string filename = @"./App_Data/categories.csv";
        string filepath = Server.MapPath(filename);
        var reader = new StreamReader(File.OpenRead(filepath));
        var records = new List<CsvCategory>();

        bool isColumn = true;
        while (!reader.EndOfStream)
        {
            var line = reader.ReadLine();
            CsvCategory record = new CsvCategory(line);
            record.Id = records.Count;
            if (!isColumn)
            {
                records.Add(record);
            }
            else
            {
                isColumn = false;
            }

        }
        return records;
    }


    private void PopulateSideNav()
    {
        // 
        string[] fa_icon = { "fa fa-cubes", "fa fa-bar-chart", "fa fa-line-chart" };
        string html = @"<h3>General</h3>
                            <ul class='nav side-menu'>
                                <li id = 'Home' >
                                    < a href='Default.aspx'><i class='fa fa-home'></i>Home<span class='fa fa-chevron-down'></span></a>
                             </li>";
        List<CsvRecord> charts = new List<CsvRecord>();
        charts = (List<CsvRecord>)Session["Charts"];
        // select categories as well
        var categories = (List<CsvCategory>)Session["Categories"];
       
        foreach (var category in categories)
        {
            string icon = fa_icon[0];
            if(category.displayName != "Case Management")
            {
                icon = fa_icon[GetRandomInt(1, 2)];
            }
            html += @"<li>
                        <a><i class='" + icon + @"'></i>Case Management <span class='fa fa-chevron - down'></span></a>";
            var _charts = charts.Where(x => x.category == category.displayName);

            if(_charts != null)
            {
                html += "<ul class='nav child_menu'>";
                foreach (CsvRecord _chart in _charts)
                {
                    string url = _chart.url;
                    if(_chart.isDashboard == "TRUE")
                    {
                        //uses different kind url
                    }
                    html += "<li><a href = '" + url + "' > " +_chart.displayName + "</a></li>";
                }
                html += "</ul></li>";
            }
            html +=@"
                            <ul class='nav child_menu'>
                            <li><a href = 'AddNewCase.aspx' > Add New</a></li>
                            <li><a href = 'ViewAllCases.aspx' > View Open Cases</a></li>
                            <li><a href = 'ViewClosedCases.aspx' > View Closed Cases</a></li>
                            <li><a href = 'MyCases.aspx' > Assigned To Me</a></li>
                            <li><a href = 'CATCasesDasboard.aspx' > CAT Cases Dashaboard</a></li>
                            <li><a href = 'Case Creation Report.aspx' > Case Creation Report</a></li>
                            <li><a href = 'Case Completion Report.aspx'> Case Completion Report</a></li>
                            <li><a href = 'Email Tracking Report.aspx' > Email Tracking Report</a></li>
                        </ul>
                    </li>
                </ul>";
        }
    }


    private int GetRandomInt(int min, int max)
    {
        Random rnd = new Random();
        return rnd.Next(min, max);
    }


    private List<CsvRecord> ReadCsvRecords()
    {
        //Response.Write(Server.MapPath(filename) + ", is the path.");
        var reader = new StreamReader(File.OpenRead(Server.MapPath(filename)));
        
        debug_master.InnerHtml += "reading file ... path" + Server.MapPath(filename) + "<br>";
        var records = new List<CsvRecord>();
        bool isColumn = true;
        while (!reader.EndOfStream)
        {
            var line = reader.ReadLine();
            var values = line.Split(',');
            CsvRecord record = new CsvRecord(values);
            record.Id = records.Count;
            if (!isColumn)
            {
                
                records.Add(record);
            }
            else
            {
                Session["CsvRecordColumns"] = line;
            }
            isColumn = false;
        }
        return records;
    }

}