﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage_FeiNiao.master" AutoEventWireup="true" CodeFile="ShopCart.aspx.cs" Inherits="Content_ShopCart" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
.content5 {

    background-color:lavenderblush;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
    background-size:cover;
}
.content6 {

    background-color:lavenderblush;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
}
.content5 .center {
    width: 1500px;
    height: 450px;
    /* background-color: deepskyblue; */
    top:3rem;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
    backdrop-filter: blur(4px);
    border-radius: 10px;
    box-shadow: inset 1px 1px 6px rgba(255, 255, 255, 0.3),
                2px 2px 15px rgba(0, 0, 0, 0.5);
    transition: all linear 0.2s;
}
.content5 .center .table{
    width: 800px;
    height: 350px;
    /* background-color: deepskyblue; */
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
    backdrop-filter: blur(4px);
    border-radius: 10px;
    box-shadow: inset 1px 1px 6px rgba(255, 255, 255, 0.3),
                2px 2px 15px rgba(0, 0, 0, 0.5);
    transition: all linear 0.2s;
}

.content5 .center:hover{
    box-shadow: inset 1px 1px 3px rgba(255, 255, 255, 0.9),
                4px 4px 25px rgba(0, 0, 0, 0.9);
    backdrop-filter: blur(7px);
}
.content5 .text {
    color: #120606;
    font-size: 25px;
    vertical-align: middle;
}
.content5 .text .a1,
.content5 .text .a2,
.content5 .text .a3,
.content5 .text .a4 {
    transition: all 0.2s linear;
}
.content5 .text .a1:hover {
    color: deepskyblue;
    text-shadow: 0px 0px 20px deepskyblue;
}
.content5 .text .a2:hover {
    color: #C81D23;
    text-shadow: 0px 0px 20px #C81D23;
}
.content5 .text .a3:hover {
    color: #120606;
    text-shadow: 0px 0px 20px #120606;
}
.content5 .text .a4:hover {
    color: #FFEBD3;
    text-shadow: 0px 0px 20px #FFEBD3;
}

.content5 .main-center {
    position: relative;
}
.content5 .circle span{
    position: absolute;
    border-radius: 50%;
}
.content5 .main-center .circle span:nth-child(1) {
    background: purple;
    top: -37px;
    left: -58px;
    width: 120px;
    height: 120px;
    box-shadow: 1px 1px 30px purple;
}
.content5 .main-center .circle span:nth-child(2) {
    background: cyan;
    top: 51px;
    left: 466px;
    width: 50px;
    height: 50px;
    box-shadow: 1px 1px 30px cyan;
}
.content5 .main-center .circle span:nth-child(3) {
    background: orange;
    top: 318px;
    left: 506px;
    width: 160px;
    height: 160px;
    box-shadow: 1px 1px 30px orange;
}
.content5 .main-center .circle span:nth-child(1) {
    animation: move1 ease-in-out 3s 1s infinite alternate;
}
.content5 .main-center .circle span:nth-child(2) {
    animation: move1 ease-in-out 4s infinite alternate-;
}
.content5 .main-center .circle span:nth-child(3) {
    animation: move1 ease-in-out 2.5s 0.5s infinite alternate;
}
@keyframes move1 {
    0% {transform: translateY(0);}
    100% {transform: translateY(-30px);}
}
.content5 .main-center .circle span:nth-child(4) {
    background: red;
    top: -36px;
    left: 69px;
    width: 130px;
    height: 130px;
    box-shadow: 1px 1px 30px red;
}
.content5 .main-center .circle span:nth-child(5) {
    background: green;
    top: 167px;
    left: 531px;
    width: 120px;
    height: 120px;
    box-shadow: 1px 1px 30px pink;
}
.content5 .main-center .circle span:nth-child(6) {
    background: deepskyblue;
    top: 318px;
    left: 20px;
    width: 60px;
    height: 60px;
    box-shadow: 1px 1px 30px deepskyblue;
}
.content5 .main-center .circle span:nth-child(1) {
    animation: move2 ease-in-out 4s infinite alternate;
}
.content5 .main-center .circle span:nth-child(2) {
    animation: move2 ease-in-out 3s 1s infinite alternate-reverse;
}
.content5 .main-center .circle span:nth-child(3) {
    animation: move2 ease-in-out 4s 0.5s infinite alternate;
}
@keyframes move2 {
    0% {transform: translateY(0);}
    100% {transform: translateY(-35px);}
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
<section>
   <div class="content5">
       <div class="main-center">
           <div class="circle">
               <span></span>
               <span></span>
               <span></span>
               <span></span>
               <span></span>
               <span></span>
           </div>
           <div class="center">
               <div class="table">
                    <asp:Panel ID="pnlCart" runat="server">
                    <asp:GridView ID="gvCart" runat="server" Width="100%" AutoGenerateColumns="false" >
                    <Columns>
                    <asp:TemplateField>
                        <ItemTemplate><asp:CheckBox ID="chkProduct" runat="server" /></ItemTemplate>
                    </asp:TemplateField>
                        <asp:BoundField DataField="ProId" HeaderText="商品ID"  HeaderStyle-Font-Size="18px" ItemStyle-Font-Size="13px" />
                        <asp:BoundField DataField="ProName" HeaderText="商品名称"  HeaderStyle-Font-Size="18px" ItemStyle-Font-Size="13px"/>
                        <asp:BoundField DataField="ListPrice" HeaderText="商品价格" DataFormatString="{0:c}" HeaderStyle-Font-Size="18px" ItemStyle-Font-Size="13px" />
                        <asp:TemplateField HeaderText="购买数量" HeaderStyle-Font-Size="18px" ItemStyle-Font-Size="13px">
                        <ItemTemplate><asp:TextBox ID="txtQty" runat="server" Text='<%# Bind("Qty") %>' Width="30" Font-Size="13px"></asp:TextBox> </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                    </asp:GridView>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label><br />
                <asp:Label ID="lblHint" runat="server" ForeColor="#009900"></asp:Label><br />
                <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
                    </asp:Panel>
               </div>
               </div>
            </div>
        </div>

    </div>
            <div class="content6">

            <div class="button1" >
                <asp:Button ID="btn_Delete" runat="server" Text="删除商品" OnClick="btn_Delete_Click" BackColor="lavenderblush" Font-Size="35px" />
            </div>
            <div class="button1" >
                <asp:Button ID="btn_Clear" runat="server" Text="清空购物车" OnClick="btn_Clear_Click" BackColor="lavenderblush" Font-Size="35px" />
            </div>
            <div class="button1" >
                <asp:Button ID="btn_ReDo" runat="server" Text="重新计算" OnClick="btn_ReDo_Click" BackColor="lavenderblush" Font-Size="35px" />
            </div>
            <div class="button1" >
                <asp:Button ID="btn_Total" runat="server" Text="结算" OnClick="btn_Total_Click" BackColor="lavenderblush" Font-Size="35px" />
            </div>
                <asp:Label ID="lblCart" runat="server"></asp:Label>
        </div>
        <a href="Product.aspx" class="btn1">返回</a>
</section>
</asp:Content>