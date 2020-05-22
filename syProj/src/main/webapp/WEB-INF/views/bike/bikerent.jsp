<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
 
  <title>자전거대여</title>
 </head>
 <body>
 <form name="rent.jsp" method="post">
   <table width=100% style="padding:5px 0 5px 0; ">
      <tr height="2" bgcolor="#FFC8C3"><td colspan="2"></td></tr>
      <tr>
         <th> 이름</th>
         <td><input type="text" name="name"></td>
      </tr>
        <tr>
          <th>핸드폰 번호</th>
           <td><input type="text"name="tel_h1" style="width:50px;"> -
               <input type="text" name="tel_h2_1" style="width:50px;"> -
               <input type="text" name="tel_h2_2" style="width:50px;">
           </td>
          </tr>
                <tr>
         <th> 대여소 위치</th>
         <td><input type="text" name="bikename"><input type="button" id = "bikeList" name="bikedb" onClick='fn_select()' value="검색"></td>
      </tr>
         <tr>
           <th>일일권종류선택</th>
           <td>
           <select name='select' size='1'>
                 <option value=''>선택하세요</option>
                 <option value='39'>일일회원(1시간권)</option>
                 <option value='40'>일일회원(2시간권)</option>
           </select>
          </td>
        </tr>
         <tr>
           <th> 결제 </th>
           <td>
              <input type='checkbox' name='interest[]' value='18'> 신용/체크카드
              <input type='checkbox' name='interest[]' value='21'> 휴대폰결제
            </td>
         </tr>

           <tr height="2" bgcolor="#FFC8C3"><td colspan="2"></td></tr>
           <tr>
             <td colspan="2" align="center">
               <input type="submit" value="결제하기"/>
               <input type="button" value="취소" onclick="win_close();"/>
            </td>
           </tr>
           </table>

          </form>
 </body>
</html>


<script>
function win_close(){
    self.close();   //자기자신창을 닫습니다.
}

//목록
function fn_select(){
    
    var form = document.getElementById("bikeList");
    
    form.action = "<c:url value='/bikeinfo'/>";
    form.submit();
    
}
</script>