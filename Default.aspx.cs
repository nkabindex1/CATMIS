using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CATMIS;

public partial class Default : System.Web.UI.Page
{
    List<CsvRecord> charts = new List<CsvRecord>();

    protected void Page_Load(object sender, EventArgs e)
    {
        
        charts = (List<CsvRecord>) Session["Charts"];

        if (Session["count"] == null)
        {
            Session["master"] = 0;
        }
        else {
            Session["master"] = Session["count"];
        }

        debug_here.InnerHtml = "The master page ran this many times, " + Session["master"] + " . openning page";

        PopulateBodyNavigation();

    }


    public void PopulateBodyNavigation()
    {
        // we arrange by columns,  
        string html = "";
      
       
        // try to view the page 
        if (charts.Any())
        {
            var categories = charts.Select(x => x.category).Distinct();
            // foreach category
            foreach (var category in categories)
            {
                
                // print title
                html += "<li><h5 class='tb - head'>"+category+"</h5><ul class='tb - child'>";
                var _charts = charts.Where(x => x.category == category);

                debug_here.InnerHtml += category + "<br/>";
                foreach (var _chart in _charts)
                {

                    //debug_here.InnerHtml += _chart.displayName+ ", " + _chart.url + "<br/>";
                    // check if its  chart or not a chart

                    // check index of the chart 
                    if (_chart.isDashboard == "TRUE")
                    {
                        // pass in id 
                        html += "<li><a href= 'ViewChart?ChartId=" + _chart.Id + "'> " + _chart.displayName + " </a></li>";
                    }
                    else
                    {
                        // pass in page url
                        html += "<li><a href= '" + _chart.url + "'> " + _chart.displayName + " </a></li>";
                    }
                }
                
                html += "</ul></li>";
            }
            body_nav.InnerHtml = html;
        }
    }
}