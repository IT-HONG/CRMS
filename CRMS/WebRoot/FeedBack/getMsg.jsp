<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="connDB" class="com.connect.ConnectionManager" scope="page"></jsp:useBean>
<ul>
<%
	//ִ��SQL���
	PreparedStatement ps = connDB.getConnection().prepareStatement("select theme,id from cm_client_feedback order by id desc");
ResultSet rs=ps.executeQuery();	//��ȡ������Ϣ
if(rs.next()){
	do{
	%>
	<li><a href="FeedBack/feedback.jsp?id=<%=rs.getInt(2)%>"><%=rs.getString(1) %></a></li>
	<%
	}while(rs.next());
}else{
	out.print("<li>����������Ϣ��</li>");
}
%>
</ul>