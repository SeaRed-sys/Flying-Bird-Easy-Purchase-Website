//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace 飞鸟易购网.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.CartItem = new HashSet<CartItem>();
        }
    
        public int ProductId { get; set; }
        public int CategoryId { get; set; }
        public Nullable<decimal> ListPrice { get; set; }
        public Nullable<decimal> UnitCost { get; set; }
        public Nullable<int> SuppId { get; set; }
        public string Name { get; set; }
        public string Descn { get; set; }
        public string Image { get; set; }
        public int Qty { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CartItem> CartItem { get; set; }
        public virtual Category Category { get; set; }
        public virtual Supplier Supplier { get; set; }
    }
}
