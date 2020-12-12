
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace carshop
{
    public partial class loan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
  /*
            if (!IsPostBack)
            {
                string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\troyboettger\source\repos\troyscar\App_Data\Carshop.accdb;";

                string SqlString = "SELECT * FROM Sales WHERE TopDeal = (?)";
                var deal = new OleDbParameter("@TopDeal", OleDbType.VarChar);
                deal.Value = "Y";
                using (OleDbConnection con = new OleDbConnection(connectionString))
                {
                    //Open Database Connection
                    OleDbDataAdapter da = new OleDbDataAdapter(SqlString, con);

                    da.SelectCommand.Parameters.Add(deal);
                    DataSet ds = new DataSet();

                    //Fill the DataSet
                    da.Fill(ds);

                    Sales.DataSource = ds.Tables[0];
                    Sales.DataValueField = "Price"; // Value Field
                    Sales.DataTextField = "Model"; // Text field which will be show in UI
                    Sales.DataBind();
                    var thePrice = Sales.DataValueField;
                    inputPrice.Text = thePrice.ToString();
                    inputPrice.DataBind();
                }
            }
            */


        }

        protected double getPayment()
        {
            int realPrice;

            int pricee;
            if(Int32.TryParse(inputPrice.Text, out pricee)){
                realPrice = pricee;
                
            }

            int realLen;
            int lenn;
            if (Int32.TryParse(interestLen.Text, out lenn))
            {
                realLen = lenn;
            }

            int realInterest;
            int intt;
            if (Int32.TryParse(inputInterest.Text, out intt))
            {
                realInterest = intt;
            }
            int monthly = (int) (pricee * intt);

            var totBill = (double)(pricee + monthly);
            var bill = (int)(totBill / lenn);
            Response.Write("$" + bill + ".00");
            return bill;

        }
    }
}