<%@page import="javax.naming.ldap.Rdn"%>
<%@page import="com.sise.DBHelperControl.DBHelper"%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="Gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AllClient.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="css/css.css" rel="stylesheet" type="text/css">
  </head>
<% 	
	String key=request.getParameter("key");
	String sql="select * from cm_client where cid='"+key+"' or cname='"+key+"' or linkman='"+key+"'";
	ResultSet rs=DBHelper.query(sql);  
	
%>
<body>
<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
  <tbody>

    <tr>
      <th class="bg_tr" align="left" colspan="7" height="25">���пͻ���Ϣ </th>
    </tr>
	
	<form method="post" action="/CRM/Search.jsp">
	<tr>
		<th class="bg_tr" align="right" colspan="7" height="25"> ����<input type="text" name="key">
	</tr>
	</form>

	<tr>
	<th class="bg_tr" align="left" height="25">�ͻ����</th>
	<th class="bg_tr" align="left" height="25">�ͻ�����</th>
	<th class="bg_tr" align="left" height="25">�Ǽ�ʱ��</th>
	<th class="bg_tr" align="left" height="25">�´���ϵʱ��</th>
	<th class="bg_tr" align="left" height="25">������Ա</th>
	<th class="bg_tr" align="left" height="25">�ͻ��ȼ�</th>
	<th class="bg_tr" align="left" height="25">����</th>
    </tr>

<% 
	while(rs.next()){
%>
    <tr>
    <td class="td_bg" width="10%" height="23" id="id"><%=rs.getString(1) %></td>
    <td class="td_bg" width="10%" height="23"><%=rs.getString(2) %></td>
	<td class="td_bg" width="10%" height="23"><%=rs.getString(6) %></td>
	<td class="td_bg" width="15%" height="23"><%=rs.getString(7) %></td>
	<td class="td_bg" width="10%" height="23"><%=rs.getString(8) %></td>
	<td class="td_bg" width="10%" height="23"><%=rs.getString(9) %></td>
	<td class="td_bg" width="20%" height="23">
	<img src="icon/look.jpg"/><a href="ClientDisp.jsp?id=<%=rs.getString(1) %>" target="main">�鿴</a> 
	<img src="icon/update.jpg"/><a href="Change.jsp?id=<%=rs.getString(1)%>">�޸�</a>
	<img src="icon/delete.jpg"/><a href="Delete.jsp?id=<%=rs.getString(1)%>">ɾ��</a></td>
    </tr>
<%
	}
	rs.close();
 %>

</tbody>
</table>
</body>

</html>
