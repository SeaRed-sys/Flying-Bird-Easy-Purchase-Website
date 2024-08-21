using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl : System.Web.UI.UserControl
{
    //添加用户控件的公用属性Text
    private string _Text;  //下画线左边有一个空格
    public string Text
    {
        get { return _Text; }
        set { _Text = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Text != "")
        {
            btnSearch.Text = this.Text;
        }
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        txtSearchKey.Text = "搜索完成";
    }
}