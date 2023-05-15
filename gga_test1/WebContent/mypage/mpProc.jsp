<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.gga.vo.MemberVo" %>
<%@ page import = "com.gga.dao.MemberDao" %>
<jsp:useBean id="memberVo" class=com.gga.vo.MemberVo/>
<jsp:setProperty property="*" name="memberVo"/>

<%
	MemberDao memberDao = new MemberDao();
	int result = memberDao.update(memberVo);
	if(result == 1){
		out.write("정보 수정 성공");
	}
%>