using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminId"] != null || Session["CustomerId"] != null)  //用户已登录
        {
            if (Session["AdminId"] != null)  //管理员用户
            {
                lblUserName.Text = "您好, " + Session["AdminName"].ToString()+ "管理员";
            }
            else if (Session["CustomerId"] != null)  //一般用户
            {
                lblUserName.Text = "您好, " + Session["CustomerName"].ToString();
            }
        }
    }
    //回到首页
    protected void btn_HomePage_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
    //回到产品页 
    protected void btn_Products_Click(object sender, EventArgs e)
    {
        Response.Redirect("Product.aspx");
    }
    //回到购物车页
    protected void btn_Shoped_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShopCart.aspx");
    }
    //回到联系我们页
    protected void btn_Contact_Click(object sender, EventArgs e)
    {
        if (Session["AdminId"] != null || Session["CustomerId"] != null)  //用户已登录
        {
            if (Session["AdminId"] != null)  //管理员用户
            {
                Response.Redirect("Contact.aspx");
            }
            else if (Session["CustomerId"] != null)  //一般用户
            {
                Response.Redirect("Contact.aspx");
            }
        }
        else
        {
            Response.Redirect("Contact.aspx");
        }

    }
    //回到我的主页
    protected void btn_Mine_Click(object sender, EventArgs e)
    {
        if (Session["AdminId"] != null || Session["CustomerId"] != null)  //用户已登录
        {
            if (Session["AdminId"] != null)  //管理员用户
            {
                Response.Redirect("Personal.aspx");
            }
            else if (Session["CustomerId"] != null)  //一般用户
            {
                Response.Redirect("Personal.aspx");
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}
