<%@page contentType="text/html;charset=GBK"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db" class="com.app.DBHelper" scope="page"/>
<%
request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
 %>
<html>
  <head>
    <title>�޸�</title>
   <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css">
  </head>
  <body>
   <% 
String mess="";
boolean mark=true;
String lid=request.getParameter("lid");
  
if(lid==null||lid.equals(""))
{
mark=false;
mess="<li>������<b>��ϵ�˱���</b></li>";
 }
%>
<center>
<form action="changeapp.jsp" name="changeform" method="post">
 <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
   <h3><b>��ܰ��ʾ!</b></h3>
   <h4>�޸���ϵ����Ϣ</h4>
<tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><img src="<%=request.getContextPath()%>/icon/insert.jpg">�޸���ϵ����Ϣ<input onClick="switchBar(this)" type="button" value="�ر���߹���˵�" name="SubmitBtn" /></th>
    </tr>
  
  <tr>
   <td class="td_bg" width="17%" height="25"> ��ϵ�˱���:<span class="TableRow2"></span></td>

  <td class="td_bg" width="83%"><input type="text" name="lid" size="20"></td>
  </tr>
  <tr>
  <td class="td_bg" width="17%" height="25"> ��ϵ������:<span class="TableRow2"></span>
  <td class="td_bg" width="83%"><input type="text" name="name" size="10"></td>
  </tr>
  
  <tr>
  <td class="td_bg" height="25">�Ա�</td>
 <td>
 <select name="sex">
 <option value="��">��</option><option value="Ů">Ů</option>
 </select> 
 </td>
  </tr>
  
  <tr>
   <td class="td_bg" width="17%" height="25"> ����:</td>
  <td class="td_bg" width="83%"><input type="text" name="birth" ></td>
  </tr>
  <tr>
  <td class="td_bg" width="17%" height="25">����:</td>
  <td class="td_bg" width="83%"><input type="text" name="depart" ></td>
  </tr>
  <tr>
  <td class="td_bg" width="17%" height="25"> �Ƿ�Ϊ����ϵ��:</td>
  <td class="td_bg" width="83%"><input type="text" name="if_main" ></td>
  </tr>
  <tr>
 <td class="td_bg" width="17%" height="25">�칫�绰:</td>
  <td class="td_bg" width="83%"><input type="text" name="ocall" ></td>
  </tr>
  <tr>
 <td class="td_bg" width="17%" height="25"> �绰:</td>
  <td class="td_bg" width="83%"><input type="text" name="call" ></td>
  </tr>
    <tr>
  <td class="td_bg" width="17%" height="25">�����ʼ�:</td>
  <td class="td_bg" width="83%"><input type="text" name="email" ></td>
  </tr>
    <tr>
   <td class="td_bg" width="17%" height="25"> ��ַ:</td>
  <td class="td_bg" width="83%"><input type="text" name="add" ></td>
  </tr>
    <tr>
  <td class="td_bg" width="17%" height="25">MSN:</td>
  <td class="td_bg" width="83%"><input type="text" name="msn" ></td>
  </tr>
    <tr>
   <td class="td_bg" width="17%" height="25"> �����ͻ�:</td>
   <td class="td_bg" width="83%"><input type="text" name="client" /></td>
  </tr>
   

<tr>
  <td class="td_bg" width="17%" colspan="2"  height="25">
  <input type="submit" name="submit" value="ȷ���޸�" >
 
  </td>
 </tr>

 </center>
 </table>
 <tr>
      <td class="td_bg" colspan="2"  height="25"><img src="<%=request.getContextPath()%>/icon/return.jpg" /><a href="select.jsp" target="main">[����]</a></td>
    </tr>

</html>
