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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>�ͻ���ϵ����ϵͳ��ҳ</title>
<!-- CSS -->
<link rel="stylesheet" href="css/supersized.css">
<link rel="stylesheet" href="css/login.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
<![endif]-->
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/login.js"></script>
</head>
<body>

	<div class="page-container">
		<div class="main_box">
			<div class="login_box">
				<div>
					<center><h1><font face="΢���ź�">�ͻ���Ϣ����ϵͳ</font></h1></center>
				</div>

				<div class="login_form">
					<form action="servlet/LoginServlet" method="post">
						<div class="form-group">
							<label for="j_password" class="t">��&nbsp;&nbsp;&nbsp;&nbsp;ɫ��</label>
							<select class=TxtUserCssClass name="role">
								<option value="�ͻ�">�ͻ�</option>
								<option value="����Ա">����Ա</option>
								<option value="��������Ա">��������Ա</option>
							</select>
						</div>
						<div class="form-group">
							<label for="j_username" class="t">�û�����</label> <input id="email"
								value="" name="TxtUserName" type="text" class="form-control x319 in"
								autocomplete="off">
						</div>
						<div class="form-group">
							<label for="j_password" class="t">��&nbsp;&nbsp;&nbsp;&nbsp;�룺</label>
							<input id="password" value="" name="TxtPassword" type="password"
								class="password form-control x319 in">
						</div>
						
						<div class="form-group">
							<label class="t"></label> <label for="j_remember" class="m">
								<input id="j_remember" type="checkbox" value="true">&nbsp;��ס��½�˺�!
							</label>
						</div>
						<div class="form-group space">
							<label class="t"></label>
							<button type="submit" id="submit_btn"
								class="btn btn-primary btn-lg">&nbsp;��&nbsp;¼&nbsp;</button>
							<input type="reset" value="&nbsp;��&nbsp;��&nbsp;"
								class="btn btn-default btn-lg">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Javascript -->

	<script src="js/supersized.3.2.7.min.js"></script>
	<script src="js/supersized-init.js"></script>
	<script src="js/scripts.js"></script>
</body>

</html>
