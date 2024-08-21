using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 飞鸟易购网.BLL;

public partial class Content_SignUp : System.Web.UI.Page
{
    protected void btnReg_Click(object sender, EventArgs e)
    {
        CustomerService customerSrv = new CustomerService();
        if (Page.IsValid)
        {
            //调用Customerservices类中的IsNameExist()方法判断用户名是否重名
            if (customerSrv.IsNameExist(txtName.Text))
            {
                lblMsg.Text = "用户名已经存在！";
            }
            else
            {
                customerSrv.Insert(txtName.Text.Trim(), txtPassword.Text.Trim(), txtEmail.Text.Trim());
                Response.Redirect("Login.aspx");
            }
        }
    }
}