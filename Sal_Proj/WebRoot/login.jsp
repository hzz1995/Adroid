<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta charset="UTF-8">
<link rel="stylesheet" href="css/xgxt_login.css" />

	
<title>教职工登录-工资系统</title>
<script type="text/javascript">
//创建一个ajax引擎
function getXmlHttp(){
	var xmlhttp;
	if(window.XMLHttpRequest){
		//// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	}else{
		//如果浏览不支持的情况下则创建ActiveXObject 
		 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlhttp;
}

function checkName2(userName){
	
	//1.获取ajax引擎
	var xmlhttp = getXmlHttp();
	var url="login";
	//open中有两个参数,1,为请请类型 get 或者post 2.访问的url(控制层)
	xmlhttp.open("post",url);
	//告知浏览器,是post请求,也就是post请求的消息头
	xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlhttp.send("id="+userName);
	
	
	xmlhttp.onreadystatechange=function(){
		console.log( xmlhttp.readyState +"响映的为"+xmlhttp.status)
		
	  if (xmlhttp.readyState==4 && xmlhttp.status==200){
		  //如果请求状态为4的时候，并且响映为200的时候，代表成功
		 
		  var msg = xmlhttp.responseText;
		  
		  document.getElementById("font").innerHTML=msg;
	  }
	}
}
</script>

  </head>
  
  <body background="img/xgxt_login_bg.jpg">
   <div id="header">
	<div class="header_title">
		<span class="title_con">工资系统</span>
	</div>
</div>

<div id="content">
	<center>
		<div class="con">
		<div class="con_title">
			<span class="con_title_sp">欢迎登录工资系统</span>
		</div>
		<div class="con_panel">
			<div class="con_input">
				<form action = "login" method = "post" onsubmit = "return validate();">
				<span>用户名：</span><input type="text" name = "id" placeholder="工号" id = "user" onblur="checkName2(this.value)"/>
				<font id="font"></font>
			</div>
			<div class="con_input">
				<span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span><input type="password" name = "password" placeholder="密码" id = "password"/>
				
			</div>
			<div class="con_select">
				<input type="radio" name="role" value="教职工" />教职工
				<input type="radio" name="role" value="工资管理员" />工资管理员
				<input type="radio" name="role" value="系统管理员" />系统管理员
			</div>
			<input type="submit" value="登    录" class="submit-btn"/>
			<input type="reset" value="重    置" class="submit-btn"/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td ><a style="margin-left:-40px" href="Regist.jsp">注册</a></td>
		</div>
		</form>

	</div>
	</center>
</div>

<div id="footer">
<div style="text-align:center;">
<p>湖南人文科技学院|联系我们|联系电话|</p>
</div>
</div>

   
  </body>
</html>
