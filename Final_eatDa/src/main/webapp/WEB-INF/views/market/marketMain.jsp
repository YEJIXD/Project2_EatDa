<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>marketMain</title>
	<style type="text/css">
        .body {
            height: fit-content;
            width: 60%;
            margin: 0 auto;
        }

        .top-section {
            width: 100%;
        }

        .search-box {
            margin-top: 10px;
            position:relative;
        }
        .search-box i {
        	position:absolute; top:12px; color:gray;
        	right:28%;
        }
        .search-box i:hover {
        	cursor:pointer;
        }

        #search-bar {
            width: 500px;
            padding-left:20px;
            height: 40px;
            border: 1px solid lightblue;
            border-radius:25px;
        }

        .tag-box {
            width: 70%;
            margin: 0 auto;
            margin-top: 20px;
        }

        .tag {
            width: 50px;
            height: 30px;
        }
    </style>

    <style>
        .product-section {
            margin-top: 50px;
            height: 100%
        }

        .product-row {
            margin-top: 10%;
            margin-bottom: 10%;
            height: 450px;
        }

        .product-card {
            border-bottom:1px solid;
            width: 30%;
            float: left;
            margin-left: 10px;
            margin-right: 10px;
        }

        .p-img {
            width: 90%;
            height: 90%;
        }

        .short-desc {
            font-size:small;
            color: olive;
        }

        .product-title {
            font-weight: bold;
            font-size: larger;
        }

        .product-price {
            font-size: larger;
            font-weight: bold;
        }

        .product-margin {
            margin-left: 3%;
        }

        .shop-cart {
            width: 15%;
            height: 70%;
            margin-left: 80%;

        }
    </style>
    <style type="text/css">
        .paging-section {
            width: 40%;
            height: auto;
            margin: 0 auto;
            margin-top: 10%;
            margin-bottom: 10%;
        }
       
        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
        }
        .pagination a.active {
            background-color: #4CAF50;
            color: white;
        }
        .pagination a:hover:not(.active) {background-color: #ddd;}
    </style>
    
    <style type="text/css">
        .banner {
            width: 100%;
            background-image: url(resources/images/market/banner.png);
            height: 250px;
            margin-bottom: 30px;
            padding-top: 100px;
        }
        .banner-content {
            margin-left: 30%;
            width: 30%;
            height: 10%;
        }
        .banner-content span {
            font-size: 23px;
            letter-spacing: 3px;
            font-weight: bolder;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>
<body style="min-width:1400px;">
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	
    <div class="body">
    	<div style="width:100%; height:20%;  margin:0 auto; margin-top:3%; margin-bottom:3%">
	  		<span style="color:rgb(148, 148, 32); font-size:larger;">
	  			HOME > MARKET
	  		</span>
  		</div>
    
    	<!-- 베너 -->
    	<div class="banner">   
            <div class="banner-content">
                <span>신선하고 건강한 음식은</span><br>
                &nbsp;<span><span style="color: olive;">EatDa</span> 와 함께!</span><br>
                <span>우리 가족 건강 챙겨요!</span>
            </div>
        </div>
    
        <!-- 검색, 키워드 버튼 -->
        <div class="top-section" align="center">
            <div class="search-box">
                <input type="text" name="" id="search-bar">
                <i class="fas fa-search"></i>
            </div>
            <div class="tag-box">
                <button class="tag">양식</button>
                <button class="tag">한식</button>
                <button class="tag">중식</button>
                <button class="tag">음식</button>
                <button class="tag">음식</button>
                <br>
                <button class="tag">식신</button>
                <button class="tag">로드</button>
                <button class="tag">로드</button>
            </div>
        </div>

        <!-- 상품 리스트 -->
        <div class="product-section">
            <!--상품 리스트 한 줄-->
            <div class="product-row">
                <!--상품 카드-->
                <div class="product-card" style="margin-left:21px;">
                    <div class="product-img" align="center">
                        <img src="resources/images/market/shot.png" alt="img" class="p-img">
                    </div>
                    <div class="product-desc">
                        <div class="product-margin">
                            <span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
                        </div>
                        <div class="product-margin">
                            <span class="product-title">소갈비찜~1인분입니다~</span><br>
                        </div>
                        <div class="product-margin" style="margin-top: 20px; margin-bottom:15px;">
                            <span class="product-price">9999999999원</span>
                            <img src="resources/images/market/shop.png" alt="장바구니" class="shop-cart">
                        </div>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-img" align="center">
                  	  	<img src="resources/images/market/shot.png" alt="img" class="p-img">
                    </div>
                    <div class="product-desc">
                        <div class="product-margin">
                            <span class="short-desc">short-desc</span><br>
                        </div>
                        <div class="product-margin">
                            <span class="product-title">title</span><br>
                        </div>
                        <div class="product-margin" style="margin-top: 20px; margin-bottom:15px;">
                            <span class="product-price">price</span>
                            <img src="resources/images/market/shop.png" alt="장바구니" class="shop-cart">
                        </div>
                    </div>
                </div>
                <div class="product-card" style="margin-right:21px;">
                    <div class="product-img" align="center">
                    	<img src="resources/images/market/shot.png" alt="img" class="p-img">
                    </div>
                    <div class="product-desc">
                        <div class="product-margin">
                            <span class="short-desc">short-desc</span><br>
                        </div>
                        <div class="product-margin">
                            <span class="product-title">title</span><br>
                        </div>
                        <div class="product-margin" style="margin-top: 20px; margin-bottom:15px;">
                            <span class="product-price">price</span>
                            <img src="resources/images/market/shop.png" alt="장바구니" class="shop-cart">
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="product-row">
                <!--상품 카드-->
                <div class="product-card" style="margin-left:21px;">
                    <div class="product-img" align="center">
                        <img src="resources/images/market/shot.png" alt="img" class="p-img">
                    </div>
                    <div class="product-desc">
                        <div class="product-margin">
                            <span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
                        </div>
                        <div class="product-margin">
                            <span class="product-title">소갈비찜~1인분입니다~</span><br>
                        </div>
                        <div class="product-margin" style="margin-top: 20px; margin-bottom:15px;">
                            <span class="product-price">9999999999원</span>
                            <img src="resources/images/market/shop.png" alt="장바구니" class="shop-cart">
                        </div>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-img" align="center">
                  	  	<img src="resources/images/market/shot.png" alt="img" class="p-img">
                    </div>
                    <div class="product-desc">
                        <div class="product-margin">
                            <span class="short-desc">short-desc</span><br>
                        </div>
                        <div class="product-margin">
                            <span class="product-title">title</span><br>
                        </div>
                        <div class="product-margin" style="margin-top: 20px; margin-bottom:15px;">
                            <span class="product-price">price</span>
                            <img src="resources/images/market/shop.png" alt="장바구니" class="shop-cart">
                        </div>
                    </div>
                </div>
                <div class="product-card" style="margin-right:21px;">
                    <div class="product-img" align="center">
                    	<img src="resources/images/market/shot.png" alt="img" class="p-img">
                    </div>
                    <div class="product-desc">
                        <div class="product-margin">
                            <span class="short-desc">short-desc</span><br>
                        </div>
                        <div class="product-margin">
                            <span class="product-title">title</span><br>
                        </div>
                        <div class="product-margin" style="margin-top: 20px; margin-bottom:15px;">
                            <span class="product-price">price</span>
                            <img src="resources/images/market/shop.png" alt="장바구니" class="shop-cart">
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="product-row">
                <!--상품 카드-->
                <div class="product-card" style="margin-left:21px;">
                    <div class="product-img" align="center">
                        <img src="resources/images/market/shot.png" alt="img" class="p-img">
                    </div>
                    <div class="product-desc">
                        <div class="product-margin">
                            <span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
                        </div>
                        <div class="product-margin">
                            <span class="product-title">소갈비찜~1인분입니다~</span><br>
                        </div>
                        <div class="product-margin" style="margin-top: 20px; margin-bottom:15px;">
                            <span class="product-price">9999999999원</span>
                            <img src="resources/images/market/shop.png" alt="장바구니" class="shop-cart">
                        </div>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-img" align="center">
                  	  	<img src="resources/images/market/shot.png" alt="img" class="p-img">
                    </div>
                    <div class="product-desc">
                        <div class="product-margin">
                            <span class="short-desc">short-desc</span><br>
                        </div>
                        <div class="product-margin">
                            <span class="product-title">title</span><br>
                        </div>
                        <div class="product-margin" style="margin-top: 20px; margin-bottom:15px;">
                            <span class="product-price">price</span>
                            <img src="resources/images/market/shop.png" alt="장바구니" class="shop-cart">
                        </div>
                    </div>
                </div>
                <div class="product-card" style="margin-right:21px;">
                    <div class="product-img" align="center">
                    	<img src="resources/images/market/shot.png" alt="img" class="p-img">
                    </div>
                    <div class="product-desc">
                        <div class="product-margin">
                            <span class="short-desc">short-desc</span><br>
                        </div>
                        <div class="product-margin">
                            <span class="product-title">title</span><br>
                        </div>
                        <div class="product-margin" style="margin-top: 20px; margin-bottom:15px;">
                            <span class="product-price">price</span>
                            <img src="resources/images/market/shop.png" alt="장바구니" class="shop-cart">
                        </div>
                    </div>
                </div>
            </div>

        <!--페이징 구현-->
        <div class="paging-section">
            <div class="pagination" align="center">
                <a href="#">&laquo;</a>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#">&raquo;</a>
            </div>
        </div>
    </div>
    </div>
	<div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>