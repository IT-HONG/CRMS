<%@page import="com.sise.DBHelperControl.*"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ϸ��¼</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/css.css" rel="stylesheet" type="text/css">
	<SCRIPT language=javascript>
	<!--
	var displayBar=true;
	function switchBar(obj){
		if (displayBar){
			parent.frame.cols="0,*";
			displayBar=false;
			obj.value="����߹���˵�";
		}
		lse{
			parent.frame.cols="195,*";
			displayBar=true;
			obj.value="�ر���߹���˵�";
		}	
	}

	function fullmenu(url){
		if (url==null) {url = "admin_left.asp";}
		parent.leftFrame.location = url;
		}
	//-->
	</SCRIPT>
	

  </head>
  
  <body>
    <%
    String ss=request.getParameter("id");
    String s1="select * from cm_link_record where linkid='"+ss+"'";
    ResultSet rs=DBHelper.query(s1);
    %>
    
    
	<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
	<%
	while(rs.next()){
	%>
    <tbody>
     
     <tr>
      <th class="bg_tr" align="left" colspan="2" height="25">�鿴���&nbsp;&nbsp;<%=rs.getString(2)%>&nbsp;&nbsp;����ϸ��Ϣ<input onClick="switchBar(this)" type="button" value="�ر���߹���˵�" name="SubmitBtn" /></th>
     </tr>

    <tr>
      <th class="bg_tr" align="left" height="25" width="17%">�γ�</th>
	<th width="83%"  class="bg_tr" align="left" height="25" width="17%">�ɼ�</th>
    </tr>

    <tr>
      <td class="td_bg" width="17%" height="25">��ϵʱ��</td>
      <td class="td_bg" width="83%"><%=rs.getString(1)%></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">��ϵ�ͻ�</td>
      <td class="td_bg" width="83%"><%=rs.getString(3)%></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">��ϵ��</td>
      <td class="td_bg" width="83%"><%=rs.getString(4)%></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">��ϵ����</td>
      <td class="td_bg" width="83%"><%=rs.getString(5)%></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">��ϵ��ʽ</td>
      <td class="td_bg" width="83%"><%=rs.getString(6)%></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">��¼ʱ��</td>
      <td class="td_bg" width="83%"><%=rs.getString(7)%></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">��¼��Ա</td>
      <td class="td_bg" width="83%"><%=rs.getString(8)%></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">�ҷ���Ա</td>
      <td class="td_bg" width="83%"><%=rs.getString(9)%></td>
    </tr>
    


	<tr>
      <td class="td_bg" colspan="2"  height="25"><img src="icon/return.jpg" />
      <a href="http://localhost:8080/CRMS/linkRecordManager/all_connection.jsp" target="main">����</a></td>
    </tr>
  </tbody>
  <%} %>
</table>
    
  </body>
</html>
