<%@page contentType="text/html;charset=GBK"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db3" class="com.app.DBHelper" scope="page"/>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>�޸ĺ���Ϣ</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css">
  </head>
  <body>
   <center>
    <table  width="100%" height="100" border="1" cellpadding="0" cellspacing="0">
   <tr>
    <td class="td_bg" width="5%" height="45"><b>��ϵ�˱���</b></td>
   <td class="td_bg" width="8%" height="45"><b>��ϵ������</b></td>
   <td class="td_bg" width="8%" height="45"><b>�Ա�</b></td>
   <td class="td_bg" width="8%" height="45"><b>����</b></td>
   <td class="td_bg" width="8%" height="45"><b>����</b></td>
   <td class="td_bg" width="8%" height="45"><b>�Ƿ�Ϊ����ϵ��</b></td>
   <td class="td_bg" width="8%" height="45"><b>�칫�绰</b></td>
   <td class="td_bg" width="8%" height="45"><b>�绰</b></td>
   <td class="td_bg" width="8%" height="45"><b>�����ʼ�</b></td>
   <td class="td_bg" width="8%" height="45"><b>��ַ</b></td>
   <td class="td_bg" width="8%" height="45"><b>MSN</b></td>
   <td class="td_bg" width="8%" height="45"><b>�����ͻ�</b></td>     
 
 </tr>
 <%
 ResultSet rs1=db3.getAllRs();
 while(rs1.next()){
  %>
  <tr>
     <td class="td_bg" width="5%" height="25"><h3><%=rs1.getString("lid") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("name") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("sex") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("birth") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("depart") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("if_main") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("ocall") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("lcall") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("email") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("ladd") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("msn") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rs1.getString("client") %></h3></td>
  </tr>
  <%
  }  
   %>
   </table>
   <tr>
      <td class="td_bg" colspan="2"  height="25"><img src="<%=request.getContextPath()%>/icon/return.jpg" /><a href="select.jsp" target="main">[����]</a></td>
    </tr>
   </center>
  </body>
</html>
