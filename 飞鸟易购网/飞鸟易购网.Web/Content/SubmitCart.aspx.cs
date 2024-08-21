using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 飞鸟易购网.BLL;
using 飞鸟易购网.DAL;

public partial class Content_Default2 : System.Web.UI.Page
{
    OrderServices1 orderSrv = new OrderServices1();

    MyShopEntities db = new MyShopEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["CustomerId"] == null || Convert.ToInt32(Session["CustomerId"]) == 0)
        {
            Response.Redirect("Login.aspx");
        }
        pnlConsignee.Visible = true;
        lblMsg.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        orderSrv.CreatOrderFromCart(
             Convert.ToInt32(Session["CustomerId"]) ,
             Session["CustomerName"].ToString(),
             txtAddr1.Text.Trim(), txtAddr2.Text.Trim(), txtCity.Text.Trim(),
             txtState.Text.Trim(), txtZip.Text.Trim(), txtPhone.Text.Trim(), float.Parse(Session["Actualpayment"].ToString()));
        pnlConsignee.Visible = false;
        lblMsg.Text = "已完成结算，谢谢光临！";
    }
}