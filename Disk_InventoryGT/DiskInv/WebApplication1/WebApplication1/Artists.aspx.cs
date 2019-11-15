using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Artists : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Resets page on button click and throws a confirmation message
            if (IsValid)
            {
                lblMsg.Text = "Artist " + TextBox1.Text + " "+TextBox2.Text+ " added.";
                TextBox1.Text = "";
                TextBox2.Text = "";
                DropDownList1.SelectedIndex = 0;
            }
        }

       
    }
}