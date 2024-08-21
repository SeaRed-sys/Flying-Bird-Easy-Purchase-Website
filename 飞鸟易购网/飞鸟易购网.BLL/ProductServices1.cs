using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using 飞鸟易购网.DAL;

namespace 飞鸟易购网.BLL
{
    public  class ProductServices1
    {
        MyShopEntities db = new MyShopEntities();
        public List<Product> GetProductsByCategoryId(int categoryId)
        {
            return db.Product.Where(p => p.CategoryId == categoryId).ToList();
        }
        public Product GetProductByProductId(int productId)
        {
            return db.Product.Where(p => p.ProductId == productId).FirstOrDefault();
        }
    }
}
