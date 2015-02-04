using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1._2_kassakvitto
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Receipt receipt = new Receipt(double.Parse(SumTextBox.Text));
                
                SubtotalLiteral.Text = String.Format(SubtotalLiteral.Text, receipt.Subtotal);
                DiscountLiteral.Text = String.Format(DiscountLiteral.Text, receipt.DiscountRate);
                MoneyOffLiteral.Text = String.Format(MoneyOffLiteral.Text, receipt.MoneyOff);
                TotalLiteral.Text = String.Format(TotalLiteral.Text, receipt.Total);
                
                DiscountPlaceHolder.Visible = true;
            }
        }
    }
}