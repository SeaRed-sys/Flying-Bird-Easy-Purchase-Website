using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using 飞鸟易购网.DAL;

namespace 飞鸟易购网.BLL
{
    public  class CartItemService
    {
        MyShopEntities db = new MyShopEntities();
        public CartItem Insert(int customerId, int productId, int qty)
        {
            Product product = db.Product.Where(p => p.ProductId == productId).FirstOrDefault();
            CartItem cartItem = new CartItem
            {
                CustomerId = customerId,
                ProId = product.ProductId,
                ProName = product.Name,
                ListPrice = (decimal)product.ListPrice,
                Qty = qty,
                Image = product.Image
            };
            int ExistCartItemCount = db.CartItem.Where(c => c.CustomerId == customerId && c.ProId == productId).Count();
            if (ExistCartItemCount > 0)
            {
                CartItem ExistCartitem = db.CartItem.Where(c => c.CustomerId == customerId && c.ProId == productId).FirstOrDefault();
                ExistCartitem.Qty += qty;
            }
            else
            {
                db.CartItem.Add(cartItem);
            }
            db.SaveChanges();
            return cartItem;
        }
        public CartItem Update(int customerId, int productId, int qty)
        {
            CartItem cartItem = db.CartItem.Where(c => c.CustomerId == customerId && c.ProId == productId).FirstOrDefault();
            if (cartItem != null)
            {
                cartItem.Qty = qty;
                if (cartItem.Qty <= 0)
                {
                    db.CartItem.Remove(cartItem);
                }
                db.SaveChanges();
            }
            return cartItem;
        }
        public void Delete(int customerId, int productId)
        {
            CartItem cartItem = db.CartItem.Where(c => c.CustomerId == customerId && c.ProId == productId).FirstOrDefault();
            if (cartItem != null)
            {
                db.CartItem.Remove(cartItem);
                db.SaveChanges();
            }
        }
        public void Clear(int customerId)
        {
            List<CartItem> cartItems = db.CartItem.Where(c => c.CustomerId == customerId).ToList();
           foreach(CartItem cartItem in cartItems)
            {
            db.CartItem.Remove(cartItem);
            db.SaveChanges();
            }

        }
        public List<CartItem> GetCartItemsbycustomerId(int customerId)
        {
            return db.CartItem.Where(c => c.CustomerId == customerId).ToList();
        }
        public decimal getTotalPriceBycustomerId(int customerId)
        {
            List<CartItem> cartItems = db.CartItem.Where(c => c.CustomerId == customerId).ToList();
            if (cartItems.Count > 0)
            {
                return cartItems.Sum(c => c.ListPrice * c.Qty);
            }
            else
            {
                return 0;
            }
        }

    }
}
