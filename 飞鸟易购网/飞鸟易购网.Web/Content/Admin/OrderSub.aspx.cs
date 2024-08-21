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
        if (Session["AdminId"] == null)  //管理员用户未登录
        {
            Response.Redirect("Adminmanagement.aspx");
        }

        if (!IsPostBack)
        {
            Bind();  //调用自定义方法Bind()
        }
        lblName.Text = Session["AdminName"].ToString();
        string ID = Session["AdminID"].ToString();
        MyShopEntities db = new MyShopEntities();
        //我的信息
        var result = db.Customer.Find(int.Parse(ID));
        lblID.Text = result.CustomerId.ToString();
        lblUser.Text = result.Name;
    }
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    if (Session["AdminId"] == null)  //管理员用户未登录
    //    {
    //        Response.Redirect("Login.aspx");
    //    }
    //    if (Request.QueryString.Count == 0)
    //    {
    //        //跳转到Admin文件夹下的Default.aspx
    //        Response.Redirect("Adminmanagement.aspx");
    //    }
    //    else
    //    {
    //        Bind();  //调用自定义方法Bind()
    //    }
    //}
    public List<Order> GetOrderListByOrderId(int orderId)
    {
        return (from o in db.Order
                where o.OrderId == orderId
                select o).ToList();
    }
    public List<OrderItem> GetOrderItemByOrderId(int orderId)
    {
        return (from o in db.OrderItem
                where o.OrderId == orderId
                select o).ToList();
    }
    protected void Bind()
    {
        int orderId = int.Parse(Request.QueryString["OrderId"]);
        var order = GetOrderListByOrderId(orderId);
        var orderItem = GetOrderItemByOrderId(orderId);
        gvOrder.DataSource = order;
        gvOrder.DataBind();
        gvOrderItem.DataSource = orderItem;
        gvOrderItem.DataBind();
    }


    protected void gvOrderItem_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvOrderItem.PageIndex = e.NewPageIndex;
        Bind();  //调用自定义方法Bind()
    }

}