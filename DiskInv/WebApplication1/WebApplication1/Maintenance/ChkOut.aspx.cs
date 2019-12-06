using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1.Maintenance
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string GetConnectionString()
        {
            //DBConnection is the name of the connection string that was set up from the web config file
            return System.Configuration.ConfigurationManager.ConnectionStrings["diskInventoryGTConnection"].ConnectionString;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DropDownList ddl = DropDownList1;
            DropDownList ddl2 = DropDownList2;
            string val1 = DropDownList1.SelectedValue;
            string val2 = DropDownList2.SelectedValue;
            //string borrowed = "not available";
            

            Label1.Text = val2 +" has borrowed "+ ddl.Text+ " on " +DateTime.Today;
            //Label1.Text = Calendar1.SelectedDate.ToString();

            if (Page.IsValid)
            {
                SqlConnection conn;
                SqlCommand comm;
                ////Initialize connection
                string connectionString = ConfigurationManager.ConnectionStrings["diskInventoryGTConnection"].ConnectionString;
                conn = new SqlConnection(connectionString);
                ////Create command
                comm = new SqlCommand(
                    "EXECUTE sp_BorrowDisk @Borrower_ID, @CD_Name, @Borrowed_Date", conn );
                //Add Parameter
                comm.Parameters.Add("@Borrower_ID", System.Data.SqlDbType.Int);
                comm.Parameters["@Borrower_ID"].Value = val2;
                comm.Parameters.Add("@Borrowed_Date", System.Data.SqlDbType.Date);
                comm.Parameters["@Borrowed_Date"].Value = Calendar1.SelectedDate;
                comm.Parameters.Add("@CD_Name", System.Data.SqlDbType.Text);
                comm.Parameters["@CD_Name"].Value = val1;
                
                try
                {
                    // Open the connection
                    conn.Open();
                    // Execute the command
                    comm.ExecuteNonQuery();

                    // Display completed message
                    ddl.DataBind();
                   
                }
                catch (SqlException ex)
                {
                    // Display error message
                    string str;
                    str = "Source:" + ex.Source;
                    str += "\n" + "Number:" + ex.Number.ToString();
                    str += "\n" + "Message:" + ex.Message;
                    str += "\n" + "Class:" + ex.Class.ToString();
                    str += "\n" + "Procedure:" + ex.Procedure.ToString();
                    str += "\n" + "Line Number:" + ex.LineNumber.ToString();
                    str += "\n" + "Server:" + ex.Server.ToString();
                    // Display error message
                    Label1.Text = str;

                }
                finally
                {
                    // Close the connection
                    conn.Close();
                }     
             
            }

            //string sql = "Update CD "
            //    + "SET CDstatus = "+borrowed
            //    + "WHERE CD_ID = " + val1;




        }
    }
}