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
    
    <title>My JSP 'ClientAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="Images/css1/css.css" rel="stylesheet" type="text/css">

	
  </head>
	<script type="text/javascript">   
    function Dsy()   
    {   
    this.Items = {};   
    }   
    Dsy.prototype.add = function(id,iArray)   
    {   
    this.Items[id] = iArray;   
    }   
    Dsy.prototype.Exists = function(id)   
    {   
    if(typeof(this.Items[id]) == "undefined") return false;   
    return true;   
    }   
    function change(v){   
    var str="0";   
    for(i=0;i<v;i++){ str+=("_"+(document.getElementById(s[i]).selectedIndex-1));};   
    var ss=document.getElementById(s[v]);   
    with(ss){   
    length = 0;   
    options[0]=new Option(opt0[v],opt0[v]);   
    if(v && document.getElementById(s[v-1]).selectedIndex>0 || !v)   
    {   
    if(dsy.Exists(str)){   
    ar = dsy.Items[str];   
    for(i=0;i<ar.length;i++)options[length]=new Option(ar[i],ar[i]);   
    if(v)options[1].selected = true;   
    }   
    }   
    if(++v<s.length){change(v);}   
    }   
    }   
    var dsy = new Dsy();   
    dsy.add("0",["������","�����","�ӱ�ʡ","ɽ��ʡ","���ɹ�","����ʡ","����ʡ","������ʡ","�Ϻ���","����ʡ","�㽭ʡ","����ʡ","����ʡ","����ʡ","ɽ��ʡ","����ʡ","����ʡ","����ʡ","�㶫ʡ","����������","����ʡ"," ������","�Ĵ�ʡ","����ʡ","����ʡ","����������","����ʡ","����ʡ","�ຣʡ","���Ļ���������","�½�ά���������","����ر�������","�����ر�������","̨��ʡ","����"]);   
    dsy.add("0_0",["����","������","������","������","������","������","��̨��","ʯ��ɽ��"," ���������йش壩","��ͷ����","��ɽ��","ͨ����","˳����","��ƽ��","������","������","ƽ����","������","������"," ����"]);   
    dsy.add("0_1",["��ƽ��","�Ӷ���","������","�Ͽ���","������","������","������","�����","������","������","������","����","������","������","����"]);   
    dsy.add("0_2",["ʯ��ׯ��","�żҿ���","�е���","�ػʵ���","��ɽ��","�ȷ���","��ˮ��","������","��̨��","������","������","����"]);   
    dsy.add("0_3",["̫ԭ��","˷����","��ͬ��","������","������","������","������","�ٷ���","������","�˳���","����"]);   
    dsy.add("0_4",["���ͺ�����","��ͷ��","�����","���ױ�����","������˹��","�����첼��","�����׶���","�˰���","��������","���ֹ�����","����"]);   
    dsy.add("0_5",["������","������","������","������","��˳��","������","��Ϫ��","������","��ɽ��","������","Ӫ����","�̽���","������","��«����","����"]);   
    dsy.add("0_6",["������","�׳���","������","��ƽ��","��Դ��","ͨ����","��ɽ��","�ӱ߳�����������","����"]);   
    dsy.add("0_7",["��������","��̨����","�ں���","������","���������","������","��ľ˹��","˫Ѽɽ��","������","���˰������(�Ӹ����)","ĵ����","�׸���","�绯�� ","����"]);   
    dsy.add("0_8",["������","¬����","�����","������","������","������","բ����","�����","������","������","��ɽ��","�ζ���","�ֶ�����","��ɽ��","�ɽ���","������","�ϻ���","������","������","����"]);   
    dsy.add("0_9",["�Ͼ���","������","���Ƹ���","��Ǩ��","������","�γ���","������","̩����","��ͨ��","����","������","������","������","����"]);   
    dsy.add("0_10",["������","������","������","��ɽ��","������","������","������","����","̨����","������","��ˮ��","����"]);   
    dsy.add("0_11",["�Ϸ���","������","������","������","������","������","������","������","��ɽ��","�ߺ���","ͭ����","������","��ɽ��","������","������","������","������","����"]);   
    dsy.add("0_12",["������","��ƽ��","������","������","Ȫ����","������","������","������","������","����"]);   
    dsy.add("0_13",["�ϲ���","�Ž���","��������","ӥ̶��","������","Ƽ����","������","������","������","�˴���","������","����"]);   
    dsy.add("0_14",["������","�ĳ���","������","��Ӫ��","�Ͳ���","Ϋ����","��̨��","������","�ൺ��","������","������","��ׯ��","������","̩����","������","������","������","����"]);   
    dsy.add("0_15",["֣����","����Ͽ��","������","������","������","�ױ���","������","�����","������","������","�����","�����","ƽ��ɽ��","������","������","�ܿ���","פ�����","����"]);   
    dsy.add("0_16",["�人��","ʮ����","�差��","������","Т����","�Ƹ���","������","��ʯ��","������","������","�˲���","������","��ʩ����������������","������","������","Ǳ����","��ũ������","����"]);   
    dsy.add("0_17",["��ɳ��","�żҽ���","������","������","������","������","��̶��","������","������","������","������","������","¦����","��������������������","����"]);   
    dsy.add("0_18",["������","��Զ����","�ع���","��Դ��","÷����","������","��ͷ��","������","��β��"," ������","��ݸ��","������","�麣��","��ɽ��","������","��ɽ��","������","�Ƹ���","������","ï����","տ����"," ����"]);   
    dsy.add("0_19",["������","������","������","������","�����","������","������","������","���Ǹ���","������","��ɫ��","�ӳ���","������","������","����"]);   
    dsy.add("0_20",["������","������","����"]);   
    dsy.add("0_21",["������","��ɿ���","������","ɳƺ����","��������","�ϰ���","������","��ʢ��","˫����","�山��","������","������","������","ǭ����","������","�ϴ���","������","������","�ϴ���","�뽭��","������","ͭ����","������","�ɽ��","�潭��","��¡��","�ᶼ��","�ǿ���","����","��Ϫ��","��ɽ��","�����","������","����","ʯ��������������","��ˮ����������������","��������������������","��ɽ����������������","����"]);   
    dsy.add("0_22",["�ɶ���","��Ԫ��","������","������","�ϳ���","�㰲��","������","�ڽ���","��ɽ��","�Թ���","������","�˱���","��֦����","������","������","üɽ��","�Ű�","���Ӳ���Ǽ��������","���β���������","��ɽ������������","����"]);   
    dsy.add("0_23",["������","����ˮ��","������","��˳��","�Ͻڵ���","ͭ�ʵ���","ǭ�������嶱��������","ǭ�ϲ���������������","ǭ���ϲ���������������","����"]);   
    dsy.add("0_24",["������","������","��Ϫ��","��ɽ��","��ͨ��","������","�ն���","�ٲ���","������","�º���徰����������","ŭ��������������","��������������","��ӹ���������������","��ɽ׳������������","�������������","�������������","��˫���ɴ���������","����"]);   
    dsy.add("0_25",["������","��������","��������","��֥����","ɽ�ϵ���","�տ������","�������","����"]);   
    dsy.add("0_26",["������","�Ӱ���","ͭ����","μ����","������","������","������","������","������","����"]);   
    dsy.add("0_27",["������ ","��������","�����","������","��ˮ��","������","��Ȫ��","��Ҵ��","������","ƽ����","������","¤����","���Ļ���������","���ϲ���������","����"]);   
    dsy.add("0_28",["������","��������","��������������","���ϲ���������","��������������","���ϲ���������","�������������","�����ɹ������������","����"]);   
    dsy.add("0_29",["������","ʯ��ɽ��","������","��ԭ��","������","����"]);   
    dsy.add("0_30",["��³ľ����","����������","��ʲ����","�����յ���","�������","��³������","���ܵ���","���ǵ���","����̩����","�������տ¶�����������","���������ɹ�������","�������������� ���������������","���������ɹ�������","������","��������","�������","ͼľ�����","����"]);   
    dsy.add("0_31",["���","����"]);   
    dsy.add("0_31",["����","����"])   
    dsy.add("0_32",["̨��","����"])   
    //-->   
    var s=["s1","s2"];   
    var opt0 = ["��ѡ��","��ѡ��"];   
    function setup()   
    {   
    for(i=0;i<s.length-1;i++)   
    document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");   
    change(0);   
    }   
    </script>   
<body>

<form method="post" action="/CRM/servlet/Add">

<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><img src="icon/insert.jpg">��� �ͻ���Ϣ</th>
    </tr>

    <tr>
      <td class="td_bg" width="17%" height="25">�ͻ����<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="cid" /></td>
    </tr>
    
    <tr>
      <td class="td_bg" width="17%" height="25">�ͻ�����<span class="TableRow2"></span></td>
      <td width="83%" class="td_bg"><input type="text" name="cname" /></td>
    </tr>



    <tr>
      <td class="td_bg" height="25">��ַ</td>
      <td width="83%" class="td_bg"><input type="text" name="cadd" /></td>
    </tr>


    <tr>
      <td class="td_bg" width="17%" height="25">�绰</td>
      <td class="td_bg" width="83%"><input type="text" name="ccall" /> </td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">�����ʼ�</td>
      <td class="td_bg" width="83%"><input type="text" name="cmail" /></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">�Ǽ�ʱ��</td>
      <td class="td_bg" width="83%">
		<select name="year"><option value="0">��ѡ��</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option>
		<option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option>
		<option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value"2008">2008</option>
		<option value="2009">2009</option><option value="2040">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option>
		<option value="2014">2014</option><option value="2015">2015</option>
		</select>
		
		<select name="month"><option value="0">��ѡ��</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option>
		<option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option>
		<option value="11">10</option><option value="12">11</option><option value="13">12</option>
		</select>
		
		<select name="day"><option value="0">��ѡ��</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option>
		<option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option>
		<option value="9">9</option><option value="11">10</option><option value="12">11</option><option value="13">12</option>
		<option value="14">13</option><option value="15">15</option><option value="16">16</option><option value="17">17</option>
		<option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option>
		<option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option>
		<option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option>
		<option value="30">30</option><option value="31">31</option>
		</select>
		
	  </td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">�´���ϵʱ��</td>
      <td class="td_bg" width="83%">
		<select name="n_year"><option value="0">��ѡ��</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option>
		<option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option>
		<option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value"2008">2008</option>
		<option value="2009">2009</option><option value="2040">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option>
		<option value="2014">2014</option><option value="2015">2015</option>
		</select>
		
		<select name="n_month"><option value="0">��ѡ��</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option>
		<option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option>
		<option value="11">10</option><option value="12">11</option><option value="13">12</option>
		</select>
		
		<select name="n_day"><option value="0">��ѡ��</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option>
		<option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option>
		<option value="9">9</option><option value="11">10</option><option value="12">11</option><option value="13">12</option>
		<option value="14">13</option><option value="15">15</option><option value="16">16</option><option value="17">17</option>
		<option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option>
		<option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option>
		<option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option>
		<option value="30">30</option><option value="31">31</option>
		</select>
		
	  </td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">������Ա</td>
      <td class="td_bg" width="83%"><input type="text" name="linkman" /></td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">�ͻ��ȼ�</td>
      <td class="td_bg"><select name="level"><option value="��ͨ">��ͨ</option><option value="�߼�">�߼�</option><option value="����">����</option></select></td>
    </tr>

	<tr>
      <td class="td_bg" width="17%" height="25">������ҵ </td>
      <td class="td_bg" width="83%"><input type="text" name="c_industry" /></td>
    </tr>
    
	<tr>
      <td class="td_bg" width="17%" height="25">����</td>
      <td width="83%" class="td_bg">
      <select name="province" id="s1"><option></option></select>   
    <select name="city" id="s2">   
    <option></option>   
    </select>   
    <script type="text/javascript">
    setup()
    </script>
    </td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" height="25">������</td>
      <td width="83%" class="td_bg"><input type="text" name="bank" /></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" height="25">�����˺�</td>
      <td width="83%" class="td_bg"><input type="text" name="bank_id" /></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" height="25">����</td>
      <td width="83%" class="td_bg"><select name="credit"><option value="��">��</option><option value="����">����</option><option value="��">��</option></select></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" height="25">����</td>
      <td width="83%" class="td_bg"><input type="text" name="integration" /></td>
    </tr>
	
	<tr>
      <td class="td_bg" width="17%" colspan="2"  height="25"><input type="submit" value="���"/><input type="reset" value="����"/></td>
    </tr>

  </tbody>
</table>
</form>
</body>

</html>
