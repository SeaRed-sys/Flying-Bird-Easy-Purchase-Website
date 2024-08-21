using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;

/// <summary>
/// EmailSender 的摘要说明
/// </summary>
public class EmailSender
{
    //从web。config中的<appSetting>配置节获取相应的键值
    private string mailFromAddress =
        ConfigurationManager.AppSettings["MailFromAddress"];
    private bool userSsl =
       bool.Parse(ConfigurationManager.AppSettings["UseSsl"]);
    private string userName =
        ConfigurationManager.AppSettings["UserName"];
    private string password =
        ConfigurationManager.AppSettings["Password"];
    private string serverName =
        ConfigurationManager.AppSettings["ServerName"];
    private int serverPort =
        int.Parse(ConfigurationManager.AppSettings["ServerPort"]);
    private string findPassWord;//重置后的密码
    private string mailToAddress = "";//收件人邮箱
    //构造函数
    public EmailSender(string address, string pwd)
    {
        mailToAddress = address;
        password = pwd;
    }
    //自定义方法
    //根据设置的SMTP服务器名、端口号、账户号、授权码等信息发送给定发件人邮箱、收件人邮箱、电子右键主题、电子邮件内容等信息的邮件
    public void Send()
    {
        //新建smtpClient类实例smtpClient对象，using语句块结束时释放smtpClient对象
        using (var smtpClient = new SmtpClient())
        {
            //设置是否使用SSL协议连接
            smtpClient.EnableSsl = userSsl;
            //设置smtp服务器名
            smtpClient.Host = serverName;
            //设置smtp服务器的端口号
            smtpClient.Port = serverPort;
            //设置smtp服务器发送邮件的凭据（用户名和授权码）
            smtpClient.Credentials = new NetworkCredential(userName, password);
            string body = "您登录MyPetShop的密码已重置为：" + findPassWord;
            MailMessage mailMessage = new MailMessage(
                                mailFromAddress,//发件人邮箱
                                mailToAddress,  //收件人邮箱
                                "MyPetShop用户密码重置",//电子邮件主题
                                body//电子邮件内容
                                );
            //调用smtpClient对象的send方法发送邮件
            smtpClient.Send(mailMessage);
        }
    }
}