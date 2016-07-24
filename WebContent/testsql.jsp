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


ul{
	float:left;
	width:100%;
	padding:0;
	margin:0;
	list-style-type:none;
	background-color:#bae3f9;
	border-right:1px solid white;
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
<ul>
<li style="background-color:#bae3f9">
<div style="float:left;width:25%;text-align:center;font-size:20px">公司名称</div>
<div style="float:left;width:25%;text-align:center;font-size:20px">召开地点</div>
<div style="float:left;width:25%;text-align:center;font-size:20px">发布时间</div>
<div style="float:left;width:25%;text-align:center;font-size:20px">来源学校</div>
</li>

<%
	try{
		DatabaseConnection connector = new DatabaseConnection();
		ArrayList<CompanyData> comList = connector.getComList();
		int msgNum = comList.size();		
		for (int i=0;i<msgNum;++i){
			CompanyData tmpData =comList.get(i);
			//printData(tmpData);
			out.print("<li style='background-color:#c2c2c2'>");
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
			
			out.print("<div style='text-align:center'></div>");
			
			out.print("</li>");
		}
	}catch (Exception e){
		out.print("读取数据库错误");
		System.exit(0);
	}	
%>

</ul>
</div>
</body>
</html>