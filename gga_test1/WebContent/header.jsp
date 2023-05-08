<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GGA_Test1</title>
<link rel="stylesheet" href="http://localhost:9000/gga_test1/css/gga.css"> <!-- gga.css -->
<script src="http://localhost:9000/gga_test1/js/gga_javascript.js"></script> <!-- gga_javascript.js -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<!-- 부트스트랩 -->
</head>
<style>
@media (min-width: 768px) {
  .container {
    width: 750px;
  }
}

@media (min-width: 992px) {
  .container {
    width: 1000px;
  }
}
</style>

<body>
	<!-- header -->
	<header>
		<div class="container">
			<div class="header_section1">
<!-- 				<div class="col-4">
		        	<a class="link-secondary" href="http://localhost:9000/gga_test1/index.jsp" target="_parent"></a>
		      	</div> -->
		      	
		      	<div class="header_logo">
		        	<!-- <a class="blog-header-logo" href="http://localhost:9000/gga_test1/index.jsp" target="_parent"> -->
		        	<a class="blog-header-logo" href="http://localhost:9000/gga_test1/index.jsp" target="_parent">
		        	<img src="http://localhost:9000/gga_test1/images/newlogo.png">
		        </a>
		      	</div>
		      	
		      <!-- 	<div class="col-4 d-flex justify-content-end align-items-center"  -->
		      	<div class="nav_menu1 d-flex justify-content-end" 
		     		 style="list-style-type:none;">
			        <li><a href="http://localhost:9000/gga_test1/login/login.jsp" target="_parent" 
			        	class="li1"><p>로그인</p></a></li>
					<li><a href="http://localhost:9000/gga_test1/join/join.jsp" target="_parent" 
						class="li1"><p>회원가입</p></a></li>
					<li><a href="http://localhost:9000/gga_test1/mypage/mypage.jsp" target="_parent" 
						class="li1"><p>마이페이지</p></a></li>
					<li><a href="#" class="li1"><p>고객센터</p></a></li>
		      </div>
			
		<!-- 	<div class="header_section2 nav-scroller py-1 mb-2"> -->
			<div class="nav_menu2 d-flex justify-content-end" style="list-style-type:none;">
				<!-- <nav class="nav d-flex justify-content-end"> -->
			      <li><a class="p-2 link-secondary" href="http://localhost:9000/gga_test1/movie/movie_menu.jsp" target="_parent">
			     <p>영화</p></a></li>
			      <li><a class="p-2 link-secondary" href="http://localhost:9000/gga_test1/order/order.jsp" target="_parent">
			      <p>예매</p></a></li>
		      	  <li class="nav-item dropdown">
		          <a class="p-2 link-secondary dropdown-toggle" href="#" role="button" 
		         	 data-bs-toggle="dropdown" aria-expanded="false">
		         	 <p>게시판</p></a>
			          <ul class="dropdown-menu">
			            <li><a class="dropdown-item" href="http://localhost:9000/gga_test1/notice/notice_list.jsp"
			            	target="_parent">공지사항</a></li>
			            <li><a class="dropdown-item" href="http://localhost:9000/gga_test1/board/board_list.jsp" 
			            	target="_parent">커뮤니티</a></li>
			            <li><a class="dropdown-item" href="http://localhost:9000/gga_test1/board/faq.jsp"
			            	target="_parent">FAQ</a></li>
			          </ul>
			     </li>
			      <li><a class="p-2 link-secondary" href="#">
			      <p>대관문의</p></a></li>
			      <li><a class="p-2 link-secondary" href="#">
			      <p>스토어</p></a></li>
			      <li><a class="p-2 link-secondary" href="#">
			   <p>이벤트</p>   
			      </a></li>
			      </div>
			      <div class="mov_search">
			      <form class="d-flex" role="search">
			          <input type="text" placeholder="영화 제목 검색">
			          <button type="button">검색</button>
			       </form>
			    <!-- </nav> -->
			     </div>
			</div>
			</div>
		<!-- </div> -->
	</header>
	<!-- header -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> <!-- 부트스트랩 -->
</body>
</html>