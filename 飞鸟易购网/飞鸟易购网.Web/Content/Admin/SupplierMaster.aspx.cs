using System;
using System.Collections.Generic;
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
        lblName.Text = Session["AdminName"].ToString();
        string ID = Session["AdminID"].ToString();
        //我的信息
        var result = db.Customer.Find(int.Parse(ID));
        lblID.Text = result.CustomerId.ToString();
        lblUser.Text = result.Name;
    }
    public int GetProductCountBySupplierId(int supplierId)
    {
        return (from p in db.Product
                where p.SuppId == supplierId
                select p).Count();
    }
    protected void DetailsView1_ItemDeleting(Object sender, DetailsViewDeleteEventArgs e)
    {

        var productCount = GetProductCountBySupplierId(int.Parse(DetailsView1.DataKey.Value.ToString()));
        if (productCount != 0)
        {
            lblError.Text = "Error：该分类下有商品，请先删除商品！";
            e.Cancel = true;
        }
    }
}