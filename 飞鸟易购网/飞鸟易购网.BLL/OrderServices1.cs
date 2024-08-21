using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;
using 飞鸟易购网.DAL;

namespace 飞鸟易购网.BLL
{
    public class OrderServices1
    {
        MyShopEntities db = new MyShopEntities();
        public void CreatOrderFromCart(int customerId, string customerName, string addr1, string addr2, string city, string state, string zip, string phone, float actualpayment)
        {
            using (TransactionScope ts = new TransactionScope())
            {
                List<CartItem> cartItemList = (from c in db.CartItem
                                               where c.CustomerId == customerId
                                               select c).ToList();

                Order order = new Order
                {
                    CustomerId = customerId,
                    UserName = customerName,
                    OrderDate = DateTime.Now,
                    Addr1 = addr1,
                    Addr2 = addr2,
                    City = city,
                    State = state,
                    Zip = zip,
                    Phone = phone,
                    Status = "待发货",
                    Actualpayment = actualpayment

                };
                OrderItem orderItem = null;
                Product product = null;
                foreach (CartItem cartItem in cartItemList)
                {
                    orderItem = new OrderItem
                    {
                        OrderId = order.OrderId,
                        ProName = cartItem.ProName,
                        ListPrice = cartItem.ListPrice,
                        Qty = cartItem.Qty,
                        TotalPrice = cartItem.Qty * cartItem.ListPrice,
                        Image = cartItem.Image

                    };
                    order.OrderItem.Add(orderItem);
                    product = (from p in db.Product
                               where p.ProductId == cartItem.ProId
                               select p).First();
                    product.Qty = product.Qty - cartItem.Qty;
                    db.CartItem.Remove(cartItem);
                }
                db.Order.Add(order);
                db.SaveChanges();
                ts.Complete();
            }
        }
    }
}
