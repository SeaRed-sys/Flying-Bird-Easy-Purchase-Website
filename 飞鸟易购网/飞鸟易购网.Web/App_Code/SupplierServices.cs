using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using 飞鸟易购网.DAL;

namespace 飞鸟易购网.BLL
{
    public class SupplierServices
    {
        MyShopEntities db = new MyShopEntities();
        /// <summary>
        /// 列表
        /// </summary>
        /// <returns></returns>
        public List<Supplier> GetAllSupplier()
        {
            return (from c in db.Supplier
                    select c).ToList();
        }
        /// <summary>
        /// 获取供货人的信息
        /// </summary>
        /// <param name="suppId"></param>
        /// <param name="name"></param>
        /// <param name="addr1"></param>
        /// <param name="addr2"></param>
        /// <param name="city"></param>
        /// <param name="state"></param>
        /// <param name="zip"></param>
        /// <param name="phone"></param>
        public void InSertSupplier(int suppId, string name,
          string addr1, string addr2, string city, string state, string zip, string phone)
        {
            Supplier supplier = new Supplier();
            supplier.SuppId = suppId;
            supplier.Name = name;
            supplier.Addr1 = addr1;
            supplier.Addr2 = addr2;
            supplier.City = city;
            supplier.State = state;
            supplier.Zip = zip;
            supplier.Phone = phone;

            db.Supplier.Add(supplier);
            db.SaveChanges();
        }
        /// <summary>
        /// 更新供货人的信息
        /// </summary>
        /// <param name="suppId"></param>
        /// <param name="name"></param>
        /// <param name="addr1"></param>
        /// <param name="addr2"></param>
        /// <param name="city"></param>
        /// <param name="state"></param>
        /// <param name="zip"></param>
        /// <param name="phone"></param>
        public void UpdateSupplier(int suppId, string name,
          string addr1, string addr2, string city, string state, string zip, string phone)
        {
            Supplier supplier = (from c in db.Supplier
                                 where c.SuppId == suppId
                                 select c).First();
            supplier.Name = name;
            supplier.Addr1 = addr1;
            supplier.Addr2 = addr2;
            supplier.City = city;
            supplier.State = state;
            supplier.Zip = zip;
            supplier.Phone = phone;
            db.SaveChanges();
        }
        /// <summary>
        /// 删除供货人的信息
        /// </summary>
        /// <param name="suppId"></param>
        public void DeleteSupplier(int suppId)
        {
            Supplier supplier = (from c in db.Supplier
                                 where c.SuppId == suppId
                                 select c).First();
            db.Supplier.Remove(supplier);
            db.SaveChanges();
        }

    }
}
