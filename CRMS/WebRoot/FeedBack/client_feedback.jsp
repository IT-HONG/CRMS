<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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
  	<!-- �û�����ҳ�� -->
  	<div align="center">
  		<img src="imgs/main.jpg"/><br><br>
  		<img src="imgs/feedback.jpg"/><br>
  		<font face="΢���ź�" size="2px"><p align="center">�������ʹ�ñ�ϵͳ�Ĺ������������ʣ��������κε�������߽��飬��ӭ��ʱ�����Ƿ�����</p>
<p>���ǻᾡ��ش��������⣬���������ķ�������������������</p>
<p>�õĽ������ǲ���֮�������ʵ��Ľ���������������ϵ��ʽ</p></font>
  	</div>
    <form action="servlet/FeedbackCheck">
    <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
    	<tbody>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="΢���ź�" size="3px">������</font></td>
    			<td width="83%" class="td_bg"><input type="text" name="name"></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="΢���ź�" size="3px">��ϵ�绰��</font></td>
    			<td width="83%" class="td_bg"><input type="text" name="phone"></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="25%" height="25" align="right"><font face="΢���ź�" size="3px">���䣺</font></td>
    			<td width="83%" class="td_bg"><input type="text" name="mail"></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="30%" height="25" align="right"><font face="΢���ź�" size="3px">�������⣺</font></td>
    			<td width="83%" class="td_bg"><input type="text" name="theme"></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="΢���ź�" size="3px">�������ͣ�</font></td>
    			<td width="83%" class="td_bg"><select name="type"><option value="����">����</option><option value="��Ʒ">��Ʒ</option><option value="����">����</option></select></td>
    		</tr>
    		<tr>
    			<td class="td_bg" width="17%" height="25" align="right"><font face="΢���ź�" size="3px">�������ݣ�</font></td>
    			<td width="99%"><textarea  name="text" id="text" width="100%" rows="10" cols="80" placeholder="������룬����������������Ķ���"></textarea></td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center"><input type="submit" class="myButton" value="�ύ"></td>
    		</tr>
    	</tbody>
    </table>
    </form>
  </body>
</html>
