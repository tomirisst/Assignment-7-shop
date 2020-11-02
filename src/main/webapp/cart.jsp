<%--
  Created by IntelliJ IDEA.
  User: Zhansaya
  Date: 02.11.2020
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%
    Cookie[] ck = request.getCookies();
    Boolean here = false;
    for (Cookie c:ck) {
        if (!(c.getName().equals("loggedIn") && c.getValue().equals("true"))){
            response.sendRedirect("index.jsp");
        }
    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <title>Cart</title>
    <script>
        function selectItem(item) {
            item = $(item).children('h6').text()
            $.ajax({
                url: 'shopUpdate',
                type: "POST",
                data: {
                    item: item
                }, accepts: "application/json; charset=utf-8",
                success: function (data) {
                    $(".list").empty();
                    if (data.msg == "error") {
                        $('.list').append("<div>Error</div>");
                    } else {
                        var res = data;
                        for (let i = 0; i < data.length; i++) {
                            $(".list").append(
                                "<div>" + res[i] + "</div>"
                            );
                        }
                    }
                }
            });
        }
    </script>
</head>
<body>
<style>
    body {
        background-image: url("https://s53.radikal.ru/i141/1103/26/5625ab6b3fe1.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }

    .fancy-btn {
        display:inline-block;
        position:relative;
        padding:10px 20px;
        border:2px solid white;
        color:white;
        font-family: 'Roboto', sans-serif;
        font-style:italic;
        font-size:30px;
        text-decoration:none;
        margin:20px auto;
        opacity:1;
        transition: color 0.4s
    }
    .fancy-btn:after{
        content:" ";
        border:2px solid rgba(0,0,0,0);
        display:inline-block;
        width:100%;
        height:100%;
        position:absolute;
        top:0;
        left:0;
        right:0;
        bottom:0;
        margin:auto;
        transition:all 0.4s;
    }
    .fancy-btn:hover{
        color:#eee
    }
    .fancy-btn:hover:after{
        border:2px solid #fda;
        width: calc(100% - 10px);
        height: calc(100% + 10px);
    }
    #btn-twtr{
        clear:both;
        color:rgb(255, 255, 255);
        border:2px solid;
        border-radius:3px;
        text-align:center;
        text-decoration:none;
        display:block;
        font-family: 'Roboto', sans-serif;
        font-size:14px;
        width:13em;
        padding:5px 10px;
        font-weight:600;
        margin:90px auto;
        background:rgba(0,0,0,0.2);
        box-shadow:0 0 0px 3px rgba(0,0,0,0.2);
        opacity:0.6
    }#btn-twtr:hover{color:#fff;opacity:1}
</style>

<div class="shop">
    <h1 style="color:white; font-family: 'Roboto', sans-serif; font-style:italic;">Sport Items</h1>
    <div class="category" style="display: flex; flex-direction: row">
        <div class="item" id="item-dumbbells">
            <img src="https://i.insider.com/5e8247562ff83953b63efa46?width=1100&format=jpeg&auto=webp" width="450" height="300">
            <h6 style="font-size: 1.2em; color: white">Dumbbells</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-dumbbells')">
                <input type="button" class="cart" >Add to cart
            </form>
        </div>
        <div class="item" id="item-mat">
            <img src="https://robinzon.by/upload/iblock/18f/71uk_GeQ14L._SL1200_34743.1461082062.1280.1280.jpg" width="450" height="300">
            <h6 style="font-size: 1.2em; color: white">Yoga Mat</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-mat')">
                <input type="button" >Add to cart
            </form>
        </div>
        <div class="item" id="item-hoop">
            <img src="https://www.tunturi.org/website/Accessoires/14TUSFU188_1.jpg" width="450" height="300">
            <h6 style="font-size: 1.2em; color: white">Hoop</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-hoop')">
                <input type="button" >Add to cart
            </form>
        </div>
    </div>
</div>

<div class="furniture">
    <h1 style="color:white; font-family: 'Roboto', sans-serif; font-style:italic;">Furniture</h1>
    <div class="category" style="display: flex; flex-direction: row">
        <div class="item" id="item-sofa">
            <img src="https://images.contentful.com/5de70he6op10/7KotRtmFAvP7OWLTE7PHjH/93bacf07d554c2f56531e16af54a3cd4/FurnitureGateway_03_sectionals.jpg" width="450" height="300">
            <h6 style="font-size: 1.2em; color: white">Sofa</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-sofa')">
                <input type="button" class="cart"  >Add to cart
            </form>
        </div>
        <div class="item" id="item-table">
            <img src="https://apicms.thestar.com.my/uploads/images/2020/02/21/570850.jpg" width="450" height="300">
            <h6 style="font-size: 1.2em; color: white">Table and Two Chairs</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-table')">
                <input type="button" >Add to cart
            </form>
        </div>
        <div class="item" id="item-kitchen">
            <img src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/how-to-whitewash-furniture-1555616350.jpg?crop=1.00xw:0.386xh;0,0.445xh&resize=1200:*" width="450" height="300">
            <h6 style="font-size: 1.2em; color: white">Kitchen</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-kitchen')">
                <input type="button" >Add to cart
            </form>
        </div>
    </div>
</div>

<div class="gadgets">
    <h1 style="color:white; font-family: 'Roboto', sans-serif; font-style:italic;">Gadgets</h1>
    <div class="category" style="display: flex; flex-direction: row">
        <div class="item" id="item-samsung">
            <img src="https://www.log.com.tr/wp-content/uploads/2020/09/Samsung-Galaxy-Z-Fold-2-02.jpg" width="450" height="300">
            <h6 style="font-size: 1.2em; color: white">Samsung Galaxy Z Fold</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-samsung')">
                <input type="button" class="cart"  >Add to cart
            </form>
        </div>
        <div class="item" id="item-huawei">
            <img src="https://shop.ee.co.uk/content/dam/everything-everywhere/images/SHOP/Devices/huawei/huawei-mate20-pro/Huawei_Mate_20Pro_Black_16x9_1270x600_feature4.jpg.eeimg.640.360.medium.jpg/1539088306445.jpg" width="500" height="300">
            <h6 style="font-size: 1.2em; color: white">Huawei P30</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-huawei')">
                <input type="button" >Add to cart
            </form>
        </div>
        <div class="item" id="item-iphone">
            <img src="https://www.notebookcheck-ru.com/fileadmin/Notebooks/News/_nc3/iPhone_12_black.jpg" width="400" height="300">
            <h6 style="font-size: 1.2em; color: white">iPhone 12</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-iphone')">
                <input type="button" >Add to cart
            </form>
        </div>
    </div>
</div>

<div class="clothes">
    <h1 style="color:white; font-family: 'Roboto', sans-serif; font-style:italic;">Tranding Bags</h1>
    <div class="category" style="display: flex; flex-direction: row">
        <div class="item" id="item-prada1">
            <img src="https://i.pinimg.com/originals/ca/b8/fa/cab8fa02e93f2c12591e51766616a41f.jpg" width="450" height="300">
            <h6 style="font-size: 1.2em; color: white">Freja Beha</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-prada1')">
                <input type="button" >Add to cart</input>
            </form>
        </div>
        <div class="item" id="item-prada2">
            <img src="https://4.bp.blogspot.com/-x9qMtEg-Smg/XIhBdNrStDI/AAAAAAACYnQ/L4qphgvqsyU6Cg2QZ0WtDBwta7JdynJdACLcBGAs/s1600/Prada%2BSpring%2BSummer%2B2019%2B5.jpg" width="450" height="300">
            <h6 style="font-size: 1.2em; color: white">La Maison</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-prada2')">
                <input type="button" >Add to cart</input>
            </form>
        </div>
        <div class="item" id="item-prada3">
            <img src="https://tomandlorenzo.com/wp-content/uploads/2019/01/Prada-Spring-2019-Ad-Campaign-Tom-Lorenzo-Site-9.jpg" width="450" height="300">
            <h6 style="font-size: 1.2em; color: white">Tom Lorenzo</h6>
            <form class="fancy-btn cart" style="color: white; font-size: 1.2em; margin-top: 0px;" onclick="selectItem('#item-prada3')">
                <input type="button" >Add to cart</a>
            </form>
        </div>
    </div>
    <div>
        <h2 style="color: darkred; font-size: 2em; margin-top: 0px;">In your Cart:</h2></div>
</div>

<div class="list" style="color: white; font-size: 1.2em; margin-top: 0px;">


</div>
<form action="review.jsp" >
    <button type="submit" style="background-color: darkred; color: white; border: 1px solid transparent;
    border-radius: .25rem; padding: .7rem 1rem; line-height: 1.3rem; float: left; margin-top: 20px">Buy</button>
</form>
</body>
</html>

