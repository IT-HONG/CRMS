<%@page import="java.sql.ResultSet"%>
<%@page import="com.sise.DBHelperControl.DBHelper"%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
    
    <title>My JSP 'ClientDisp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/css.css" rel="stylesheet" type="text/css">


  </head>
	  
<%
	String id=request.getParameter("id");
	String sql="select * from cm_client where cid='"+id+"'";
	ResultSet rs=DBHelper.query(sql);
	if(rs.next()){
 %>
  <body>
	<form>

<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><img src="icon/insert.jpg">�ͻ���Ϣ</th>
    </tr>

    <tr>
      <td class="td_bg" width="17%" height="25">�ͻ����<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><%=rs.getString(1) %></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">�ͻ�����<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><%=rs.getString(2) %></td>
    </tr>

    <tr>
      <td class="td_bg" height="25">��ַ</td>
      <td width="83%" class="td_bg"><%=rs.getString(3) %></td>
    </tr>

    <tr>
      <td class="td_bg" width="17%" height="25">�绰</td>
      <td class="td_bg" width="83%"><%=rs.getString(4) %></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">�����ʼ�</td>
      <td class="td_bg" width="83%"><%=rs.getString(5) %></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">�Ǽ�ʱ��</td>
      <td class="td_bg" width="83%"><%=rs.getString(6) %></td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">�´���ϵʱ��</td>
      <td class="td_bg" width="83%"><%=rs.getString(7) %></td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">������Ա</td>
      <td class="td_bg" width="83%"><%=rs.getString(8) %><td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">�ͻ��ȼ�</td>
      <td class="td_bg"><%=rs.getString(9) %></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">������ҵ</td>
      <td class="td_bg"><%=rs.getString(10) %></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">����</td>
      <td width="83%" class="td_bg"><%=rs.getString(11) %></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" height="25">ʡ��</td>
      <td width="83%" class="td_bg"><%=rs.getString(12) %></td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">������</td>
      <td width="83%" class="td_bg"><%=rs.getString(13) %></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">�����˺�</td>
      <td width="83%" class="td_bg"><%=rs.getString(14) %></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" height="25">����</td>
      <td width="83%" class="td_bg"><%=rs.getString(15) %></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" height="25">����</td>
      <td width="83%" class="td_bg"><%=rs.getString(16) %></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" colspan="2"  height="25"><input type="button" value="ȷ��" onclick="javascript: window.close();"/></td>
    </tr>

  </tbody>
</table>
</form>
  </body>
  <%
  }
  rs.close();
   %>
</html>
