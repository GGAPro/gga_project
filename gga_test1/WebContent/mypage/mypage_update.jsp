<%@ page import = "com.gga.vo.MemberVo" %>
<%@ page import = "com.gga.dao.MemberDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
	String mid = request.getParameter("mid");
	MemberDao memberDao = new MemberDao();
	MemberVo memberVo = memberDao.select(mid);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 내 정보 수정</title>
<link rel="stylesheet" href="http://localhost:9000/gga_test1/css/gga.css">
<script src= "../js/gga_javascript.js"></script>
</head>
<body>
	<!-- Header -->
	<iframe src= "http://localhost:9000/gga_test1/header.jsp" scrolling= "no" width= "100%" height= "149px" frameborder= 0></iframe>
	<!-- Header -->
	
	<!-- Content -->
	<div class= "content">
		<section class= "mp_update">
			<h1 class= "title">내 정보 수정</h1>
			<form name= "mp_updateForm" action="mpProc.jsp" method= "post">
				<ul>
					<li>
						<label>이름</label>
						<input type="text" id="name" name="name" class= "input1" value="<%= memberVo.getName() %>" readonly>
					</li>
					<li>
						<label>아이디</label>
						<input type="text" id="id" name="id" class= "input1" value="<%= memberVo.getId() %>" readonly>
					</li>
					<li>
						<label>비밀번호</label>
						<input type="password" id="pass" name="pass" class= "input1" value="<%= memberVo.getPass() %>">
					</li>
					<li>
						<label>비밀번호 확인</label>
						<input type="password" id="cpass" name="cpass" class= "input1" value="<%= memberVo.getCpass() %>">
						<button type="button" id="btn_passUpdate" class= "btn_style2">변경</button>
					</li>
					<li>
						<label>성별</label>
						<input type="radio" name="gender"><span>남자</span> 
						<input type="radio" name="gender"><span>여자</span>
					</li>
					<li>
						<label>이메일</label>
						<input type="text" name="email1" id="email1" > @
						<input type="text" name="email2" id="email2" >
						<select id="email3">
							<option value="default">선택</option>
							<option value="naver.com">네이버</option>
							<option value="nate.com">네이트</option>
							<option value="google.com">구글</option>
							<option value="daum.net">다음</option>
							<option value="self">직접입력</option>
						</select>
					</li>
					<li>
						<label>차량번호</label>
						<input type="text" name="car1" id="car1" class="input1" placeholder= "앞 2자리 & 글자 (예) 00가)">
						<input type="number" name="car2" id="car2" class="input1" placeholder= "뒤 네자리 숫자 (예) 0000)">
					</li>
					<li>
					<li>
						<label>휴대폰</label>
						<input type="radio" name="tel" value="skt"><span>SKT</span>
						<input type="radio" name="tel" value="kt"><span>KT</span>
						<input type="radio" name="tel" value="lgu+"><span>LG U+</span>
						<select name="phone1">
							<option value="default">선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
						</select>
						- <input type="text" name="phone2">
						- <input type="text" name="phone3">				
					</li>
					<li>
						<label>영화 장르</label>
						<input type="checkbox" name="genre" value="범죄/스릴러"><span>범죄/스릴러</span>
						<input type="checkbox" name="genre" value="멜로/로맨스"><span>멜로/로맨스</span>
						<input type="checkbox" name="genre" value="판타지/코미디"><span>판타지/코미디</span>
						<input type="checkbox" name="genre" value="액션/SF"><span>액션/SF</span><br>
						<input type="checkbox" name="genre" value="전쟁/재난"><span>전쟁/재난</span>
						<input type="checkbox" name="genre" value="느와르/첩보"><span>느와르/첩보</span>
						<input type="checkbox" name="genre" value="애니메이션"><span>애니메이션</span>
						<input type="checkbox" name="genre" value="가족/음악"><span>가족/음악</span>
					</li>
					<li>
						<button type="button" class="btn_style">가입하기</button>
						<button type="reset" class="btn_style">다시입력</button>
					</li>			
				</ul>
			</form>
		</section>
	</div>
	
	<!-- Footer -->
	<iframe src= "http://localhost:9000/gga_test1/footer.jsp" scrolling= "no" width= "100%" height= "500px" frameborder= 0></iframe>
	<!-- Footer -->
</body>
</html>