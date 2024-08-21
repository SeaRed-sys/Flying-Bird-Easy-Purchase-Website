using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using 飞鸟易购网.DAL;

namespace 飞鸟易购网.BLL
{
    public class CustomerService
    {
        //新建MyPetShop。dal数据访问层中的MyPetShopentities类实例db
        MyShopEntities db = new MyShopEntities();
        //判断输入的用户名是否重名
        public bool IsNameExist(string name)
        {
            //通过MyPetShop。DAL数据访问层中的customer类查询输入的用户名是否重名，若重名则返回用户对象，否则返回null
            var customer = db.Customer.Where(c => c.Name.Equals(name)).FirstOrDefault();
            if (customer == null) { return false; }
            else { return true; }
        }
        //向MyPetShop数据库的customer表插入新用户记录
        public void Insert(string name, string password, string email)
        {
            Customer customer = new Customer();
            customer.Name = name;
            customer.Password = password;
            customer.Email = email;
            db.Customer.Add(customer);
            db.SaveChanges();
        }
        //检查输入的用户名和密码是否正确
        public int CheckLogin(string name, string password)
        {
            //通过MyPetShop。DAL数据访问层中的Customer类查询输入的用户名和密码是否正确，若正确，则返回相应的用户对象，否则返回null
            Customer customer = db.Customer.Where(c => c.Name.Equals(name)
                                 && c.Password.Equals(password)).FirstOrDefault();
            if (customer != null)
            {
                return customer.CustomerId;
            }
            else
            { return 0; }
        }
        //修改用户Id对应用户的密码
        public void ChangePassword(int customerId, string password)
        {
            Customer customer = db.Customer.Find(customerId);
            customer.Password = password;
            db.SaveChanges();
        }
        //判断Customer表中是否存在输入的用户名和邮箱
        public bool isEmailExist(string name, string email)
        {
            Customer customer = db.Customer.Where(c => c.Name.Equals(name) && c.Email.Equals(email)).FirstOrDefault();
            if (customer != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        //将用户密码重置为相应的用户名
        public void ResetPassword(string name, string email)
        {
            Customer customer = db.Customer.Where(c => c.Name.Equals(name) && c.Email.Equals(email)).First();
            customer.Password = name;
            db.SaveChanges();
        }
        //检查输入的用户名和密码是否正确
        public int CheckLogin_Admin(string name, string password)
        {
            //通过MyPetShop。DAL数据访问层中的Customer类查询输入的用户名和密码是否正确，若正确，则返回相应的用户对象，否则返回null
            Administrator administrator = db.Administrator.Where(c => c.Name.Equals(name)
                                 && c.Password.Equals(password)).FirstOrDefault();
            //Customer customer = db.Customer.Where(c => c.Name.Equals(name)
            //                     && c.Password.Equals(password)).FirstOrDefault();
            if (administrator != null)
            {
                return administrator.AdministratorId;
            }
            else
            { return 0; }
        }

    }
}
