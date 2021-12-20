<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		body{
		  margin:0;
		  padding:0;
		}
		
		.event-write__top{
		  width:100%;
		  height:300px;
		  background: url('resources/images/wine02.png') no-repeat;
		  background-size: cover;
		  overflow: hidden;
		  display: table;
		  border: none;
		  background-position: 5% 20%;
		}
		
		.event-write__top-txt{
		  color:white;
		  opacity: 0.5;
		  display: table-cell;
		  vertical-align: bottom;
		}
		
		.event-write__top h1, .event-write__top h2{
		  display: inline;
		}
		
		.event-write__top-txt h1{
		  font-weight: 700;
		  font-size:120px;
		  height:100px;
		  line-height: 105px;
		}
		
		.event-write__top-txt h2{
		  margin-left: 350px;
		  font-size: 15px;
		}
	</style>
  
  <link href="resources/css/event/event-write.css" rel="stylesheet">
  
  <!-- summernote -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> 
  <link href="resources/css/summernote/summernote-bs4.css" rel="stylesheet"> 
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
 


  <script type="text/javascript">
	//summernote
	$(document).ready(function() {
		$('#summernote').summernote({
			  height: 350,									// 에디터 높이
        width: 840,									  // 에디터 넓이
			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
        tabsize: 2,
			  lang: "ko-KR",								// 한글 설정
			  placeholder: '내용을 작성해주세요! 최대 2048자까지 쓸 수 있습니다 :) ',	//placeholder 설정
        prettifyHtml:false,
        popover: {
          image: [
           	['imageResize', ['resizeFull', 'resizeHalf', 'resizeQuarter', 'resizeNone']],
            ['float', ['floatLeft', 'floatRight', 'floatNone']],
            ['remove', ['removeMedia']],
            ['custom', ['imageTitle']],
          ],
        },
        toolbar: [
          // 글꼴 설정
          ['fontname', ['fontname']],
          // 글자 크기 설정
          ['fontsize', ['fontsize']],
          // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
          ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
          // 글자색
          ['color', ['forecolor','color']],
          //형광펜
          ['highlight', ['highlight']],
          // 줄간격
          ['height', ['height']],
          // 그림첨부, 링크만들기
          ['insert',['picture','link']],
          //이모지
          ['misc', ['emoji']],
          // 글머리 기호, 번호매기기, 문단정렬
          ['para', ['ul', 'ol', 'paragraph']],
          // 표만들기
          ['table', ['table']],
          // 확대해서보기, 도움말
          ['view', ['fullscreen', 'help']]
        ],
        // 추가한 글꼴
        fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','나눔 고딕','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
        // 추가한 폰트사이즈
        fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
		});
	});
</script>
</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
  <main class="event-write">
    <!-- main img -->
    <div class="event-write__top">
      <div class="event-write__top-txt">
        <h1>eat다 이벤트</h1>
        <h2>eatDa Event</h2>
      </div>
    </div>

    <!-- write content -->
    <div class="event-write__content">
      
      <!-- title -->
      <div class="event-write__content-title">
        <h2>새 글 작성</h2>
      </div>

			<!-- article -> summernote -->
      <div class="event-write__content-article">
        <form action="/write" method="post">
          <input type="text" name="title" placeholder="제목을 입력하세요.">
					<textarea class="summernote" id="summernote" name="editordata"></textarea>
					<input type="submit" name="write-submit-btn" value="작성 완료">
					<input type="button" name="write-cancel-btn" value="작성 취소" onclick="location.href='event.do'">
        </form>

      </div>

    </div>

  </main>
  <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>