<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>left.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
		$(".div2").click(function(){ 
			$(this).next("div").slideToggle("slow")  
			.siblings(".div3:visible").slideUp("slow");
		});
	});
</script>
<style>
body{ margin:0;font-family:微软雅黑;}
.left{ width:200px; height:100%; border-right:1px solid #CCCCCC ;#FFFFFF; color:#000000; font-size:14px; text-align:center;}
.div1{text-align:center; width:200px; padding-top:10px;}
.div2{height:40px; line-height:40px;cursor: pointer; font-size:13px; position:relative;border-bottom:#ccc 1px dotted;}
.jbsz {position: absolute; height: 20px; width: 20px; left: 40px; top: 10px; background:url(images/1.png);}
.xwzx {position: absolute; height: 20px; width: 20px; left: 40px; top: 10px; background:url(images/2.png);}
.zxcp {position: absolute; height: 20px; width: 20px; left: 40px; top: 10px; background:url(images/4.png);}
.lmtj {position: absolute; height: 20px; width: 20px; left: 40px; top: 10px; background:url(images/8.png);}
.div3{display: none;cursor:pointer; font-size:13px;}
.div3 ul{margin:0;padding:0;}
.div3 li{ height:30px; line-height:30px; list-style:none; border-bottom:#ccc 1px dotted; text-align:center;}
</style>

</head>
<body bgcolor="#03A8F6">
	<div class="left">
<div class="div1">
<div class="left_top">
				<img src="images/bbb_01.jpg"><img src="images/bbb_02.jpg"
					id="2"><img src="images/bbb_03.jpg"><img
					src="images/bbb_04.jpg"> </div>
  <div class="div2">
				<div class="jbsz"> </div>客户管理</div>
      <div class="div3">
<ul>
		<li> <a href="http://localhost:8080/CRMS/CRM/AllClient.jsp" target="main">客户资料管理</a></li>
		<li><a href="http://localhost:8080/CRMS/LinkmanInfo/select.jsp" target="main"> 联系人资料管理</a></li>
        <li> <a href="http://localhost:8080/CRMS/linkRecordManager/all_connection.jsp" target="main">联系人记录管理</a></li>
        <li> <a href="http://localhost:8080/CRMS/linkRecordManager/add.jsp" target="main">添加联系记录</a></li>
        <li> <a href="http://localhost:8080/CRMS/FeedBack/index.jsp" target="main">客户反馈管理</a></li>
        <li> <a href="http://localhost:8080/CRMS/FileManager/upload.jsp" target="main">客户文档管理</a></li>
        
</ul>
  </div>
    <div class="div2">
				<div class="xwzx"> </div>新闻中心</div>
      <div class="div3">
      <ul>
		<li> 管理文章</li>
		<li> 文章分类</li>
        <li> 添加文章</li>
        </ul>
  </div>
    <div class="div2">
				<div class="zxcp"> </div>最新产品</div>
      <div class="div3">
      <ul>
		<li>图片管理</li>
		<li> 图片分类</li>
         <li> 添加图片</li>
         </ul>
  </div>
  <div class="div2">
				<div class="lmtj"> </div> 栏目添加</div>
      <div class="div3">
      <ul>
		<li> 文章系统</li>
		<li> 图片系统</li>
        <li> 添加表单</li>
         <li> 招聘系统</li>
         </ul>
  </div>
</div>
</div>

  </body>
</html>
