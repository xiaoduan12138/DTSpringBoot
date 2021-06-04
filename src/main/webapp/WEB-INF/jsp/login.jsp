<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<title>小春论坛登录</title>
		<script src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.js"></script>
		<script type="text/javascript">
            function checkInput() {
                var password_input = document.getElementById('password');
                password_input.value=md5(password_input.value);
                return true;
            }
		</script>
	</head>
	<body>
		<c:if test="${!empty error}">
	        <font color="red"><c:out value="${error}" /></font>
		</c:if>        
		<form action="<c:url value="loginCheck.html"/>" method="post" onsubmit="checkInput()">
			用户名：
			<input type="text" name="userName">
			<br>
			密 码：
			<input type="password" id='password' name="password">
			<br>
			<input type="submit" value="登录" />
			<input type="reset" value="重置" />
		</form>
	</body>
</html>
