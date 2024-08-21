﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 飞鸟易购网.BLL;

public partial class Content_Login : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //newuser.aspx页面传递过来的查询字符串变量name值非空
            if (Request.QueryString["Name"] != null)
            {
                txtName.Text = Request.QueryString["Name"];
                lblMsg.Text = "注册成功，请登录！";
            }
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {           
            //调用Customerservice类中的checkLogin（）方法检查输入的用户名和密码是否正确
            int customerId = customerSrv.CheckLogin(txtName.Text.Trim(), txtPwd.Text.Trim());
            if (customerId > 0)//用户名和密码正确
            {
                Session.Clear();//清理Session中保存的内容
                if (txtName.Text.Trim() == "admin")//管理员登录
                {
                    Session["AdminId"] = customerId;
                    Session["AdminName"] = txtName.Text;
                    Session["VIP"] = 1;
                    Response.Redirect("Admin/Adminmanagement.aspx");
                }
                else
                {
                    Session["CustomerId"] = customerId;
                    Session["CustomerName"] = txtName.Text;
                    Session["VIP"] = 2;
                    Response.Redirect("HomePage.aspx");
                }
            }
            else
            {
                lblMsg.Text = "用户名或密码错误！";
            }

        }
    }
}