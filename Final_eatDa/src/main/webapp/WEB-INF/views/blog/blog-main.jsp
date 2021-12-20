<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<style type="text/css">
	.blog-main__top{
  width:100%;
  height:300px;
  background: url('resources/images/blog-main.png') no-repeat;
  background-size: cover;
  overflow: hidden;
  display: table;
  border: none;
}

.blog-main__top-txt{
  color:white;
  opacity: 0.6;
  display: table-cell;
  vertical-align: bottom;
}

.blog-main__top-txt h1, .blog-main__top-txt h2{
  display: inline;
}

.blog-main__top-txt h1{
  font-weight: 700;
  font-size:120px;
  height:100px;
  line-height: 90px;
}

.blog-main__top-txt h2{
  margin-left: 350px;
  font-size: 15px;
}
</style>
<link href="resources/css/blog/blog-main.css" rel="stylesheet">

</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	<main class="blog-main">
    <!-- main img -->
    <div class="blog-main__top">
      <div class="blog-main__top-txt">
        <h1>eat다 블로그</h1>
        <h2>eatDa Blog</h2>
      </div>
    </div>

    <div class="blog-article">
      <!-- search box -->
      <div class="blog-article__searchbox">
        <form action="blog-detail.do" method="POST">
          <input type="hidden" name="command" value="searchBlog">
          <select class="blog-article__select" name="searchSelect">
            <option disabled selected>선택</option>
            <option value="title">제목</option>
            <option value="content">내용</option>
          </select>
          <input type="text" name="keyword">
          <input type="submit" value="검색">
          <input type="button" value="글쓰기" onclick="location.href='blog-write.do'">
        </form>
      </div>
    

	    <!-- blog list -->
	    <div class="blog-article__listbox">
	      <ul class="blog-article__list">
	        <li><a href="blog-detail.do">
	          <div class="blog-article__list-title">
	            <h3>블로그 제목 들어감</h3>
	            <i class="fas fa-heart"></i>
	          </div>
	          <div class="blog-article__list-content">
	            <p>블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중
	              블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중
	              블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중
	              블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중</p>
	          </div>
	          <div class="blog-article__list-img">
	            <img src="resources/images/blog-thumbnail.png">
	          </div>
	        </a></li>
	        <li><a href="blog-detail.do">
	          <div class="blog-article__list-title">
	            <h3>블로그 제목 들어감</h3>
	            <i class="fas fa-heart"></i>
	          </div>
	          <div class="blog-article__list-content">
	            <p>블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중
	              블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중
	              블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중
	              블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중</p>
	          </div>
	          <div class="blog-article__list-img">
	            <img src="resources/images/blog-thumbnail.png">
	          </div>
	        </a></li>
	        <li><a href="blog-detail.jsp">
	          <div class="blog-article__list-title">
	            <h3>블로그 제목 들어감</h3>
	            <i class="fas fa-heart"></i>
	          </div>
	          <div class="blog-article__list-content">
	            <p>블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중
	              블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중
	              블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중
	              블로그 내용 들어가는데 일단 내용이 없으니 아무거나 적어보는 것으로 하는중</p>
	          </div>
	          <div class="blog-article__list-img">
	            <img src="resources/images/blog-thumbnail.png">
	          </div>
	        </a></li>
	      </ul>
	
	      <ul class="blog-article__paging" id="paging">
	        <li><a href="#"><i class="fas fa-chevron-left fa-sm"></i></a></li>
	        <li><a href="#">1</a></li>
	        <li><a href="#">2</a></li>
	        <li><a href="#">3</a></li>
	        <li><a href="#">4</a></li>
	        <li><a href="#">5</a></li>
	        <li><a href="#"><i class="fas fa-chevron-right fa-sm"></i></a></li>
	      </ul>
	
	    </div>
    </div>
  </main>
	<div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>