<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
 
  <title>�����Ŵ뿩</title>
 </head>
 <body>
 <form name="write_form_member" method="post">
   <table width="940" style="padding:5px 0 5px 0; ">
      <tr height="2" bgcolor="#FFC8C3"><td colspan="2"></td></tr>
      <tr>
         <th> �̸�</th>
         <td><input type="text" name="mbname"></td>
      </tr>
        <tr>
          <th>�ڵ��� ��ȣ</th>
           <td><input type="text"name="tel_h1"> -
               <input type="text" name="tel_h2_1"> -
               <input type="text" name="tel_h2_2">
           </td>
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
              <input type='checkbox' name='interest[]' value='17'> ��������
              <input type='checkbox' name='interest[]' value='18'> �ſ�/üũī��
              <input type='checkbox' name='interest[]' value='19'> īī������
              <input type='checkbox' name='interest[]' value='20'> ������
              <input type='checkbox' name='interest[]' value='21'> �޴�������
            </td>
         </tr>

           <tr height="2" bgcolor="#FFC8C3"><td colspan="2"></td></tr>
           <tr>
             <td colspan="2" align="center">
               <input type="submit" value="�����ϱ�">
               <input type="reset" value="���">
            </td>
           </tr>
           </table>

          </form>
 </body>
</html>