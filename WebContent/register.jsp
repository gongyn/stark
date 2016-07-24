<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册界面</title>
	<script type="text/javascript"> 
        function validate() 
        { 
        	var username=document.forms[0].username.value; 
            var password=document.forms[0].password.value; 
            var repassword=document.forms[0].repassword.value; 
            var user_type=document.forms[0].user_type.value; 
            var schoolname=document.forms[0].schoolname.value; 
            var email_no=document.forms[0].email_no.value; 
            var phone_no=document.forms[0].phone_no.value;
            reg1 = /.*[a-zA-Z]+.*/
            reg2 = /.*[0-9]+.*/
            reg3 = /.*[^0-9a-zA-Z]+.*/
            if(username.length==0) 
                alert("用户名不能为空！"); 
            else if(username.length<6) 
                alert("用户名不能小于6 位！");
            else if(password<=0) 
                alert("密码不能为空！");
            else if(password.length<8) 
                alert("密码不能小于8 位！");
            else if(!reg1.test(password)||!reg2.test(password)||!reg3.test(password)) 
                alert("必须同同时包含数字、字母、字符!");
            else if(password!=repassword) 
                alert("两次输入密码不一致！");
            else if(user_type==0) 
                alert("请选择用户类型！");
            else if(phone_no.length==0) 
                alert("请选择学校！");
            else if(email_no.length==0) 
                alert("邮箱不能为空！");
            else if(phone_no.length==0) 
                alert("联系电话不能为空！");
            else 
               { 
                  document.forms[0].submit();
               } 
        } 
    </script>
</head>

<body>
		<form id="form2" name="form2" action="${pageContext.request.contextPath}/Register" method="post">
	用户名：　<input type="text" name="username"></input></br></br>
	登录密码：<input type="password" name="password"></input><font size=2>(密码为8位，必须同同时包含数字、字母、字符，注意区分大小写)</font></br></br>
	确认密码：<input type="password" name="repassword"></input></br></br>
	用户类型：<select name="user_type">
		           <option value="0">－－－请选择－－－</option> 
			       <option value="1">公司</option> 
			       <option value="2">个人</option>
			</select></br></br>
	所属学校：<select name="schoolname">
		           <option value="0">－－－请选择－－－</option> 
			       <option value="1">1</option> 
			       <option value="2">2</option>
			</select></br></br>
	注册邮箱：<input type="text" name="email_no"></input></br></br>
	联系电话：<input type="text" name="phone_no"></input></br></br>
	<input type="button" name="注册" value="注册" onclick="validate()"></input>
	<input type="reset" value="取消" /></input>
</form> 
 
</body>
</html>