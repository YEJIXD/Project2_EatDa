<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin_Report</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="resources/admin/css/admin_styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script type="text/javascript">
        // 전체 선택 / 해제
	        function selectAll(selectAll)  {
	        	  const checkboxes = document.getElementsByName('chkBtn');
	        	  
	        	  checkboxes.forEach((checkbox) => {
	        	    checkbox.checked = selectAll.checked;
	        	  })
	        	}
        
        //Modal 실행
	        $(function(){
	        	$("a").click(function(){
	        		$(".modal").fadeIn();
	        	});
	        });
	        
	        $(".modal-content").click(function(){
	        	$(".modal").fadeOut();
	        });
	
	        
		//Modal Close 기능
		    function close_pop(flag) {
		         $('#myModal').hide();
		    };
		    
		// select option 값 변경
		function changeSelect(e){
			const text = e.options[e.selectedIndex].text;	//선택된 option의 text 값 가져오기
			console.log(e.options);
			
			document.getElementById('selectResult').innerText = text;
		}
        </script>
        
        <style>
			button{
				float:right;
				border : none;
				margin-right:1%;
				width:80px;
				height:30px;
			}
            
	        /* Modal (background) */
	        .modal {
	            display: none; /* Hidden by default */
	            position: fixed; /* Stay in place */
	            z-index: 1; /* Sit on top */
	            left: 0;
	            top: 0;
	            width: 100%; /* Full width */
	            height: 100%; /* Full height */
	            overflow: auto; /* Enable scroll if needed */
	            background-color: rgb(0,0,0); /* Fallback color */
	            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	        }
	    
	        /* Modal Content/Box */
	        .modal-content {
	            background-color: #fefefe;
	            margin: 15% auto; /* 15% from the top and centered */
	            padding: 20px;
	            border: 1px solid #888;
	            width: 30%; /* Could be more or less, depending on screen size */                          
	        }
			/*nav탭 hover 시, content 변경*/
	        .home:hover span{
	        	display:none;
	        }
	        .home:hover:after{
	        	content:"관리자 메인";
	        }
	        /*게시글 관리*/
	        .post:hover span{
	        	display:none;
	        }
	        .post:hover:after{
	        	content:"게시글 관리";
	        }
	        /*레시피 관리*/
	        .recipe:hover span{
	        	display:none;
	        }
	        .recipe:hover:after{
	        	content:"레시피 관리";
	        }
	        /*상품 관리*/
	        .product:hover span{
	        	display:none;
	        }
	        .product:hover:after{
	        	content:"상품 관리";
	        }
	        /*주문 관리*/
	        .order:hover span{
	        	display:none;
	        }
	        .order:hover:after{
	        	content:"주문 관리";
	        }
	        /*회원 관리*/
	        .user:hover span{
	        	display:none;
	        }
	        .user:hover:after{
	        	content:"회원 관리";
	        }
	        /*신고 관리*/
	        .report:hover span{
	        	display:none;
	        }
	        .report:hover:after{
	        	content:"신고 관리";
	        }
        </style>
    </head>
    
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark alert-warning justify-content-between">
            <a class="navbar-brand ps-3" href="index.jsp"><img src="resources/images/logo.png" style="width: 50%; height:30%; float:left;"></a>
            
            <div>
	            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars" style="color:black;"></i></button>
	            
	            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
	                <li class="nav-item dropdown">
	                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color:black;"><i class="fas fa-user fa-fw" style="color:black;"></i></a>
	                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
	                        <li><a class="dropdown-item" href="#!">LogOut</a></li>
	                    </ul>
	                </li>
	            </ul>
            </div>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion alert-warning"id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav" style="text-align: center;">
                            <div class="sb-sidenav-menu-heading">
                                <img src="resources/admin/assets/img/profile_admin.png" style="width: 60%; height: 60%;">
                                <br>
                                <a href="#" style="text-decoration:none; color: black;">eatDa_admin 님<br>반갑습니다 : )</a>
                            </div>
                            <a class="nav-link home" href="adminMain.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-home" aria-hidden="true"></i></div>
                                <span>HOME</span>
                            </a>

                            <a class="nav-link post" href="adminPostReply.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-bars" aria-hidden="true"></i></div>
                                <span>Post</span>
                            </a>

                            <a class="nav-link recipe" href="adminRecipe.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-book" aria-hidden="true"></i></div>
                                <span>Recipe</span>
                            </a>

                            <a class="nav-link product" href="adminProductList.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div>
                                <span>Product</span>
                            </a>

                            <a class="nav-link order" href="adminOrder.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
                                <span>Order</span>
                            </a>

                            <a class="nav-link user" href="adminUser.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-user" aria-hidden="true"></i></div>
                                <span>User</span>
                            </a>

                            <a class="nav-link report" href="adminReport.do" style="color: rgb(224, 179, 57);">
                                <div class="sb-nav-link-icon"><i class="fa fa-ban" aria-hidden="true"></i></div>
                                <span>Report</span>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <br>
                    <div class="container-fluid px-4">
                        <h1 class="title_tab">신고 관리</h1>
                        <br><br>
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table me-1"></i> 신고 관리</div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <col width="1%">
                                    <thead>
                                    <tr></tr>
                                        <tr>
                                            <th><input type="checkbox" name="chkBtn" value="selectall" onclick="selectAll(this)"></th>
                                            <th class="col-sm-1">신고인 ID</th>
                                            <th class="col-md-1">신고 대상 ID</th>
                                            <th class="col-md-2">신고 내용</th>
                                            <th class="col-md-2">신고 댓글</th>
                                            <th class="col-md-1">처리 현황</th>
                                            <th class="col-md-1">패널티</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                	<c:forEach items="${reportList}" var="dto">
			                        		<tr>
			                                	<td style="vertical-align:middle;"><input type="checkbox" name="chkBtn" value="${dto.report_no}"></td>
			                                	<td style="vertical-align:middle;"><a style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold; cursor:pointer;">${dto.reporter}</a></td>
			                                    <td style="vertical-align:middle;">${dto.reported}</td>
			                                    <td style="vertical-align:middle;">${dto.report_content}</td>
			                                    <td style="vertical-align:middle;">${dto.reply_content}</td>
			                                    <td style="vertical-align:middle;">
			                                    	<select id="tmpSelect" name="tmpSelect" onchange="changeSelect(this.form)">
			                                    		<option value="wait">처리 대기</option>
			                                    		<option value="finish">처리 완료</option>
			                                        </select>
			                                    </td>
			                                    <td style="vertical-align:middle;">1회</td>
			                                </tr>
			                        	</c:forEach>
                                    </tbody>
                                    <tr></tr>
                                    <tr>
                                        <td colspan="7">
                                            <button type="button" onclick="" value="delete">삭 제</button>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        
        <!-- Modal -->
        <div id="myModal" class="modal">
 
	      <!-- Modal content -->
	      <div class="modal-content">
	                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">신고 내용</span></b></span></p>
	                <p style="text-align: center; line-height: 1.5;"><br /></p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>신고인 ID : </b></span>OksusuS2</p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>신고 대상 ID : </b></span>XD</p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>신고 내용 : </b></span>기분이 나빠요.</p>
	                <p style="text-align: center; line-height: 1.5;"><span style="font-size: 14pt;"><br /></span></p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>신고 댓글 : </b></span>메롱</p>
	                <p style="text-align: center; line-height: 1.5;"><span style="font-size: 14pt;"><br /></span></p>
	                <p style="text-align: left; line-height: 1.5;"><br /></p>
	                <p><br /></p>
	            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onclick="close_pop();">
	                <span class="pop_bt" style="font-size: 13pt;" >
	                     닫기
	                </span>
	            </div>
	      </div>
	 
	    </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="resources/admin/js/datatables-simple-demo.js"></script>
       
        
    </body>
</html>
