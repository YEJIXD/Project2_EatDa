<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 부트스트랩 CDN 안쓰시는 아래 두 개 분들은 빼세요 -->
<link
	href="https://fonts.googleapis.com/css2?family=Cute+Font&family=IBM+Plex+Sans+KR:wght@200&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
.banner {
	background-image: url(resources/images/recipe/main-banner2.png);
	background-size: cover;
	width: 100%;
	margin: 0 auto;
	height: 280px;
	margin-bottom: 30px;
	padding-top: 180px;
	border-radius: 4px;
}

.page-navi {
	width: 100%;
	height: 20%;
	margin: 0 auto;
	margin-top: 1%;
	margin-bottom: 1%
}

.page-navi div span {
	color: rgb(148, 148, 32);
	font-size: larger;
}

.new-title {
	text-align: center;
}

.title-font {
	display: inline-block;
	margin-bottom: 58px;
	font-family: "Noto Serif KR", serif, Helvetica, "Helvetica Neue", Arial;
	font-style: normal;
	font-weight: 800;
	font-size: 27px;
	letter-spacing: 1px;
	text-align: center;
	color: rgb(147, 112, 98);
	margin-top: 3%;
	border-bottom: 1px solid;
}

.col-md-3 img {
	width: 100%;
}

.text-font {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	margin: 16px 0px 8px;
	font-style: normal;
	font-weight: normal;
	font-size: 15px;
	line-height: 10px;
	letter-spacing: -0.5px;
	color: rgb(97, 97, 97);
	text-align: right;
}

.block {
	width: 100%;
    margin: 0px 0px 5% 0px;
    line-height: normal;
}
<!-- 왜 안들어 가는거쥐-->
.block:nth-of-type(2n){
	background-color: #ffe38f;
}

.list_img{
	width: 50PX;
	height: 50px;
}
.heart{
	width: 20px;
	height: 20px;
}
</style>

<title>Insert title here</title>

<script type="text/javascript">
	$(document).ready(
			function() {
				//검색바 사이즈 조절
				$('#search-bar').click(function() {
					$('.search-box-narrow').css({
						"padding-left" : "31%"
					});
					$('#search-bar').animate({
						width : '55%'
					}, 200);
				});
				$('#search-bar').focusout(function() {
					$('#search-bar').css({
						'width' : '30%'
					}).val('');
					$('.search-box-narrow').css({
						'padding-left' : '42%'
					});
				});

				//배너 사진 변경
				let index = 2;
				window.setInterval(function() {
					if (index == 4) {
						index = 1;
					}
					$('.banner').animate(
							{
								opacity : 0
							},
							800,
							function() {
								$('.banner').css(
										'background-image',
										'url(resources/images/recipe/main-banner'
												+ index + '.png)');
							});
					$('.banner').animate({
						opacity : 1
					}, 800);
					index++;
				}, 7000);

			});
</script>

</head>
<body>
<body>
	<div id="header">
		<%@ include file="WEB-INF/views/common/header.jsp"%>
	</div>

	<div class="container" style="height: fit-content;">

		<!-- 배너 -->
		<div class="row" style="margin-top: 10px;">
			<div class="col-md-12 banner"></div>
		</div>

		<!-- 최신레시피 -->
		<div class="new-recipe block">
			<div class="row">
				<div class="col-md-12 new-title">
					<p class="title-font"> NEW RECIPE </p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="new-img">
						<img src="resources/images/recipe/eggroll.png">
					</div>
					<p class="text-font">계란말이</p>
				</div>
				<div class="col-md-3">
					<div class="new-img">
						<img src="resources/images/recipe/eggroll.png">
					</div>
					<p class="text-font">계란말이</p>
				</div>
				<div class="col-md-3">
					<div class="new-img">
						<img src="resources/images/recipe/eggroll.png">
					</div>
					<p class="text-font">계란말이</p>
				</div>
				<div class="col-md-3">
					<div class="new-img">
						<img src="resources/images/recipe/eggroll.png">
					</div>
					<p class="text-font">계란말이</p>
				</div>
			</div>
		</div>

		<!-- 실시간 검색순위 -->
		<div class="search-rank block">
			<div class="row">
				<div class="col-md-6 new-title">
					<p class="title-font"> REAL-TIME POPULAR RECIPE </p>
				</div>
				<div class="col-md-6">
					<table class="recipe_rank">
						<col width="100px">
						<col width="500px">

						<tr>
							<th>순위</th>
							<th>요리명</th>
						</tr>
						<tr>
							<td>1</td>
							<td>
								<a href="#">
									<img class="list_img" src="resources/images/recipe/eggroll.png">계란말이
								</a> 
								<a href="#">
									<img class="heart" src="resources/images/recipe/heart.png">
								</a>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>
								<a href="#">
									<img class="list_img" src="resources/images/recipe/eggroll.png">계란말이
								</a> 
								<a href="#">
									<img class="heart" src="resources/images/recipe/heart.png">
								</a>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>
								<a href="#">
									<img class="list_img" src="resources/images/recipe/eggroll.png">계란말이
								</a> 
								<a href="#">
									<img class="heart" src="resources/images/recipe/heart.png">
								</a>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		
		<!-- (회원) 추천 레시피 -->
		<div class="recommend-menu block">
			<div class="row">
				<div class="col-md-6">
					<table class="recipe_rank">
						<col width="100px">
						<col width="500px">

						<tr>
							<th>순위</th>
							<th>요리명</th>
						</tr>
						<tr>
							<td>1</td>
							<td>
								<a href="#">
									<img class="list_img" src="resources/images/recipe/eggroll.png">계란말이
								</a> 
								<a href="#">
									<img class="heart" src="resources/images/recipe/heart.png">
								</a>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>
								<a href="#">
									<img class="list_img" src="resources/images/recipe/eggroll.png">계란말이
								</a> 
								<a href="#">
									<img class="heart" src="resources/images/recipe/heart.png">
								</a>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>
								<a href="#">
									<img class="list_img" src="resources/images/recipe/eggroll.png">계란말이
								</a> 
								<a href="#">
									<img class="heart" src="resources/images/recipe/heart.png">
								</a>
							</td>
						</tr>
					</table>
				</div>
				<div class="col-md-6 new-title">
					<p class="title-font"> RECOMMEND-MENU </p>
				</div>
			</div>
		</div>
		
		
		
		<!-- 마켓 -->
		<div class="market block">
			<div class="row">
				<div class="col-md-12 new-title">
					<p class="title-font"> MARKET </p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="new-img">
						<img src="resources/images/recipe/eggroll.png">
					</div>
					<p class="text-font">계란말이</p>
				</div>
				<div class="col-md-3">
					<div class="new-img">
						<img src="resources/images/recipe/eggroll.png">
					</div>
					<p class="text-font">계란말이</p>
				</div>
				<div class="col-md-3">
					<div class="new-img">
						<img src="resources/images/recipe/eggroll.png">
					</div>
					<p class="text-font">계란말이</p>
				</div>
				<div class="col-md-3">
					<div class="new-img">
						<img src="resources/images/recipe/eggroll.png">
					</div>
					<p class="text-font">계란말이</p>
				</div>
			</div>
		</div>

	</div>


	<div id="footer">
		<%@ include file="WEB-INF/views/common/footer.jsp"%>
	</div>

</body>
</html>