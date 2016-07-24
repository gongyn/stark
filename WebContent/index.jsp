<%@ page language="java" 
	import="com.srk.data.CompanyData,com.srk.dbc.DatabaseConnection,java.util.ArrayList" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<!DOCTYPE html>
<html>
<head>
<title> Job Finder</title>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
</head>
<style type="text/css">
<!--
body{
	font-size:12px;
	text-align:center;
	margin:0px;
	padding:0px;
}
#pic{
	margin:0 auto;
	width:1024px;
}

#pic img{
	max-width:1618px;
	align:center;
	width:expression(docment.body.clientwidth>1022? "1022px":auto);
}


li{
	float:left;
	width:100%;
	padding:0;
	color:black;
	margin:0;
	list-style-type:none;
	background-color:#c2c2c2;
	border-right:1px solid white;
	border-bottom:1px dashed white 
}

a.static{
float:right;
	width:7em;
	text-decoration:none;
	color:white;
	background-color:purple;
	padding:0.2em 0.6em;
	border-right:1px solid white;
}
a.static:hover {background-color:#ff3300}

a.dynamic{
	text-decoration:none;
	color:#9400d3;
}
a.dynamic:hover {}

table{
	color:white;
	background-color:purple;
	width:100%;
	margin-bottom:1px
}

-->
</style>

<body>

<div class="nav">
<div class="pic"></div>
<div class= "menu"></div>
</div>

<div class="pic">
	<img src="banner5.jpg"/>
	<a href = "login.jsp" class="static">登录</a>
	<a href = "login.jsp" class="static">注册</a>

</div>
<div class="newsl">
	
	<form id="searchForm" class="searchMain" action="${pageContext.request.contextPath}/Login" method="post">
	<table id="tab" width=983 border=0 class="bd_tab">
	<tr height="25px">
		<td height="25px" class="search_tab_tdbg" style="width:10%">搜索区域：</td>
		<td height="25px" class="search_selection" style="width:10%">
			<select name="user_type">
		           <option value="0">公司名称</option> 
			       <option value="1">召开地点</option> 
			       <option value="2">发布时间</option>
			       <option value="3">来源学校</option>
			</select>
		</td>
		<td class="search_tab_tdbg" style="width:30%">
			<input type="text" name="zt" id="zt" value="" style="width:95%"/>
		</td>
		<td class="search_tab_tdbg_2" style="text-align:left">
			<input type="submit" value="搜索" class="search_inputButton"/>
		</td>
	</tr>
	</table>
</form> 
<li>
<div style="float:left;width:25%;text-align:center;font-size:20px">公司名称</div>
<div style="float:left;width:25%;text-align:center;font-size:20px">召开地点</div>
<div style="float:left;width:25%;text-align:center;font-size:20px">发布时间</div>
<div style="float:left;width:25%;text-align:center;font-size:20px">来源学校</div>
</li>
<%!
	private int page_num = 1;
%>
<%
	try{
		DatabaseConnection connector = new DatabaseConnection(page_num);
		ArrayList<CompanyData> comList = connector.getComList();
		int msgNum = comList.size();		
		for (int i=0;i<msgNum;++i){
			CompanyData tmpData =comList.get(i);
			//printData(tmpData);
			
			out.print("<li style='background-color:#c2c2c2'>");
			//out.print("<li>");
			out.print("<div style='float:left;width:25%;text-align:center'>");
			String herf = tmpData.getMsgUrl();
			String out_str = "<a href = "+ "\"" + herf + "\"" + " class='dynamic'>" + tmpData.getComName() + "</a>";
			out.print(out_str);
			out.print("</div>");
			//System.out.println(out_str);
			
			out.print("<div style='float:left;width:25%;text-align:center'>");
			out.print(tmpData.getHeldPlace());
			out.print("</div>");
			
			out.print("<div style='float:left;width:25%;text-align:center'>");
			out.print(tmpData.getPubTime());
			out.print("</div>");
			
			out.print("<div style='float:left;width:25%;text-align:center'>");
			out.print(tmpData.getSrcSchool());
			out.print("</div>");
			
			out.print("</li>");
		}
	}catch (Exception e){
		out.print("读取数据库错误");
		System.exit(0);
	}	
%>

</div>

<div>
<form id="form_page" name="form_page" action="${pageContext.request.contextPath}/Login" method="post">
	<input type="button" name="上一页" value="上一页" onclick="validate()"></input>	
		<input type="button" name="下一页" value="下一页" onclick="validate()"></input>
	第 <input type="text" name="page_num"></input>页

	 共<input type="text" name="total_page">页
	<input type="button" name="跳转" value="跳转" onclick="validate()"></input> &nbsp;&nbsp;
</form> 
</div>

</body>
</html>