<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.ResultSet"%>
<%@ page  import="java.sql.*" pageEncoding="GBK"%>
<jsp:useBean id="mydb" class="com.app.DBHelper" scope="page"/>
<html>
<head>
    <title>���ݲ�ѯ</title>
    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css">
	</head>
  <%
  ResultSet rs=null;
  boolean mark=true;
  String mess="";
  String subsqlvalue=request.getParameter("subsqlvalue");//��һ��ҳ��Ĳ���
  String subsql=request.getParameter("subsql");
  if(subsql==null||subsql.equals("")){//�ж�Ϊ��ʱ���
  mark=false;
  mess+="<li>������<b>��ѯ����!</b></li>";
  }

  if(subsqlvalue==null||subsqlvalue.equals("")){
  mark=false;
  mess+="<li>������<b>��ѯ��ֵ��</b></li>";
  }
  if(mark)
  {
  if(subsql.equals("lid")){
  try{
  Integer.parseInt(subsqlvalue);
  }catch(Exception e){mark=false;mess="�����<b>��ϵ�˱���</b>��������!";}
 }

 }

 
  if(mark)
  mess="��ѯ�������";
   %>
 <body>
  <table  width="100%" height="100" border="1" cellpadding="0" cellspacing="0">
  <tr>
   <td colspan="13" height="50" align="center">��ܰ��ʾ!</td>
   </tr>
   <tr>
   <td colspan="13" height="50" align="center"><%=mess %></td>
   </tr>
   <tr bgcolor="lightgrey" height="20">
   <td class="td_bg" width="5%" height="45"><h3>��ϵ�˱���</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>��ϵ������</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>�Ա�</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>����</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>����</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>�Ƿ�Ϊ����ϵ��</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>�칫�绰</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>�绰</h3></td>
   <td class="td_bg" width="8%" height="45"><h3>�����ʼ�</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>��ַ</h3></td>
   <td class="td_bg" width="8%" height="45"><h3>MSN</h3></td>
    <td class="td_bg" width="8%" height="45"><h3>�����ͻ�</h3></td>    
  </tr>
  <% 
  if(mark){
  rs=mydb.getPartRs(subsql,subsqlvalue);
  System.out.print(subsql);
  if(!rs.next()){
  %>	
  <tr>
   <td class="td_bg" width="20%" height="45" colspan="5">û�м�¼��ʾ</td>
  </tr>
  <%
  }
  else{
  rs.previous();
  while(rs.next()){
      %>
     
      <tr>
      <td class="td_bg" width="5%" height="35"><h3><%=rs.getString("lid") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("name") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("sex") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("birth") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("depart") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("if_main") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("ocall") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("lcall") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("email") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("ladd") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("msn") %></h3></td>
     <td class="td_bg" width="8%" height="35"><h3><%=rs.getString("client") %></h3></td>
   </tr>
   
     
      <%
  }
   }
   mydb.closed();
   }
    %>
    </table>
         <tr>
      <td class="td_bg" colspan="2"  height="25"><img src="<%=request.getContextPath()%>/icon/return.jpg" /><a href="select.jsp" ">[����]</a></td>
    </tr>
   </body>
</html>
