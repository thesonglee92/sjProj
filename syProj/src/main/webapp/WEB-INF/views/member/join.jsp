<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="./resources/js/jquery-3.4.1.min.js"></script>
<script>
function idCheck(){	
	
	var id = $('#idInput').val();

	if($.trim(id)==""){
		alert('아이디를 입력해주세요')	
		$("#idInput").val("").focus();
		return false;
	}	
	
	$.ajax({		
		type:'post',
		url:'/controller/idchk/' + id,
		success:function(result){

			if(result=='ok'){
				alert('사용 가능한 ID 입니다')
				document.getElementById('idInput').readOnly = true;
				document.getElementById('idCheckBtn').setAttribute('type','hidden')
				document.getElementById('joinReady').setAttribute('type','submit')
			}else{
				alert('이미 등록된 아이디입니다')
			}
		},
		error:function(){
			alert('데이터 확인에 실패')
		}
	})
}

$(document).ready(function(){
	$('#pwdTwo').focusout(function(){
		if($('#pwdTwo').val() == $('#pwdOne').val()){
			console.log(ok)
			$('#ok').html('');
		}else{
			$('#ok').html('비밀번호가 일치하지 않습니다');
		}
		
		console.log('asdf');
	})
	
	$('#emailBack').focusout(function(){
		
		var front = $('#emailFront').val();
		var back = $('#emailBack').val();
		
		if(back == '이메일을 선택해주세요'){
			alert('이메일을 선택해주세요')
		}
		
		$('#email').val(front + back);
		
	})
	
	$('#tel3').focusout(function(){
		var one = $('#tel1').val();
		var two = $('#tel2').val();
		var three = $('#tel3').val();
		
		$('#tel').val(one + '-' + two + '-' + three);
		
	})
})

</script>

<form action="joinreg" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td>
			<input type="text" name="id" id="idInput"/>
			<input type="button" value="중복확인" onclick="idCheck()" id="idCheckBtn"/>
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>
			<input type="password" name="pwd" id="pwdOne"/>
		</td>
	</tr>
	<tr>
		<td>비밀번호 재입력</td>
		<td>
			<input type="password" id="pwdTwo"/><div id="ok"></div>
		</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>
			<input type="text" name="name"/>
		</td>
	</tr>
	<tr>
		<td>생일</td>
		<td>
			<input type="text" name="birthdate" id="birthdate"/>
		</td>
	</tr>
	<tr>
		<td>이메일주소</td>
		<td><input type="text" id="emailFront"/>
		<select id="emailBack">
			<option>이메일을 선택해주세요</option>	
			<option>@gmail.com</option>
			<option>@naver.com</option>
			<option>@hanmail.net</option>
		</select>	
			
		<input type="text" name="email" id="email"/><!-- 나중에 hidden -->
		
		</td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td>
		<input type="text" id="tel1">-<input type="text" id="tel2">-<input type="text" id="tel3">
		<input type="text" name="tel" id="tel"/><!-- 나중에 hidden -->
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="hidden" value="제출하기" id="joinReady"/>
		</td>
	</tr>
</table>
</form>