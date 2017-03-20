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
<link rel="stylesheet" href="css/xgxt_reg.css" />
<title>教职工注册-工资系统</title>
<script type="text/javascript">
function validate(){
	
	var id = document.getElementById("user");
	var psw = document.getElementById("password");
	if(user.value == ""){
		alert("工号不能为空！");
		id.focus();
		return false;
	}
	if(psw.length<8 || psw.length>12){
		alert("输入8~12位密码");
		psw.focus();
		return false;
	}
	return true;
}
</script>

  </head>
  
  <body>
    <div id="header">
	<div class="header_title">
		<span class="title_con">工资系统</span>
	</div>
</div>

<div id="content">
	<center>
		<div class="con">
		<div class="con_title">
			<span class="con_title_sp">欢迎来到注册界面</span>
		</div>
		<div class="con_panel">
			<div class="con_input">
				<form action = "register" method = "post" onsubmit = "return validate();">
				<span>姓&nbsp;&nbsp;&nbsp;&nbsp;名：</span><input type="text" name ="name" placeholder="姓名" id = "user"/>
			</div>
			<div class="con_input">
				<span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span><input type="password" name ="psw" placeholder="密码" id = "password"/>
			</div>
			<div class="con_input">
				<span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span><input type="password" name ="psw1" placeholder="重复密码" id = "password"/>
			</div>
			<div class="con_input">
				<span>工&nbsp;&nbsp;&nbsp;&nbsp;号：</span><input type="text" name ="id" placeholder="工号" id = "password"/>
			</div>
			<div class="con_input">
				<span>性&nbsp;&nbsp;&nbsp;&nbsp;别：</span><input type="text" name = "sex" placeholder="性别" id = "password"/>
			</div>
			<div class="con_input">
				<span>手机号：</span><input type="text" name ="number" placeholder="手机号" id = "password"/>
			</div>
			<div class="con_input">
				<span>银行卡：</span><input type="text" name = "card" placeholder="银行卡号" id = "password"/>
			</div>
			<div class="con_input">
			<span>教师岗：
			<select>
			  <option name = "position" value ="教授">教授</option>
			  <option name = "position" value ="副教授">副教授</option>
			  <option name = "position" value="讲师">讲师</option>
			  <option name = "position" value="助教">助教</option>
			 </select>	
			 管理岗：<select style="width30; height:30">
			  <option name = "position1" value ="校级">校级</option>
			  <option name = "position1" value ="处级">处级</option>
			  <option name = "position1" value="科级">科级</option>
			  <option name = "position1" value="科员">科员</option>
			</select>	
			</span>
			</div>
			<input type="submit" value="注   册" class="submit-btn"/>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重    置" class="submit-btn"/>
			&nbsp;&nbsp;<td ><a style="margin-right:5px" href="login.jsp">返回</a></td>
		</div>
		</form>

	</div>
	</center>
</div>

<div style="text-align:center;">
<p>版权所有，翻版必究。</p>
</div>

  </body>
</html>
