<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�����ϵ��¼</title>
    
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
	 
	 function cheForm(){
			var t1=document.myform.t1.value;
			if(t1==""){
				alert("��ϵ�ͻ�����Ϊ��");
				return false;
			}
			
			var t2=document.myform.t2.value;
			if(t2==""){
				alert("��ϵ�˲���Ϊ��");
				return false;
			}
			
			else{
				alert("��ӳɹ���");
				return true;
			}
				
			
	 }
						
	//-->
	</SCRIPT>

  </head>
  
  <body>
  
  	<form action="servlet/link_record_add" method="post" name="myform" onsubmit="return cheForm()">
  	<% 
  	Date d=new Date();
  	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
    String dateNowStr = sdf.format(d);  
    String [] s3=dateNowStr.split(" ");
  	
  	request.setCharacterEncoding("GBK");
  	response.setCharacterEncoding("GBK");
  	%>
  	
    <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
  <tbody>   
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><img src="icon/insert.jpg">�����ϵ��¼<input onClick="switchBar(this)" type="button" value="�ر���߹���˵�" name="SubmitBtn" /></th>
    </tr>
    <tr>
      <td class="td_bg" width="17%" height="25">��ϵ�ͻ�<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="t1" /></td>
    </tr>
    <tr>
      <td class="td_bg" height="25">��ϵ��</td>
      <td class="td_bg"><input type="text" name="t2" /></td>
    </tr>
    <tr>
      <td class="td_bg" width="17%" height="25">��ϵʱ��</td>
      <td class="td_bg" width="83%"><input type="text" name="t3" /> </td>
    </tr>
	<tr>
      <td class="td_bg" width="17%" height="25">��ϵ����</td>
      <td class="td_bg" width="83%"><select name="s1"><option value="��̸">��̸</option>
      <option value="���ۼƻ�">���ۼƻ�</option><option value="��Լ">��Լ</option></select></td>
    </tr>
	<tr>
      <td class="td_bg" width="17%" height="25">��ϵ��ʽ</td>
      <td class="td_bg" width="83%"><select name="s2"><option value="��̸">��̸</option><option value="����">����</option>
      <option value="����">����</option></select> </td>
    </tr>
	<tr>
      <td class="td_bg" width="17%" height="25">��¼ʱ��<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="t4" value="<%=s3[0]%>"/></td>
    </tr>
    <tr>
      <td class="td_bg" width="17%" height="25">��¼��Ա<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="t5" /></td>
    </tr>
    <tr>
      <td class="td_bg" width="17%" height="25">�ҷ���Ա<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="t6" /></td>
    </tr>
	<tr>
      <td class="td_bg" width="17%" colspan="2"  height="25"><input type="submit" value="���"/><input  type="reset" value="����"/></td>
    </tr>

  	</tbody>
	</table>
	</form>
	
	
	
	
  </body>
</html>
