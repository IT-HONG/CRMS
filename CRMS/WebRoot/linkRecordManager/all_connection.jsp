<%@page import="java.sql.ResultSet"%>
<%@page import="com.sise.DBHelperControl.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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
    <title>��ϵ��¼����</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/css.css" rel="stylesheet" type="text/css">
	<link href="css/searchcss.css" rel="stylesheet" type="text/css"/>
	
	<SCRIPT language=javascript>
	<!--
	var displayBar=true;
	function switchBar(obj){
		if (displayBar)
		{
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
	function check(){
		  if(confirm("ȷ��ɾ������ϵ��¼��Ϣ?")==true) 
			  return true;
		  else 
			  return false;
		  }
		  
		 
		 
	//-->
	</SCRIPT>
  </head>
  
  <% 
  String s1="select linkid,linktime,recordtime,client,linkman from cm_link_record";
  ResultSet rs1=DBHelper.query(s1);
  %>
  
  <body>
  
  <form action="success_search.jsp" method="post"> 
  <div class="field"  id="searchform">
  <select name="s1"><option value="linkid">���</option><option value="linktime">��ϵʱ��</option>
  <option value="recordtime">��¼ʱ��</option>
  <option value="client">��ϵ�ͻ�</option>
  <option value="linkman">��ϵ��</option>
  </select>
  <input type="text" id="searchterm" placeholder="what are you searching for?" name="searchid"/>
  <button type="button" id="search">Find!</button>
   </div>
   </form>
  	
	<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
   
    <tr>
      <th class="bg_tr" align="left" colspan="6" height="25">������ϵ��¼
        <input onClick="switchBar(this)" type="button" value="�ر���߹���˵�" name="SubmitBtn" />
     </th>
    </tr>

	<tr>
      <th class="bg_tr" align="left" height="25">���</th>
	  <th class="bg_tr" align="left" height="25">��ϵʱ��</th>
      <th class="bg_tr" align="left" height="25">��¼ʱ��</th>
	  <th class="bg_tr" align="left" height="25">��ϵ�ͻ�</th>
      <th class="bg_tr" align="left" height="25">������ϵ��</th>
	  <th class="bg_tr" align="left" height="25">��������</th>
    </tr>

	<% 
	while(rs1.next()){
	%>	
    <tr>  
      <td class="td_bg" width="15%" height="23"><%=rs1.getString(1)%></td>
      <td class="td_bg" width="15%" height="23"><%=rs1.getString(2)%></td>
	  <td class="td_bg" width="15%" height="23"><%=rs1.getString(3)%></td>
	  <td class="td_bg" width="15%" height="23"><%=rs1.getString(4)%></td>
	  <td class="td_bg" width="20%" height="23"><%=rs1.getString(5)%></td>  	  
	  <td class="td_bg" width="20%" height="23">
	  <img src="icon/look.jpg"/>
	  <a href="http://localhost:8080/CRMS/linkRecordManager/detail.jsp?id=<%=rs1.getString(1)%>">�鿴</a>  
      <img src="icon/update.jpg"/>
      <a href="http://localhost:8080/CRMS/linkRecordManager/edit.jsp?id=<%=rs1.getString(1)%>">�޸�</a>
      <img src="icon/delete.png"/>
      <a onclick="return check()" href="servlet/link_record_del?id=<%=rs1.getString(1)%>">ɾ��</a>
      </td>
    </tr>
   
    <%} %>
    </table>
 
</body>
</html>
