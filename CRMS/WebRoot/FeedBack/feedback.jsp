<%@page import="java.security.interfaces.RSAKey"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.connect.ConnectionManager" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'client_feedback.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/form.css" rel="stylesheet" type="text/css">
	<link href="css/botton.css" rel="stylesheet" type="text.css">

  </head>
  
  <body>
  	<!-- ����Ա�����Ӧ�ı���֮�����Ĳ鿴������Ϣҳ�� -->
    <form>
    <%
		String sign=request.getParameter("id");
		int id=Integer.parseInt(sign);
		ConnectionManager cm=new ConnectionManager();
		PreparedStatement ps;
		ResultSet rs=null;
		try {
			ps=cm.getConnection().prepareStatement("select f_client,phone,email,theme,type,s_time,tip from cm_client_feedback where id="+id+"");
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		while(rs.next()){
     %>
    <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
    	<tbody>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="΢���ź�" size="3px">������</font></td>
    			<td width="83%" class="td_bg"><font face="΢���ź�" size="3px"><%=rs.getString(1) %></font></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="΢���ź�" size="3px">��ϵ�绰��</font></td>
    			<td width="83%" class="td_bg"><font face="΢���ź�" size="3px"><%=rs.getString(2) %></font></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="΢���ź�" size="3px">���䣺</font></td>
    			<td width="83%" class="td_bg"><font face="΢���ź�" size="3px"><%=rs.getString(3) %></font></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="30%" height="25" align="right"><font face="΢���ź�" size="3px">�������⣺</font></td>
    			<td width="83%" class="td_bg"><font face="΢���ź�" size="3px"><%=rs.getString(4) %></font></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="΢���ź�" size="3px">�������ͣ�</font></td>
    			<td width="83%" class="td_bg"><font face="΢���ź�" size="3px"><%=rs.getString(5) %></font></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="΢���ź�" size="3px">����ʱ�䣺</font></td>
    			<td width="99%"><font face="΢���ź�" size="3px"><%=rs.getString(6) %></font></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="΢���ź�" size="3px">�������ݣ�</font></td>
    			<td width="99%"><font face="΢���ź�" size="3px"><%=rs.getString(7) %></font></td>
    		</tr>
    	</tbody>
    </table>
    <%
    	}
     %>
    </form>
  </body>
</html>
