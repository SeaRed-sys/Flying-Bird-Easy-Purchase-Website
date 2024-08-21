<%@ Page Language="C#" MasterPageFile="~/MasterPage_FeiNiao.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Content_Product" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
.shell {
    width: 90%;
    height: 700px;
    display: flex;
}

.home1 .box1 {
    flex: 1;
    overflow: hidden;
    transition: .5s;
    margin: 0 20px;
    box-shadow: 10px 10px 20px rgba(0, 0, 0, .5);
    border-radius: 20px;
    border: 10px solid #fff;
    background-color: #fff;
}

    .home1 .box1 > img {
        width: 200%;
        height: 85%;
        object-fit: cover;
        transition: .5s;
    }

    .home1 .box1 > span {
        font: 200 45px '优设标题黑';
        text-align: center;
        height: 15%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .home1 .box1:hover {
        flex-basis: 40%;
    }

        .home1 .box1:hover > img {
            width: 100%;
            height: 100%;
        }
.home1 {
    display: flex;
    align-items: center;
    min-height: 100vh;
    background: rgb(243, 230, 241);
    background-size: cover;
    background-position: center;
}
:root{
    --pink:#e84393;
}

.btn1 {
    display: inline-block;
    margin-top: 1rem;
    border-radius: 5rem;
    background: #333;
    color: #fff;
    padding: .9rem 3.5rem;
    cursor: pointer;
    font-size: 1.7rem;
    position:fixed;
    bottom:0;
    right:0;
    
}

    .btn1:hover {
        color: var(--pink);
    }

</style>
    <!-- home section starts -->

    <section class="home1" id="home">
        <a href="#Laptop"><div class="box1">
            <img src="../Image/Laptop/hp星15青春.jpg" />
            <span>Laptop</span>
        </div></a>
        <a href="#Phone"><div class="box1">
            <img src="../Image/Phone/iphone14promax.jpg"/>
            <span>Phone</span>
        </div></a>
        <a href="#Pad"><div class="box1">
            <img src="../Image/Pad/ipad.jpg"/>
            <span>Pad</span>
        </div></a>
        <a href="#Accessory"><div class="box1">
            <img src="../Image/Accessory/hp耳机.jpg"/>
            <span>Accessory</span>
        </div></a>
            <a href="#Laptop" class="button1" >购物 Now</a><br />
            <a href="Search.aspx" class="button1" >搜索 Now</a>
    </section>
    <a href="#home" class="btn1">置顶</a>
    <!-- home section ends -->
    <!--  Laptop products section starts -->

    <section class="products" id="Laptop">
        <h1 class="heading"> Laptop <span>products</span></h1>

        <div class="box-container">
            <div class="box">
                <span class="discount">-10%</span>
                <div class="image">
                    <img src="../Image/Laptop/暗影精灵8.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=1" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=1" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=1" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>暗影精灵8</h3>
                    <div class="price"> $4599.00 <span>$6999.00</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-20%</span>
                <div class="image">
                    <img src="../Image/Laptop/y9000p.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=5" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=5" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=5" class="fas fa-share"></a>
                   </div>
                </div>
                <div class="content">
                    <h3>拯救者Y900P</h3>
                    <div class="price"> $7999.00 <span>$4999.00</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/hp星15青春.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=6" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=6" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=6" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>惠普星15</h3>
                    <div class="price"> $4999.00 <span>$2999.00</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-12%</span>
                <div class="image">
                    <img src="../Image/Laptop/外星人预言者2.gif" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=13" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=13" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=13" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>外星人预言者2</h3>
                    <div class="price"> $8999 <span>$6789</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-12%</span>
                <div class="image">
                    <img src="../Image/Laptop/幻16.0.png" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=14" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=14" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=14" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>幻16.0</h3>
                    <div class="price"> $6599<span>$4999</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-20%</span>
                <div class="image">
                    <img src="../Image/Laptop/rog玩家国度.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=24" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=24" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=24" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>ROG玩家国度</h3>
                    <div class="price"> $9999 <span>$7999</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/asus无畏16.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=27" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=27" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=27" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>华硕无畏</h3>
                    <div class="price"> $4999 <span>$3999</span></div>
                </div>
            </div>
            
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/hp66.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=28" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=28" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=28" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>惠普战66五代</h3>
                    <div class="price"> $5499 <span>$3499</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/星15.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=29" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=29" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=29" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>惠普星15青春版</h3>
                    <div class="price"> $3999 <span>$2999</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/hwmatebook13.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=30" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=30" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=30" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>华为MateBook13s</h3>
                    <div class="price"> $8999 <span>$5999</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/hp66.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=32" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=32" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=32" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Mac2022（M2）</h3>
                    <div class="price"> $9999 <span>$7999</span></div>
                </div>
            </div>
            
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/mibook15.jpg"  alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=33" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=33" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=33" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>小米AirBook15</h3>
                    <div class="price"> $4599 <span>$3599</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/r9000p.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=34" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=34" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=34" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>拯救者R900P</h3>
                    <div class="price"> $7999 <span>$5999</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/redmibookpro.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=35" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=35" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=35" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>RedmiBookPro2022</h3>
                    <div class="price"> $3999 <span>$2999</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/rog魔霸22.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=37" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=37" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=37" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>ROG魔霸2022</h3>
                    <div class="price"> $9999 <span>$7999</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/rog枪神.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=38" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=38" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=38" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>ROG枪神2022</h3>
                    <div class="price"> $9999 <span>$7999</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/Thinkpad14.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=39" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=39" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=39" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>ThinkPad14+</h3>
                    <div class="price"> $9999 <span>$7999</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/小新pro16.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=40" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=40" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=40" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>小新pro16</h3>
                    <div class="price"> $9999 <span>$7999</span></div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/小新14plus.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=42" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=42" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=42" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>小新14plus</h3>
                    <div class="price"> $9999 <span>$7999</span></div>
                </div>
            </div>
        </div>
    </section>
    <!-- Laptop products section ends -->
    <!--  Phone products section starts -->

    <section class="products" id="Phone">
        <h1 class="heading"> Phone <span>products</span></h1>

        <div class="box-container">
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Phone/Iphone14.jpeg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=7" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=7" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=7" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>IPhone14ProMax</h3>
                    <div class="price"> $9999 <span>$6999</span></div>
                </div>
            </div>
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/hp66.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=15" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=15" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=15" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>华为Mate50Pro</h3>
                    <div class="price"> $8999 <span>$5999</span></div>
                </div>
            </div>   
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Phone/mi12.jpeg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=16" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=16" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=16" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>M小米12SU1tra</h3>
                    <div class="price"> $10999 <span>$7999</span></div>
                </div>
            </div>
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Laptop/hp66.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=51" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=51" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=51" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>荣耀70</h3>
                    <div class="price"> $3999 <span>$2199</span></div>
                </div>
            </div>
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Phone/sxs22.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=53" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=53" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=53" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>三星S22</h3>
                    <div class="price"> $6999 <span>$4999</span></div>
                </div>
            </div>
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Phone/vivox90.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=54" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=54" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=54" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>ViVoX90</h3>
                    <div class="price"> $5999 <span>$3999</span></div>
                </div>
            </div>
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Phone/opporen8pro.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=55" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=55" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=55" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>OPPO Reno8Pro</h3>
                    <div class="price"> $2599 <span>$1699</span></div>
                </div>
            </div>
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Phone/hwnova10.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=57" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=57" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=57" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>华为Nova10</h3>
                    <div class="price"> $3999 <span>$2599</span></div>
                </div>
            </div>
            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="../Image/Phone/realme10pro.jpg" alt="" />
                    <div class="icons">
                        <a href="ProductContent.aspx?id=59" class="fas fa-heart"></a>
                        <a href="ProductContent.aspx?id=59" class="cart-btn">add to cart</a>
                        <a href="ProductContent.aspx?id=59" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Realme10Pro</h3>
                    <div class="price"> $1999 <span>$1099</span></div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- products section ends -->
    <!-- Pad products section starts -->

    <section class="products" id="Pad">
        <h1 class="heading"> Pad <span>products</span></h1>

        <div class="box-container">

                <div class="box">
                  <span class="discount">-17%</span>
                  <div class="image">
                     <img src="../Image/Pad/Ipadpro.jpg" alt="" />
                  <div class="icons">
                    <a href="ProductContent.aspx?id=11" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=11" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=11" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>IpadPro5</h3>
                <div class="price"> $7999 <span>$5999</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Pad/hwpad.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=19" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=19" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=19" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>华为MatePro5</h3>
                <div class="price"> $3199 <span>$2099</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Pad/mipad.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=20" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=20" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=20" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>小米Pad5Pro</h3>
                <div class="price"> $2599 <span>$1599</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Pad/ipad.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=43" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=43" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=43" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Ipad10</h3>
                <div class="price"> $2999 <span>$1999</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Pad/ipadair.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=44" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=44" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=44" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>IPadAir5</h3>
                <div class="price"> $3999 <span>$2599</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Pad/ipadmini.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=46" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=46" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=46" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>IPadmimi</h3>
                <div class="price"> $2399 <span>$1399</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Pad/hwpadse.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=47" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=47" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=47" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>华为matePadSE </h3>
                <div class="price"> $1699 <span>$999</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Pad/oppopad.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=48" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=48" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=48" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>OPPOPad</h3>
                <div class="price"> $2499 <span>$1799</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Pad/小新pad22.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=49" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=49" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=49" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>小新Pad2022</h3>
                <div class="price"> $1299 <span>$799</span></div>
            </div>
        </div>
    </div>
</section>

    
    <!-- Pad products section ends -->
    <!-- Accessory products section starts -->

    <section class="products" id="Accessory">
    <h1 class="heading"> Laptop <span>products</span></h1>
     <div class="box-container">
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Accessory/airpods.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=12" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=12" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=12" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>AirPoads2</h3>
                <div class="price"> $999 <span>$549</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Accessory/pow.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=19" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=19" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=19" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>40W充电器</h3>
                <div class="price"> $168 <span>$48</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Accessory/beats.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=61" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=61" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=61" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Beasts</h3>
                <div class="price"> $618 <span>$448</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Accessory/hwbuds.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=62" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=62" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=62" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>华为FreeBuds</h3>
                <div class="price"> $568 <span>$348</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Accessory/hp耳机.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=19" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=19" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=19" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>惠普游戏耳机</h3>
                <div class="price"> $168 <span>$48</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Accessory/苹果充电器.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=64" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=64" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=64" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>苹果充电器</h3>
                <div class="price"> $128 <span>$78</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Accessory/hwkey.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=65" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=65" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=65" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>华为妙控键盘</h3>
                <div class="price"> $599 <span>$399</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Accessory/hwpencil2.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=66" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=66" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=66" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>华为Pencil2</h3>
                <div class="price"> $499 <span>$299</span></div>
            </div>
        </div>
        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="../Image/Accessory/ipencil2.jpg" alt="" />
                <div class="icons">
                    <a href="ProductContent.aspx?id=67" class="fas fa-heart"></a>
                    <a href="ProductContent.aspx?id=67" class="cart-btn">add to cart</a>
                    <a href="ProductContent.aspx?id=67" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>IPadPencil2</h3>
                <div class="price"> $599 <span>$399</span></div>
            </div>
        </div>
     </div>

    </section>
    <!-- Accessory products section ends -->

</asp:Content>
