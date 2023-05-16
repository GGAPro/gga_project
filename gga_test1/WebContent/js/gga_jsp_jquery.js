$(document).ready(function(){
	
	/**
	 * 회원가입
	 */
	$("#btnJoin").click(function(){
		if ($("#name").val() == ""){
			alert("이름을 입력해주세요.");
			$("#name").focus();
			return false;
		} else if ($("#id").val() == ""){
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
		} else if ($("#idCheck_msg").text() == ""){
			alert("아이디 중복을 확인해주세요.");
			$("#idCheck_msg").focus();
			return false;
		} else if ($("#pass").val() == ""){
			alert("비밀번호를 입력해주세요.");
			$("#pass").focus();
			return false;
		} else if ($("#cpass").val() == ""){
			alert("비밀번호 확인을 입력해주세요.");
			$("#cpass").focus();
			return false;
		} else if ($("input[name = 'gender'] : checked").length == 0){
			alert("성별을 선택해주세요.");
			return false;
		} else if ($("#email1").val() == ""){
			alert("이메일을 입력해주세요.");
			$("#email1").focus();
			return false;
		} else if ($("#email2").val() == ""){
			alert("주소를 입력 또는 선택해주세요.");
			$("#email3").focus();
			return false;
		} else if ($("#car1").val() == ""){
			alert("차량번호를 입력해주세요.");
			$("#car1").focus();
			return false;
		} else if ($("#car2").val() == ""){
			alert("차량번호를 입력해주세요.");
			$("#car2").focus();
			return false;
		} else if ($("input[name = 'tel'] : checked").length == 0){
			alert("통신사를 선택해주세요.");
			return false;
		} else if ($("#phone1").val() == "default"){
			alert("번호를 선택해주세요.");
			$("#phone1").focus();
			return false;
		} else if ($("#phone2").val() == ""){
			alert("번호를 입력해주세요.");
			$("#phone2").focus();
			return false;
		} else if ($("#phone3").val() == ""){
			alert("번호를 입력해주세요.");
			$("#phone3").focus();
			return false;
		} else if ($("input[name = 'genre'] : checked").length == 0 || $("input[name = 'genre'] : checked").length <= 4){
			alert("선호 영화를 선택해주세요. (3개까지 선택 가능)");
			return false;
		} else{
			// 서버 전송
			joinForm.submit();
		}
	}); // btnJoin
	
	/**
	 * 회원가입 - 아이디 중복
	 */
	$("#btnIdCheck").click(function(){
		if ($("#id").val() == ""){
			alert("아이디를 입력해주세요.")
			$("#id").focus();
			return false;
		} else{
			$.ajax({
				url : "idCheckProc.jsp?id=" + $("#id").val(),
				success : function(result){
					if (result == 1){
						$("#idCheck_msg").text("이미 사용중인 아이디입니다.").css("color", "red")
						.css("font-size", "11px").css("display", "block");
						$("#id").focus();
					} else if (result == 0){
						$("#idCheck_msg").text("사용 가능한 아이디입니다.").css("color", "blue")
						.css("font-size", "11px").css("display", "block");
						
						$("#pass").focus();
					}
				}
			});
		}
	}); // btnIdCheck
	
	/**
	 * 회원가입 - 이메일 체크
	 */
	$("#email3").on("change", function(){
		if ($("#email3").val() == "default" && $("#email2").val() == ""){
			alert("이메일을 입력하거나 선택해주세요.");
			$("#email3").focus();
		} else{
			$("#email2").val($("#email3").val());
		}
	}); // email
	
	/**
	 * 회원가입 - 비밀번호 확인
	 */
	$("#cpass").on("blur", function(){
		if ($("#pass").val() != "" && $("#cpass").val() != ""){
			if ($("#pass").val() == $("#cpass").val()){
				$("#cmsg").text("비밀번호가 일치합니다.").css("color", "blue")
				.css("font-size", "11px").css("display", "block");
			} else{
				$("#cmsg").text("비밀번호가 일치하지 않습니다. 다시 입력해주세요.").css("color", "red")
				.css("font-size", "11px").css("display", "block");
				
				$("#pass").focus();
			}
		}
	}); // cpass
	
	/**
	 * 로그인
	 */
	$("#btnLogin").click(function(){
		if ($("#id").val() == ""){
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
		} else if ($("#pass").val() == ""){
			alert("비밀번호를 입력해주세요.");
			$("#pass").focus();
			return false;
		} else{
			// 서버 전송
			loginForm.submit();
		}
	}); // btnLogin
	
}); // ready