<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style type="text/css">
	html { height: 100%; display: block;}
	body { position: relative;
			height: 100%;
			background: #f5f6f7;
			margin: 0px; 
			padding: 0px;
			display: block;}
	#wrap { position:relative;
			min-height: 100%;}
			
	#menu { width: 100%;
			height:50px;
			display: block;}
	#serviceList{float: left;
				position: relative;
				width: 100%;
				}
	.list_mainsvc{float: right;}
	.list_mainsvc li{float: left;
					width:200px;
					height: 30px;
					padding: 10px;
					border: solid 1px black;}
	ul,li{list-style: none;margin: 0 auto;padding: 0 auto;}
	ul{display: block;}
		
	#header { height:100px; text-align: center; top: 50%;}
	#container { width : 100%;
				margin: 0 auto;}
				
	#main_img{width:100%;
			margin: 0 auto;
			text-align: center;}
				
	a:link { color: black;text-decoration: none;}
	a:visited { color: black;text-decoration: none;}

</style>
<title>Insert title here</title>
</head>
<body>
<div id = "wrap">
	<div id="header">
		<div id="menu">
			<div id="serviceList">
				<ul class="list_mainsvc">
					<li>
						<a href=""><span class="word">사업소개</span></a>
					</li>
					<li>
						<a href="/controller/rent"><span class="word">대여소 조회</span></a>
					</li>
					<li>
						<a href=""><span class="word">이용권 구매</span></a>
					</li>
					<li>
						<a href=""><span class="word">문의/FAQ</span></a>
					</li>
					<li>
						<a href=""><span class="word">안전수칙</span></a>
					</li>
				</ul>
			</div><!-- serviceList -->
			
			<div>
			
			</div>
			
		</div>
	</div>
	<div id="container">
		
		<div id="content">
			<div id="main_img">
				<img alt="HanRiver" src="https://ifh.cc/g/fKZloI.jpg">
			</div>
		
			<div class="help_menu">
				대여방법
			</div>
			<div class="help_menu">
				반납방법
			</div>
			<div class="help_menu">
				대여소현황
			</div>
			<div class="help_menu">
				대여하기			
			</div>
		</div>
		
	</div>
</div>
</body>
</html>