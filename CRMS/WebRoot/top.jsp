<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>ACT��վ���ݹ���ϵͳ</title>
<link href="css/top_css.css" rel="stylesheet" type="text/css">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<body bgcolor="#03A8F6">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="194" height="60" align="center"
				background="images/top_logo.jpg"></td>
			<td align="center"
				style="background:url(images/top_bg.jpg) no-repeat"><table
					cellspacing="0" cellpadding="0" border="0" width="100%" height="33">
					<tbody>
						<tr>
							<td width="30" align="left"><img onClick="switchBar(this)"
								height="15" alt="�ر���߹���˵�" src="images/on-of.gif" width="15"
								border="0" /></td>
							<td width="320" align="left"><a class="top_link"
								href="http://localhost:8080/CRMS/right.jsp" target="main">��ҳ</a><span class="top_link">��</span>
								<a class="top_link" href="http://localhost:8080/CRMS/changepw.jsp" target="main">�޸�����</a><span
								class="top_link">��</span></td>


							<td width="80" align="right" nowrap="nowrap" class="topbar">�ٷ����棺</td>


							<td class="topbar"><a href="right.html" target="main"><img
									title="������ҳ" height="23" src="images/home.gif" width="33"
									border="0" /></a>&nbsp;</td>



						</tr>
					</tbody>
				</table>
				<table height="26" border="0" align="left" cellpadding="0"
					cellspacing="0" class="subbg" NAME=t1>
					<tbody>
						<tr align="middle">
							<td width="71" height="26" align="center" valign="middle"
								background="images/top_tt_bg.gif"><a href="right.jsp"
								target="main" class="STYLE2">������ҳ</a></td>

							<td align="center" class="topbar"><span class="STYLE2">
							</span></td>



							<td width="71" align="center" valign="middle"
								background="images/top_tt_bg.gif"><a href="http://localhost:8080/CRMS/login.jsp"
								target="_top" class="STYLE2">�˳���¼</a></td>



						</tr>
					</tbody>
				</table></td>
		</tr>
		<tr height="6">
			<td bgcolor="#1F3A65" background="images/top_bg.jpg"></td>
		</tr>
	</table>
	<script language="javascript">
	<!--
		var displayBar = true;
		function switchBar(obj) {
			if (displayBar) {
				parent.frame.cols = "0,*";
				displayBar = false;
				obj.title = "����߹���˵�";
			} else {
				parent.frame.cols = "195,*";
				displayBar = true;
				obj.title = "�ر���߹���˵�";
			}
		}
	//-->
	</script>
</body>

</html>
