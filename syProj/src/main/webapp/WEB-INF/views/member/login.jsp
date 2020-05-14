<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
.signin{
	width : 500px;
	position: absolute;
	left : 362px;
	top : 150px;
}
</style>
<script src="./resources/js/jquery-3.4.1.min.js"></script>
<c:if test="${id!=null }">
<script>
	$('#id').val('${id}')
</script>
</c:if>
<c:if test="${msg!=null}">
<script>
	alert('${msg}');
</script>
</c:if>
</head>
<body>
<div class="signin">
<form method="post" action="/lighthouse/signin">
<table>
	<tr>
		<th align="center" colspan="3">로그인</th>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id" id="id"/></td>
		<td rowspan="2">
			<input type="submit" value="로그인" id="chk"/>
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pwd" id="pwd"/></td>
	</tr>
</table>
</form>
</div>
</body>
</html>