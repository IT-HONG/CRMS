<%@page import="com.app.DBHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@ page  import="java.util.*" pageEncoding="GBK"%>
<jsp:useBean id="db" class="com.app.DBHelper" scope="page"/>
<%
request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
 %>
<html>
  <head>
    <title>��ϵ����Ϣ��ѯ</title>
  <!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css">
     </head>
    <script language="javascript">
   
    function check(){
    if(searchform.subsqlvalue.value==null||searchform.subsqlvalue.value==" ")
    {
    alret("�������ѯ������");
    searchform.subsqlvalue.focus();
    return false;
    }
    if(searchform.subsql.value=="cid"){
    if(isNaN(searchform.subsqlvalue.value)){
    alert("����ı���Ϊ����!");
    searchform.subsqlvalue.focus();
    
    return false;
     }
     }
    }
    </script>

  <body>
<center>
  <form name="searchform" method="post" action="doselectpart.jsp">
   <table  width="100%" height="100" border="0" cellpadding="0" cellspacing="0">
  
   <tr>
       <td align="center" colspan="5">
             ��ѯ���ͣ�
        <select width="100" name="subsql">
      <option value="lid">��ϵ�˱��</option>
</select>
     </td>
 <td>
    <input type="text" name="subsqlvalue" size="50" width="40px" height="100"> 
     <input type="submit"  name="searchpart" style="background-color:yellow" value="��ѯ " onlick="return check()">
       <img src="<%=request.getContextPath()%>/icon/look.jpg"/>
       </form>
  </td>
 </tr>
 
       
</table>
 
  <table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="3">
<tr>
   <td class="td_bg" width="5%" height="25"><b>��ϵ�˱���</b></td>
   <td class="td_bg" width="8%" height="25"><b>��ϵ������</b></td>
   <td class="td_bg" width="3%" height="25"><b>�Ա�</b></td>
   <td class="td_bg" width="5%" height="25"><b>����</b></td>
   <td class="td_bg" width="8%" height="25"><b>����</b></td>
   <td class="td_bg" width="8%" height="25"><b>�Ƿ�Ϊ����ϵ��</b></td>
   <td class="td_bg" width="8%" height="25"><b>�칫�绰</b></td>
   <td class="td_bg" width="8%" height="25"><b>�绰</b></td>
   <td class="td_bg" width="8%" height="25"><b>�����ʼ�</b></td>
   <td class="td_bg" width="8%" height="25"><b>��ַ</b></td>
   <td class="td_bg" width="8%" height="25"><b>MSN</b></td>
   <td class="td_bg" width="8%" height="25"><b>�����ͻ�</b></td>     
   <td class="td_bg" width="20%" height="25"><b>����</b></td>  
     
  </tr>
     <%
     ResultSet rsall=db.getAllRs();
     while(rsall.next()){
      %>
  
      <tr>
     <td class="td_bg" width="5%" height="25"><h3><%=rsall.getString("lid") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rsall.getString("name") %></h3></td>
     <td class="td_bg" width="3%" height="25"><h3><%=rsall.getString("sex") %></h3></td>
     <td class="td_bg" width="5%" height="25"><h3><%=rsall.getString("birth") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rsall.getString("depart") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rsall.getString("if_main") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rsall.getString("ocall") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rsall.getString("lcall") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rsall.getString("email") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rsall.getString("ladd") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rsall.getString("msn") %></h3></td>
     <td class="td_bg" width="8%" height="25"><h3><%=rsall.getString("client") %></h3></td>
     <td class="td_bg" width="20%" height="25">
      <li><img src="<%=request.getContextPath()%>/icon/update.jpg"/><a href="changeshow.jsp?lid=<%=rsall.getString("lid")%>"style="color:blue"><h3>�޸�</h3></a>
      </li>
       
       <li><img src="<%=request.getContextPath()%>/icon/insert.jpg"><a href="Add.jsp" style="color:green" lid=<%=rsall.getString("lid")%>"><h3>����</h3></a>
         </li>
         
        <li><img src="<%=request.getContextPath()%>/icon/delete.jpg"/><a onclick="return check()" href="deleteshow.jsp?lid=<%=rsall.getString("lid")%>" style="color:red"><h3>ɾ��</h3></a>
            </li>  
   </td>
      </tr> 
     
      <%
      }
       %>   
       
         </table>
   <script type="text/javascript">
  function check(){
  if(confirm("ȷ��ɾ������ϵ�˱���Ϣ?")==true) return true
  else return false;
  }
  </script>       
        
        </body>
      </html>
