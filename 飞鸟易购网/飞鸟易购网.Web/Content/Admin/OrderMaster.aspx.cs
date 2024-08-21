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
    public List<Order> GetAllOrder()
    {
        return db.Order.ToList();
    }
    protected void Bind()
    {
        var orders = GetAllOrder();
        if (orders.Count() == 0)
        {
            pnlOrder.Visible = false;
            lblOrder.Text = "尚无订单！";
        }
        else
        {
            pnlOrder.Visible = true;
            lblOrder.Text = "";
        }
        gvOrder.DataSource = orders;
        gvOrder.DataBind();
    }

    protected void gvOrder_PageIndexChanging(Object sender, GridViewPageEventArgs e)
    {
        gvOrder.PageIndex = e.NewPageIndex;
        Bind();  //调用自定义方法Bind()
    }

    protected void btnAudit_Click(object sender, EventArgs e)
    {
        GridView gvOrder = new GridView();
        gvOrder = (GridView)Page.Master.FindControl("body").FindControl("gvOrder");
        if (gvOrder != null)
        {
            for (int i = 0; i < gvOrder.Rows.Count; i++)
            {
                CheckBox chkChoice = new CheckBox();
                chkChoice = (CheckBox)gvOrder.Rows[i].FindControl("chkChoice");
                if (chkChoice != null)
                {
                    if (chkChoice.Checked)
                    {
                        int OrderId = int.Parse(gvOrder.Rows[i].Cells[2].Text);
                        UpdateOrder(OrderId);  //调用自定义方法UpdateOrder(）
                    }
                }
            }
        }
        Bind();  //调用自定义方法Bind()
    }
    public void UpdateOrder(int orderId)
    {
        Order order = (from o in db.Order
                       where o.OrderId == orderId
                       select o).First();
        order.Status = "已发货";
        db.SaveChanges();
    }
}