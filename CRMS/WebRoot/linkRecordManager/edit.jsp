<%@page import="java.sql.ResultSet"%>
<%@page import="com.sise.DBHelperControl.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ϵ��¼�޸�</title>
    
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
		else{
		parent.frame.cols="195,*";
		displayBar=true;
		obj.value="�ر���߹���˵�";
		}
	}

	function fullmenu(url){
		if (url==null) {url = "admin_left.asp";}
		parent.leftFrame.location = url;
	}
	
	function cheForm(){
			
				alert("�޸ĳɹ���");
				return true;							
	 }
	
	//-->
	</SCRIPT>

  </head>
  
  <body>
  <%
    String ss=request.getParameter("id");
  	session.setAttribute("id", ss);
    String s1="select * from cm_link_record where linkid='"+ss+"'";
    ResultSet rs=DBHelper.query(s1);
    %>
    <form action="servlet/link_record_edit" method="post" onsubmit="return cheForm();">
    <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
  <tbody>
  
  <% 
  	request.setCharacterEncoding("GBK");
	response.setCharacterEncoding("GBK");
  while(rs.next()){
  %>
  
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25">�޸ı��&nbsp;&nbsp;<%=rs.getString(2)%>&nbsp;&nbsp;��¼��Ϣ
      <input onClick="switchBar(this)" type="button" value="�ر���߹���˵�" name="SubmitBtn" /><img src="icon/return.jpg" />
      <a href="http://localhost:8080/CRMS/linkRecordManager/all_connection.jsp" target="main">����</a></th>
    </tr>



    <tr>
      <td class="td_bg" width="17%" height="25">��ϵ����<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="t1" value="<%=rs.getString(5)%>"/></td>
    </tr>


	<tr>
      <td class="td_bg" width="17%" height="25">��ϵ��ʽ</td>
      <td class="td_bg" width="83%"><input type="text" name="t2" value="<%=rs.getString(6)%>"/></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">��¼ʱ��</td>
      <td class="td_bg" width="83%"><input type="text" name="t3" value="<%=rs.getString(7)%>"/></td>
    </tr>


	<tr>
      <td class="td_bg" width="17%" height="25">��¼��Ա<span class="TableRow2"></span></td>
      <td class="td_bg" width="83%"><input type="text" name="t4" value="<%=rs.getString(8)%>"/></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">�ҷ���Ա<span class="TableRow2"></span></td>
      <td class="td_bg" width="83%"><input type="text" name="t5" value="<%=rs.getString(9)%>"/></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" colspan="2"  height="25">
      
      <input type="submit" value="�޸�"/><input type="reset" value="����"/></td>
    </tr>

  </tbody>
  <%} %>
</table>
</form>
  </body>
</html>
