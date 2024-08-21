using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 飞鸟易购网.DAL;

public partial class Content_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public List<Product> GetProductBySearchText(string searchText)
    {
        MyShopEntities db = new MyShopEntities();
        return (from p in db.Product
                where p.Name.Contains( searchText )
                select p).ToList();
    }
    protected void Bind()
    {
        if (this.txtSearch.Text != null)
        {

            gvProduct.DataSource = GetProductBySearchText(this.txtSearch.Text);
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

        Bind();  //调用自定义方法Bind()

    }

    protected void btn_Cart_Click(object sender, EventArgs e)
    {
        string ProductId = Request.QueryString["id"];
        Response.Redirect($"ShopCart.aspx?ProductId={ProductId}");
    }
}