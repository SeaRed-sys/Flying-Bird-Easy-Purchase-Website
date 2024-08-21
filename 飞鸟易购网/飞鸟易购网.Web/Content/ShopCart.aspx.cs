using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 飞鸟易购网.BLL;
using 飞鸟易购网.DAL;

public partial class Content_ShopCart : System.Web.UI.Page
{
    public static float pay;
    MyShopEntities db = new MyShopEntities();
    CartItemService CartItemService = new CartItemService();
    ProductServices productServices = new ProductServices();
    CustomerService Customer = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CustomerName"] == null)
        {

            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            if (Session["CustomerId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

            }
            if (Request.QueryString["ProductId"] != null)
            {
                string CustomerId = Session["CustomerId"].ToString();
                string  productId = Request.QueryString["ProductId"];
                var customer = db.Customer.Find(int.Parse(CustomerId));
                var product = db.Product.Find(int.Parse(productId));
                CartItemService.Insert(customer.CustomerId, product.ProductId, 1);
            }
            lblHint.Text = "温馨提示:更改购买数量后，请单击'重新计算'按钮进行更新!";
            Bind();
        }
    }
    protected void Bind()
    {
        float m = float.Parse(CartItemService.getTotalPriceBycustomerId(Convert.ToInt32(Session["Id"])).ToString());
        int n = (int)m / 5000;
        lblTotalPrice.Text = $"原价：{m}  现价(优惠价)：" + ((int)(m - n * 800)).ToString();

        if (Session["VIP"].ToString() == "1") lblTotalPrice.Text = $"原价：{m}  现价(优惠价)：" + ((int)((m - n * 800) * 0.8)).ToString();
        Session["Actualpayment"] = ((int)((m - n * 800) * 0.8)).ToString();
        gvCart.DataSource = CartItemService.GetCartItemsbycustomerId(Convert.ToInt32(Session["CustomerId"]));

        gvCart.DataBind();
        if (gvCart.Rows.Count != 0)
        {
            pnlCart.Visible = true;
            lblCart.Text = "";
        }
        else
        {
            pnlCart.Visible = false;
            lblCart.Text = "购物车内无商品，请先购物!";

        }
    }
    protected void btn_Total_Click(object sender, EventArgs e)
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
    //重新计算
    protected void btn_ReDo_Click(object sender, EventArgs e)
    {
        lblError.Text = "";
        for (int i = 0; i < gvCart.Rows.Count; i++)
        {
            TextBox txtQty = new TextBox();
            txtQty = (TextBox)gvCart.Rows[i].FindControl("txtQty");
            if (txtQty != null)
            {
                var product = productServices.GetProductByProductId(Convert.ToInt32(gvCart.Rows[i].Cells[1].Text));
                if (int.Parse(txtQty.Text) > product.Qty)
                {
                    lblError.Text += "Error:库存不足，商品名为" + product.Name + "的库存数量为" + product.Qty.ToString() + "<bt/>";
                }
                else
                {
                    CartItemService.Update(Convert.ToInt32(Session["CustomerId"]), product.ProductId, Convert.ToInt32(txtQty.Text));
                }
            }
        }
        Bind();
    }
    //清空
    protected void btn_Clear_Click(object sender, EventArgs e)
    {
        CartItemService.Clear(Convert.ToInt32(Session["CustomerId"]));
    }
    //删除
    protected void btn_Delete_Click(object sender, EventArgs e)
    {
        int productId = 0;
        for (int i = 0; i < gvCart.Rows.Count; i++)
        {
            CheckBox chkProduct = new CheckBox();
            chkProduct = (CheckBox)gvCart.Rows[i].FindControl("chkProduct");
            if (chkProduct != null)
            {
                if (chkProduct.Checked)
                {
                    productId = int.Parse(gvCart.Rows[i].Cells[1].Text);
                    CartItemService.Delete(Convert.ToInt32(Session["CustomerId"]), productId);
                }
            }
        }
        Bind();
    }
}