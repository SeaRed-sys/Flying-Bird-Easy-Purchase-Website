using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 飞鸟易购网.BLL;

public partial class Content_Default2 : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void brnResetPwd_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //调用CustomerService类中的IsNameExist（）方法判断输入的用户名是否存在
            if (!customerSrv.IsNameExist(txtName.Text.Trim()))
            {
                lblMsg.Text = "用户名不存在！";
            }
            else
            {
                //调用CustomerService类中的IsEmailExist（）方法判断输入的用户名和邮箱是否存在
                if (!customerSrv.isEmailExist(txtName.Text.Trim(), txtEmail.Text.Trim()))
                {
                    lblMsg.Text = "邮箱不正确！";
                }
                else
                {
                    //调用CustomerService类中的ResetPassword()方法重置用户密码为用户名
                    customerSrv.ResetPassword(txtName.Text.Trim(), txtEmail.Text.Trim());
                    //新建自定义的EmailSender类实例emailSender对象
                    EmailSender emailSender = new EmailSender(txtEmail.Text.Trim(), txtName.Text.Trim());
                    //调用EmailSender类中的Send（）方法发送邮件
                    emailSender.Send();
                    lblMsg.Text = "密码已发送至邮箱！";
                }
            }
        }
    }
}