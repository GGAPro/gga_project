<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GGA_Test1</title>
<link rel="stylesheet" href="http://localhost:9000/gga_test1/css/gga.css"> <!-- gga.css -->
<script src="http://localhost:9000/gga_test1/js/gga_javascript.js"></script> <!-- gga_javascript.js -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> 
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
section.board table {
		margin:auto;
} 

table tr:first-child {
	border-top:1px solid white;
	border-right:1px solid white;
	border-left:1px solid white;
	text-align:right;
}

table tr:last-child {
	border:1px solid white;
}

table tr:last-child nav ul {
	margin-top:30px;
	justify-content:center;
}

table tr{
	text-align:center;
}

table td:nth-child(2){
	text-align:left;
}

img {
	width:95px;
	height:40px;
}
</style>

<body>
	<!-- header -->
	<header>
		<jsp:include page="../header.jsp" />
	</header>
	<!-- header -->
	
	
	<!-- content -->
	<div class="container text-center">
		<section class="board">
			<h1 class="title">게시판</h1>
			<table class="table table-bordered" style="width: 90%;">
				<tr>
					<td colspan="5">
						<a href="board_write.jsp">
							<img src="../images/writebtn.png">
						</a>
					</td>
				</tr>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>조회수</th>
					<th>작성자</th>
					<th>작성일자</th>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="board_content.jsp">스즈메 문단속 재밌어요~^^</a></td>
					<td>123</td>
					<td>hong1234</td>
					<td>2023-04-10</td>
				</tr>
				<tr>
					<td>2</td>
					<td>스즈메 문단속 재밌어요~^^</td>
					<td>123</td>
					<td>hong1234</td>
					<td>2023-04-10</td>
				</tr>
				<tr>
					<td>3</td>
					<td>스즈메 문단속 재밌어요~^^</td>
					<td>123</td>
					<td>hong1234</td>
					<td>2023-04-10</td>
				</tr>
				<tr>
					<td>4</td>
					<td>스즈메 문단속 재밌어요~^^</td>
					<td>123</td>
					<td>hong1234</td>
					<td>2023-04-10</td>
				</tr>
				<tr>
					<td>5</td>
					<td>스즈메 문단속 재밌어요~^^</td>
					<td>123</td>
					<td>hong1234</td>
					<td>2023-04-10</td>
				</tr>
				<tr>
					<td>6</td>
					<td>스즈메 문단속 재밌어요~^^</td>
					<td>123</td>
					<td>hong1234</td>
					<td>2023-04-10</td>
				</tr>
				<tr>
					<td>7</td>
					<td>스즈메 문단속 재밌어요~^^</td>
					<td>123</td>
					<td>hong1234</td>
					<td>2023-04-10</td>
				</tr>
				<tr>
					<td>8</td>
					<td>스즈메 문단속 재밌어요~^^</td>
					<td>123</td>
					<td>hong1234</td>
					<td>2023-04-10</td>
				</tr>
				<tr>
					<td>9</td>
					<td>스즈메 문단속 재밌어요~^^</td>
					<td>123</td>
					<td>hong1234</td>
					<td>2023-04-10</td>
				</tr>
				<tr>
					<td>10</td>
					<td>스즈메 문단속 재밌어요~^^</td>
					<td>123</td>
					<td>hong1234</td>
					<td>2023-04-10</td>
				</tr>
				<tr>
					<td colspan="5">
					<nav aria-label="Page navigation example">
					  <ul class="pagination">
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span></a>
							</li>
							    <li class="page-item"><a class="page-link" href="#">1</a></li>
							    <li class="page-item"><a class="page-link" href="#">2</a></li>
							    <li class="page-item"><a class="page-link" href="#">3</a></li>
							    <li class="page-item">
							 <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
					</td>
				</tr>
			</table>
		</section>
	</div>
	<!-- content -->


	<!-- footer -->
	<footer>
		<iframe src="http://localhost:9000/gga_test1/footer.jsp"
			scrolling="no" width="100%" height="600px" frameborder=0></iframe>	
	</footer>
	<!-- footer -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK
	/7HAuoJl+0I4" crossorigin="anonymous"></script> <!-- 부트스트랩 -->
</body>
</html>