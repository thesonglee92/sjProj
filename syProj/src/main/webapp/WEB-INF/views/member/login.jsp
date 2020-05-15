<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
html{height: 100%}
body{position: relative;
    height: 100%;
    background: #f5f6f7;}
div{display: block;}
#wrap{position: relative;
    min-height: 100%;}
#header{    position: relative;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    height: 168px;
    padding: 62px 0 0;}
#container {
    padding-bottom: 50px;
    min-height: 185px;
}
#content {width:460px;
    margin: 0 auto;
    padding-bottom: 30px;
}
.input_row {
    position: relative;
    height: 30px;
    margin: 0 0 14px;
    padding: 10px 35px 10px 15px;
    border: solid 1px #dadada;
    background: #fff;
}
#chk{display: block;
    width: 100%;
    height: 61px;
    margin: 30px 0 14px;
    padding-top: 1px;
    border: none;
    border-radius: 0;
    cursor: pointer;
    text-align: center;}
.input_box{font-size: 15px;
    line-height: 16px;
    position: relative;
    z-index: 9;
    width: 100%;
    height: 16px;
    padding: 7px 0 6px;
    color: #000;
    border: none;
    background: #fff;
    -webkit-appearance: none;}
#find_info{    font-size: 12px;
    line-height: 14px;
    padding-top: 20px;
    text-align: center;
    color: #8e8e8e;
    border-top: 1px solid #e4e4e5;
}
#find_info ul{ text-align: center; margin: 0 auto;padding: 0 auto;}
#find_info ul li{float:left;
				list-style: none;
				padding: 5px;
				margin: 0 auto;
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
<div id="wrap">

	<div id="header">
	
	</div>
	<div id="container">
		<div id="content">
			<form method="post" action="/controller/signin">
				<div id="id_area">
					<div class="input_row">
						<input type="text" id="id" class="input_box" placeholder="Username">
					</div>
				</div>
				<div id="pw_area">
					<div class="input_row">
						<input type="password" id="pwd" class="input_box" placeholder="Password">
					</div>
				</div>
				<input type="submit" value="Login" id="chk">
			</form>
			<div id="find_info">
				<ul>
					<li>
						아이디 찾기
					</li>
					<li style="border-left: solid 1px #e4e4e5; border-right: solid 1px #e4e4e5;">
						비밀번호 찾기
					</li>
					<li>
						회원가입
					</li>
				</ul>
			</div>
		</div>
	</div>

</div>
</body>
</html>