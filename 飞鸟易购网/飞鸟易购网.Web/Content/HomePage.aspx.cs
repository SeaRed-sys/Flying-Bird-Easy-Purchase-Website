using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Butf_Click(object sender, EventArgs e)
    {
        Session["product"] = "拯救者Y9000P";
        Response.Redirect("Look.aspx");
    }

    protected void btniphone14_Click(object sender, EventArgs e)
    {
        Session["product"] = "IPhone14ProMax";
        Response.Redirect("Look.aspx");
    }

    protected void btnairpods_Click(object sender, EventArgs e)
    {
        Session["product"] = "AirPoads2";
        Response.Redirect("Look.aspx");
    }

    protected void btnPad_Click(object sender, EventArgs e)
    {
        Session["product"] = "IPadPro5";
        Response.Redirect("Look.aspx");
    }

    protected void Butlenovo_Click(object sender, EventArgs e)
    {
        Session["product"] = "暗影精灵8";
        Response.Redirect("Look.aspx");
    }

    protected void btnrog_Click(object sender, EventArgs e)
    {
        Session["product"] = "玩家国度";
        Response.Redirect("Look.aspx");
    }

    protected void btny9000p_Click(object sender, EventArgs e)
    {
        Session["product"] = "拯救者Y9000P";
        Response.Redirect("Look.aspx");
    }

    protected void btn暗影精灵_Click(object sender, EventArgs e)
    {
        Session["product"] = "暗影精灵8";
        Response.Redirect("Look.aspx");
    }

    protected void btn16_Click(object sender, EventArgs e)
    {
        Session["product"] = "幻16";
        Response.Redirect("Look.aspx");
    }

    protected void btndell_Click(object sender, EventArgs e)
    {
        Session["product"] = "外星人预言者2";
        Response.Redirect("Look.aspx");
    }

    protected void But幻16_Click(object sender, EventArgs e)
    {
        Session["product"] = "幻16";
        Response.Redirect("Look.aspx");
    }

    protected void btnmipad_Click(object sender, EventArgs e)
    {
        Session["product"] = "小米Pad";
        Response.Redirect("Look.aspx");
    }

    protected void btnhuawpad_Click(object sender, EventArgs e)
    {
        Session["product"] = "华为MatePadPro";
        Response.Redirect("Look.aspx");
    }

    protected void btnmate50_Click(object sender, EventArgs e)
    {
        Session["product"] = "华为Mate50Pro";
        Response.Redirect("Look.aspx");
    }

    protected void But星15_Click(object sender, EventArgs e)
    {
        Session["product"] = "星15";
        Response.Redirect("Look.aspx");
    }
}