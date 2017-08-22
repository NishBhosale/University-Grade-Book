using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentRegistrationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //bind list of countries to dropdown list
            ddlCountry.DataSource = CountriesList();
            ddlCountry.DataBind();
            ddlEnrollYear.DataSource = PopulateEnrollYear();
            ddlEnrollYear.DataBind();

        }
        
        
    }
    //get list of All countries
    public List<string> CountriesList()
    {
        List<string> countryList = new List<string>();
        countryList.Add("--Please Select--");
        List<string> CultureList = new List<string>();
        CultureInfo[] getCultureInfo = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
        foreach (CultureInfo c in getCultureInfo)
        {
            RegionInfo getRegionInfo = new RegionInfo(c.LCID);
            
            if (!(CultureList.Contains(getRegionInfo.EnglishName)))
                {
              
                CultureList.Add(getRegionInfo.EnglishName);
            }
          
        }
        CultureList.Sort();
        countryList.AddRange(CultureList);
            return countryList;
    }
   public List<string> PopulateEnrollYear()
    {
        List<string> yearList = new List<string>();
        yearList.Add("Select Year");
        for (int i = -1; i <= 10; i++)
        {
            string date = DateTime.Now.AddYears(i).Year.ToString();
            yearList.Add(date);

        }
        return yearList;
    }


    
}