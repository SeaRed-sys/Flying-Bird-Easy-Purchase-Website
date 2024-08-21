using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 飞鸟易购网.DAL;

public partial class Content_ProductContent : System.Web.UI.Page
{
    MyShopEntities db = new MyShopEntities();
    Product Product = new Product();
    protected void Page_Load(object sender, EventArgs e)
    {
        string ProductId = Request.QueryString["id"];
        var product = db.Product.Find(int.Parse(ProductId));
        string ProductImg = product.Image;
        Image1.ImageUrl = ProductImg;
        lblProductName.Text = product.Name;
        lblName.Text = product.Name;
        lblOldPrice.Text = product.ListPrice.ToString();
        lblNewPrice.Text = product.UnitCost.ToString();
        int CategoryId = product.CategoryId;
        int SuppId =(int) product.SuppId;
        var category = db.Category.Find(CategoryId);
        var supplier = db.Supplier.Find(SuppId);
        lblCategory.Text = category.Name;
        lblSupplier.Text = supplier.Addr1;
    }
    //购买
    protected void btn_Buy_Click(object sender, EventArgs e)
    {
        if (Session["customerId"] != null)
        {
            Response.Redirect("SubmitCart.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }
    //收藏
    protected void btn_Cart_Click(object sender, EventArgs e)
    {
        //CartItem cart = new CartItem();
        //cart.CustomerId=int.Parse( Session["CustomerID"].ToString());
        string ProductId =Request.QueryString["id"];
        Response.Redirect($"ShopCart.aspx?ProductId={ProductId}");
        //var product = db.Product.Find(int.Parse(ProductId));
        //cart.ProId = product.ProductId;
        //cart.ProName = product.Name;
        //cart.ListPrice =(decimal) product.ListPrice;
        //cart.Qty = product.Qty;
        //db.CartItem.Add(cart);
        //db.SaveChanges();
    }
}