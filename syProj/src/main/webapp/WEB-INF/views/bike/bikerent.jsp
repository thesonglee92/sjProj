<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
 
  <title>�����Ŵ뿩</title>
 </head>
 <body>
 <form name="rent.jsp" method="post">
   <table width=100% style="padding:5px 0 5px 0; ">
      <tr height="2" bgcolor="#FFC8C3"><td colspan="2"></td></tr>
      <tr>
         <th> �̸�</th>
         <td><input type="text" name="name"></td>
      </tr>
        <tr>
          <th>�ڵ��� ��ȣ</th>
           <td><input type="text"name="tel_h1" style="width:50px;"> -
               <input type="text" name="tel_h2_1" style="width:50px;"> -
               <input type="text" name="tel_h2_2" style="width:50px;">
           </td>
          </tr>
                <tr>
         <th> �뿩�� ��ġ</th>
         <td><input type="text" name="bikename"><input type="button" id = "bikeList" name="bikedb" onClick='fn_select()' value="�˻�"></td>
      </tr>
         <tr>
           <th>���ϱ���������</th>
           <td>
           <select name='select' size='1'>
                 <option value=''>�����ϼ���</option>
                 <option value='39'>����ȸ��(1�ð���)</option>
                 <option value='40'>����ȸ��(2�ð���)</option>
           </select>
          </td>
        </tr>
         <tr>
           <th> ���� </th>
           <td>
              <input type='checkbox' name='interest[]' value='18'> �ſ�/üũī��
              <input type='checkbox' name='interest[]' value='21'> �޴�������
            </td>
         </tr>

           <tr height="2" bgcolor="#FFC8C3"><td colspan="2"></td></tr>
           <tr>
             <td colspan="2" align="center">
               <input type="submit" value="�����ϱ�"/>
               <input type="button" value="���" onclick="win_close();"/>
            </td>
           </tr>
           </table>

          </form>
 </body>
</html>


<script>
function win_close(){
    self.close();   //�ڱ��ڽ�â�� �ݽ��ϴ�.
}

//���
function fn_select(){
    
    var form = document.getElementById("bikeList");
    
    form.action = "<c:url value='/bikeinfo'/>";
    form.submit();
    
}
</script>