using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 飞鸟易购网.DAL;

public partial class Content_Default2 : System.Web.UI.Page
{
    MyShopEntities db = new MyShopEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        var category = db.Category.Select(p => p.Name);
        var supplier = db.Supplier.Select(p => p.Name);
        ddlCategoryId.DataSource = category.ToList();
        ddlCategoryId.DataBind();
        ddlSuppId.DataSource = supplier.ToList();
        ddlSuppId.DataBind();
    }
    public bool IsExitCS()
    {
        var categories = from c in db.Category
                         select c;
        var suppliers = from c in db.Supplier
                        select c;
        if (categories.Count() == 0 || suppliers.Count() == 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public List<Category> GetAllCategory()
    {
        return (from c in db.Category
                select c).ToList();
    }

    public List<Supplier> GetAllSupplier()
    {
        return (from c in db.Supplier
                select c).ToList();
    }


    protected void Bind()
    {
        var categories = GetAllCategory();
        foreach (var category in categories)
        {
            ddlCategoryId.Items.Add(new ListItem(category.Name, category.CategoryId.ToString()));
        }

        var suppliers = GetAllSupplier();
        foreach (var supplier in suppliers)
        {
            ddlSuppId.Items.Add(new ListItem(supplier.Name, supplier.SuppId.ToString()));
        }
    }

    public bool IsExitProduct(string name)
    {
        var products = from c in db.Product
                       where c.Name == name
                       select c;
        if (products.Count() != 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public void Add(string imageFile, string name, int categoryId, int supplierId,
  decimal listPrice, string descn, int qty)
    {
        Product product = new Product();
        product.Image = imageFile;
        product.Name = name;
        product.CategoryId = categoryId;
        product.SuppId = supplierId;
        product.ListPrice = listPrice;
        product.Descn = descn;
        product.Qty = qty;

        db.Product.Add(product);
        db.SaveChanges();
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (IsExitProduct(txtName.Text.Trim()))  //输入的商品名已存在
        {
            lblNameErr.Text = "商品已经存在";
        }
        else  //添加商品到Product表
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
            Add("~\\Image\\" + "\\" + fileName,
                    txtName.Text.Trim(),
                    int.Parse(ddlCategoryId.SelectedValue), int.Parse(ddlSuppId.SelectedValue),
                    decimal.Parse(txtListPrice.Text.Trim()), txtDescn.Text.Trim(), int.Parse(txtQty.Text.Trim()));

            Response.Redirect("ProductMaster.aspx");
        }
    }
    protected void btnclose_Click1(object sender, EventArgs e)
    {

        Response.Redirect("Login.aspx");
    }
}