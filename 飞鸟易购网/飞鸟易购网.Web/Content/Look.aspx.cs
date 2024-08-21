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
        Bind();
    }
    public List<Product> GetProductBySearchText(string searchText)
    {
        MyShopEntities  db = new MyShopEntities();
        return (from p in db.Product
                where p.Name.Contains(  searchText )
                select p).ToList();
    }
    protected void Bind()
    {
        if (Session["product"] != null)
        {

            gvProduct.DataSource = GetProductBySearchText(Session["product"].ToString());
            gvProduct.DataBind();
        }
        else
        {
            lblError.Text = "无搜索结果！";
        }
    }

    protected void gvProduct_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvProduct.PageIndex = e.NewPageIndex;
        Bind();  //调用自定义方法Bind()
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Session["product"] = this.txtSearch.Text;
        Bind();  //调用自定义方法Bind()

    }
}