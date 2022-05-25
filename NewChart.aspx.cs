using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CATMIS;
using System.IO;

public partial class NewChart : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        List<CsvRecord> charts = (List<CsvRecord>)Session["Charts"];
        page_header.InnerHtml = "Add New Chart (" + charts.Count + ")";
        populateCategoryDropDown();
    }

    private void populateCategoryDropDown()
    {

        //ddlFraudGroup.DataValueField = "FraudGroupID";
        //ddlFraudGroup.DataTextField = "FraudGroup";
        //ddlFraudGroup.DataSource = fraudgroup.ToList();
        //ddlFraudGroup.DataBind();

        //var categories = ReadCsvCategories();

        var categories = (List<CsvCategory>)Session["Categories"];
        categoryDropDownList.DataValueField = "CategoryID";
        categoryDropDownList.DataTextField = "CategoryGroup";
        foreach (var category in categories)
        {
            string value = category.displayName.Replace(" ", "_");
            ListItem item = new ListItem(category.displayName, value);
            categoryDropDownList.Items.Add(item);
        }
        categoryDropDownList.DataBind();
      
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

    protected void btnSubmit1_Click(object sender, EventArgs e)
    {
        // take all the values of the form

        // create new csv

        var chart = new CsvRecord()
        {
            displayName = txtChartName.Text,
            url = txtChartUrl.Text,
            department = "Cyber Analytics",
            category = categoryDropDownList.Text,
        };

        Session["NewChart"] = chart;
        // redirect but give a signal that it is redirecting
        Response.Redirect("ViewChart?IsPreview=True");
    }

    protected void btnClose1_Click(object sender, EventArgs e)
    {
        //Redirect Page to Index
        Session["NewChart"] = null;
        Response.Redirect("~/Default.aspx");
    }
}