<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
<script type="text/javascript"> 
        function validate() 
        { 
        	var username=document.forms[0].username.value; 
            var password=document.forms[0].password.value; 
            var user_type=document.forms[0].user_type.value;
            if(username.length==0) 
                alert("用户名不能为空！");
            else if(password<=0) 
                alert("密码不能为空！");
            else if(user_type==0) 
                alert("请选择用户类型！");
            else 
               { 
                  document.forms[0].submit();
               } 
        } 
    </script>
</head>

<body>

<form id="form1" name="form1" action="${pageContext.request.contextPath}/Login" method="post">
	用户名：<input type="text" name="username"></input></br></br>
	密　码：<input type="password" name="password"></input></br></br>
	用户类型：<select name="user_type">
		           <option value="0">－－－请选择－－－</option> 
			       <option value="1">公司</option> 
			       <option value="2">个人</option>
			</select></br></br>
	<input type="button" name="登录" value="登录" onclick="validate()">&nbsp;
		<font size=2 color=red>没有账户？请<a href="register_page.jsp">注册</a></font>
	</input>
</form> 

</body>

</html>