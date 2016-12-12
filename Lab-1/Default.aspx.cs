using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_1
{
    public partial class Defauls : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {            
            double first = Double.Parse(tbFirstNumber.Text);
            double second = Double.Parse(tbSecondNumber.Text);

            tbResult.Text = (first + second).ToString();
        }

        protected void btnSubtract_Click(object sender, EventArgs e)
        {
            double first = Double.Parse(tbFirstNumber.Text);
            double second = Double.Parse(tbSecondNumber.Text);
            
            tbResult.Text = (first - second).ToString();
        }

        protected void btnMultiply_Click(object sender, EventArgs e)
        {
            double first = Double.Parse(tbFirstNumber.Text);
            double second = Double.Parse(tbSecondNumber.Text);

            tbResult.Text = (first * second).ToString();
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            double first = Double.Parse(tbFirstNumber.Text);
            double second = Double.Parse(tbSecondNumber.Text);

            tbResult.Text = (first / second).ToString();
        }
    }
}