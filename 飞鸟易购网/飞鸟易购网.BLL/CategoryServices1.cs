using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using 飞鸟易购网.DAL;

namespace 飞鸟易购网.BLL
{
    public class CategoryServices1
    {
        MyShopEntities db = new MyShopEntities();
        /// <summary>
        /// 返回Category内容
        /// </summary>
        /// <param name="categoryId"></param>
        /// <returns></returns>
        public Category GetCategoryById(int categoryId)
        {
            return (from c in db.Category
                    where c.CategoryId == categoryId
                    select c).First();
        }
        /// <summary>
        /// 向Category内保存东西
        /// </summary>
        /// <param name="categoryId"></param>
        /// <param name="name"></param>
        /// <param name="descn"></param>
        public void InSertCategory(int categoryId, string name, string descn)
        {
            Category category = new Category();
            category.CategoryId = categoryId;
            category.Name = name;
            category.Descn = descn;

            db.Category.Add(category);
            db.SaveChanges();
        }
        /// <summary>
        /// 更新Category内的内容
        /// </summary>
        /// <param name="categoryId"></param>
        /// <param name="name"></param>
        /// <param name="descn"></param>
        public void UpdateCategory(int categoryId, string name, string descn)
        {
            Category category = (from c in db.Category
                                 where c.CategoryId == categoryId
                                 select c).First();
            category.Name = name;
            category.Descn = descn;
            db.SaveChanges();
        }
        /// <summary>
        /// 删除Category内的指定内容
        /// </summary>
        /// <param name="categoryId"></param>
        public void DeleteCategory(int categoryId)
        {
            Category category = (from c in db.Category
                                 where c.CategoryId == categoryId
                                 select c).First();
            db.Category.Remove(category);
            db.SaveChanges();
        }
        /// <summary>
        /// 返回Category列表
        /// </summary>
        /// <returns></returns>
        public List<Category> GetAllCategory()
        {
            return (from c in db.Category
                    select c).ToList();
        }
        /// <summary>
        /// 返回指定菜品数量
        /// </summary>
        /// <param name="categoryId"></param>
        /// <returns></returns>
        public int GetProductCountByCategoryId(int categoryId)
        {
            return (from p in db.Product
                    where p.CategoryId == categoryId
                    select p).Count();
        }
    }
}
