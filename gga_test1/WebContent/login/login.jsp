<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GGA_Test1</title>
<link rel="stylesheet" href="http://localhost:9000/gga_test1/css/gga.css"> <!-- gga.css -->
<script src="http://localhost:9000/mycgv_jsp/js/jquery-3.6.4.min.js"></script>
<script src="http://localhost:9000/gga_test1/js/gga_jsp_jquery.js"></script> <!-- gga_jquery.js -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> 
	<!-- 부트스트랩 -->
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
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
		<jsp:include page="../header.jsp" />
	</header>
	<!-- header -->
	
	
	<!-- content -->
	<div class="container">
		<section class="login">
				<h1 class="title">로그인</h1>
				<form name="loginForm" action="loginProc.jsp" method="post" >
					<ul>
						<li>
							<label>아이디</label>
							<input type="text" name="id" id="id">
						</li>
						<li>
							<label>비밀번호</label>
							<input type="password" name="pass" id="pass">
						</li>
						<li>
							<a href= "http://localhost:9000/test_gga/join/join.html">
							<button type="button" class="btn_style">회원가입</button></a>
							<button type="button" class="btn_style" id="btnLogin">로그인</button>
						</li>
						<li>
							<span><a href="#">아이디 찾기></a></span>
							<span><a href="#">비밀번호 찾기></a></span>
						</li>
						<li>
							<h5>간편로그인</h5>
							<%
								String clientId = "A2fCGBIb5qkHcJ1fiBuE";//애플리케이션 클라이언트 아이디값";
								String redirectURI = URLEncoder.encode("http://localhost:9000/test_gga/index.jsp", "UTF-8");
								SecureRandom random = new SecureRandom();
								String state = new BigInteger(130, random).toString();
								String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
								apiURL += "&client_id=" + clientId;
								apiURL += "&redirect_uri=" + redirectURI;
								apiURL += "&state=" + state;
								session.setAttribute("state", state);
							%>
							<a href="<%=apiURL%>"><img height="40" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>
						</li>
					</ul>
				</form>
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