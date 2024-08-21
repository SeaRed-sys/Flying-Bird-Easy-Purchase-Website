using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 飞鸟易购网.DAL;

public partial class Content_Default : System.Web.UI.Page
{
    MyShopEntities db = new MyShopEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        textold.Text = "";
        Textnew1.Text = "";
        Textnew2.Text = "";
        if (Session["CustomerId"] != null)  //用户已登录
        {
            int id = int.Parse(Session["CustomerId"].ToString());
            Customer customer = db.Customer.Find(int.Parse(Session["CustomerId"].ToString()));
                lblName.Text = Session["CustomerName"].ToString();
                string ID = Session["CustomerID"].ToString();
                var result = db.Customer.Find(int.Parse(ID));
                lblID.Text = result.CustomerId.ToString();
                lblUser.Text = result.Name;
                lblPassword.Text = result.Password;
                lblEmail.Text = result.Email;
                Laname.Text = result.Petname;
            if (customer.VIP == 1)
            {
                lblState.Text = "VIP用户";
            }
            else
            {
                lblState.Text = "非VIP用户";
            }
            var results = db.Order.Where(p=>p.CustomerId==id);
            gvOrder.DataSource = results.ToList();
            gvOrder.DataBind();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }
    protected void btnclose_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }

    protected void Bind2()
    {
       Customer customer = db.Customer.Find(int.Parse(Session["CustomerId"].ToString()));
    }


    protected void btnVIP_Click(object sender, EventArgs e)
    {
        Customer customer = db.Customer.Find(int.Parse(Session["CustomerId"].ToString()));
        customer.VIP = 1;
        Session["VIP"] = 1;
        db.SaveChanges();
    }

    protected void btnphoto_Click(object sender, EventArgs e)
    {
        string fileName;
        string fileFolder;
        string dateTime = "";
        fileName = Path.GetFileName(fupImage.PostedFile.FileName);
        dateTime += DateTime.Now.Year.ToString();
        dateTime += DateTime.Now.Month.ToString();
        dateTime += DateTime.Now.Day.ToString();
        dateTime += DateTime.Now.Hour.ToString();
        dateTime += DateTime.Now.Minute.ToString();
        dateTime += DateTime.Now.Second.ToString();
        fileName = dateTime + fileName;
        fileFolder = Server.MapPath("~/") + "Image\\" + "\\";
        fileFolder = fileFolder + fileName;
        fupImage.PostedFile.SaveAs(fileFolder);
        Customer cus = db.Customer.Find(int.Parse(Session["CustomerId"].ToString()));
        if (cus != null)
        {
            cus.Image = "~\\Image\\" + "\\" + fileName;
            db.SaveChanges();
            Bind2();

        }


    }

    protected void Butchangepw_Click(object sender, EventArgs e)
    {
        Customer customer = db.Customer.Find(int.Parse(Session["CustomerId"].ToString()));
        if (textold.Text != customer.Password)
        {
            lblm.Text = "旧密码错误！"; lblm.Visible = true;
        }
        else
        {
            if (Textnew1.Text != Textnew2.Text)
            {
                lblm.Text = "两次密码不同！"; lblm.Visible = true;
            }
            else
            {
                customer.Password = Textnew1.Text;
                lblm.Text = "修改成功！"; lblm.Visible = true;
                db.SaveChanges();
            }
        }
    }
    //修改姓名
    protected void Butpetname_Click(object sender, EventArgs e)
    {
        Customer customer = db.Customer.Find(int.Parse(Session["CustomerId"].ToString()));
        //Customer customer1 = (from c in db.Customer
        //                     where c.CustomerId == int.Parse(Session["CustomerId"].ToString())
        //                     select c).FirstOrDefault();
        customer.Petname = Textpetname.Text;
        db.SaveChanges();
        Laname.Text = Textpetname.Text;
        Session["Petname"] = Textpetname.Text;
    }
}