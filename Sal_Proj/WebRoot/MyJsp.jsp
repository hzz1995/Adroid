<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   
   <title>高校工资管理系统</title>
	<link href="css/jquery.bxslider.css" rel="stylesheet" type="text/css">
	<link href="css/font-awesome.css" rel="stylesheet" />
	<link href="css/index.css" rel="stylesheet" />
	<script src = "js/jquery-3.1.1.min.js" type="text/javascript"></script>
   <script type="text/javascript">
   var name = null;
   var Value = null;
   var JBGZ = null;
   var KSF = null;
   var GWJT = null;
   
   function GetValue(Str) {
		name = Str;
	   }
   function GetName(name1) {
		Value = name1;
   }
   
   function GetGWJT(Str) {
		GWJT = Str;
		
	   }
   
   function GetKSF(Str) {
		KSF = Str;
		
	   }
   
   function GetJBGZ(Str) {
		JBGZ = Str;
		
	   }
   
   function display(){
	$.ajax({
		type:"POST",
		url:"/Sal_Proj/viewallinfo",
		data:{"1":name,"content":Value},
		success:function(msg){
			$("#info").load(location.href+" #info"); 
		}
	});
	}
   
   function display1(){
		$.ajax({
			type:"POST",
			url:"/Sal_Proj/update",
			data:{"repayStatus":name,"content":Value},
			success:function(msg){
				$("#info1").load(location.href+" #info1"); 
			}
		});
		}
   
   function display3(){
		$.ajax({
			type:"POST",
			url:"/Sal_Proj/addsalary",
			data:{"id":Value,"jbgz":JBGZ,"ksf":KSF,"gwjt":GWJT},
			success:function(msg){
				$("#info2").load(location.href+" #info2"); 
			}
		});
		}
   
   function display4(){
		$.ajax({
			type:"POST",
			url:"/Sal_Proj/querysalbyid",
			data:{"id":Value},
			success:function(msg){
				$("#info3").load(location.href+" #info3"); 
			}
		});
		}
	

   </script>
<link rel="stylesheet"  href="css/style.css">


 </head>
 
 <body >
 
 <div class="mainlayout">
		
		<!-- top栏 -->
<div class="main_toplayout">
	<div class="header">
       <a class="navbar-brand" href="index.html">
       	<img src="./images/9.jpg" height="120px" width="98.7%">
       </a>
       <div class="header-left">
         <b style="font-size :25px">欢迎您, ${sessionScope.logininfo.id }系统管理员</b>
      <a href="index.jsp" class="btn btn-danger" title="Logout" ><b>消息 </b><i class="fa fa-envelope-o "></i></a>
       <a href="login.jsp" class="btn btn-danger"title="Logout"><b>退出 </b><i class="fa fa-exclamation-circle"></i></a>
    		 </div>
     </div>
</div>

<!-- left栏 -->
<div class="layout">
	<div class="left_layout">
		<!-- 主页目录 -->
<div class="homepage menu_color">
	<div class="menu fa"><span>我的主页</span></div>
	<ul  class="leftmenu">
		<li class="fa fa-plus-square-o fa-bank">主页</li>
	</ul>
</div>
<!-- 教职工信息 -->
<div class="financial_management menu_color">
	<div class="menu fa"><span>教职工信息</span></div>
	<ul  class="leftmenu hide">
		<li class="fa fa-plus-square-o fa-desktop">教职工档案</li>
		<li class="fa fa-plus-square-o">修改教职工信息</li>
		<li class="fa fa-plus-square-o">删除教职工信息</li>
		<li class="fa fa-plus-square-o">添加教职工信息</li>
		
	</ul>
</div>
<!-- 工资管理 -->
<div class="invoice_flow_inquiry menu_color">
	<div class="menu fa"><span>工资管理</span></div>
	<ul  class="leftmenu hide">
		<li class="fa fa-plus-square-o fa-credit-card">工资核算</li>
		<li class="fa fa-plus-square-o fa-credit-card">工资查询</li>
	</ul>
</div>
<!-- 公布公告 -->
		<div class="batch_management menu_color">
			<div class="menu fa"><span>公布公告</span></div>
			<ul  class="leftmenu hide">
				<li class="fa fa-plus-square-o fa-list-alt">添加公告</li>
				<li class="fa fa-plus-square-o fa-list-alt">删除公告</li>
			</ul>
		</div>
	</div>
		
</div>

<!-- 内容栏 -->
<div id="bb" class="right_layout">
	
	<!-- tab内容 -->
<div class="tabdiv"></div>

<!-- 主页内容 -->
<div class="r_homepage">
		<ul class="show" >
			<li>
				<div class="slider6" >
   				 <div class="slide" >
   				 		<img src="./images/1.jpg" height="500px" title="无题">
   				 		<div class="bx-caption">
   				 			<span>WELCOME TO PH-YXD-FA</span>
   				 		</div>
   				 </div>
   				 <div class="slide" >
   				 		<img src="./images/2.jpg" height="500px">
   				 		<div class="bx-caption">
   				 			<span>WELCOME TO PH-YXD-FA</span>
   				 		</div>
   				 </div>
   				 <div class="slide" >
   				 		<img src="./images/3.jpg" height="500px">
   				 		<div class="bx-caption">
   				 			<span>WELCOME TO PH-YXD-FA</span>
   				 		</div>
   				 </div>
				 <div class="slide" >
   				 		<img src="./images/bj1.jpg" height="500px">
   				 		<div class="bx-caption">
   				 			<span>WELCOME TO PH-YXD-FA</span>
   				 		</div>
   				 </div>
				 <div class="slide" >
   				 		<img src="./images/5.jpg" height="500px">
   				 		<div class="bx-caption">
   				 			<span>WELCOME TO PH-YXD-FA</span>
   				 		</div>
   				 </div>
 				</div>
			</li>
		</ul>
</div>

<!--查询 职工信息-->
<div class="r_financial_management">
	
<!-- 查询职工档案-->
<ul class="hide" >
	<li>
		<div>
		<form action="" method="">
			<table class="banking_processing_tit">
				<tr>
					<td style="width:80px">查询方式：</td>
<td style="text-align:left">
	<select name = "1" onchange="GetValue(this.value)" >
   	<option  value="">  == 请选择 ==  </option>
	<option  value="all">所有</option>
    	<option value="id">教职工号</option>
    	<option value="name">教职工姓名</option>
		</select>
</td>

<td style="width:80px">输入：</td>
<td style="text-align:left">
<input id="trxDate" type = "text" name = "content" onblur = "GetName(this.value)" style="width:208px" />												
	
			</td>
		
			<td colspan="6">
					<input name="Submit" type="button" onclick="display()" class="buttonstyle" value="查 询" />	
			</td>
		</tr>
	</table>
	</form>
</div>

<!-- 职工档案 -->
<div >
	<table  cellspacing="0" cellpadding="4" class="banking_processing_con">
		<tr>
			<td colspan="3" class="table_tdheight"><span>教职工档案</span></td>
		</tr>
		<tr>
			<td width="2"></td>
			<td align="center" valign="top">

				<table  id = "info" border="0" class="banking_processing_con_tit" cellspacing="0" cellpadding="4">
					<tr align="center">
						<th align="center">姓名</th>
						<th align="center">工号</th>
						<th align="center">年龄</th>
						<th align="center">性别</th>
						<th align="center">手机号</th>
						<th align="center">银行卡号</th>
					</tr>
					<tr class="tr_addcolor">
				<c:forEach items="${sessionScope.SearchInfo }" var = "bre" begin ="0" >
	   		<tr>
	   		<td align="center">${bre.name}</td>
	   		<td align="center">${bre.id }</td>
	   		<td align="center">${bre.age}</td>
			<td align="center">${bre.sex}</td>
			<td align="center">${bre.number}</td>
			<td align="center">${bre.card}</td>
		</tr>
								</c:forEach>
						</table>
					</td>
					<td width="2"></td>
				</tr>
				<tr height="15">
					<td colspan="3">&nbsp;</td>
				</tr>
				<tr>
				</tr>
						</table>
						</div>
					
</ul>
<!-- 
</ul>
<!-- 
</ul>
<!-- 
</ul>
<!-- 修改职工信息 -->
<ul class="hide" >
	<li>
		<div>
			<table class="compensatory">
				<tr align="center">
					
				<!-- 工号:<input type = "text" name = "id" onblur=""></input> -->
					<td width="100px" height="30" align="right" class="form_text">修改条目：</td>
		   			<td width="150px" height="30" align="left" class="form_text">
		   			
					<select id="repayStatus" name="repayStatus" style="width:150" onchange="GetValue(this.value)">
     		<option value="">== 请选择 ==</option>
    			<option value="number">手机号</option>
    			<option value="card">银行卡号</option>
    			
    	</select>
				
			</td>
<td width="100px" height="30" align="right" class="form_text">输入内容：</td>
			<td width="150px" height="30" align="left" class="form_text">
			
				<input width="100px" type="text" style="width:208px" id="endDate" name="content" onblur="GetName(this.value)">	
				</td>
		</td>
  <td  width="100px" height="30"><input id="checkButton1" name="checkButton1" type="button" class="buttonstyle" value="修改" onclick="display1()"></td>
		</tr>
	</table>
</div>
<!-- 修改职工信息查询显示内容 -->
<div>
	<table id="info1" cellspacing="0" cellpadding="4" class="banking_processing_con">
		<tr>
			<td colspan="3" class="table_tdheight"><span>修改结果 </span></td>
		</tr>
		<tr>
			<td width="2"></td>
			<td align="center" valign="top">
				<table  border="0" class="banking_processing_con_tit" cellspacing="0" cellpadding="4">
					<tr align="center" >
					<th align="center">职工号</th>
						<!-- <th align="center">姓名</th> -->
						<th align="center">年龄</th>
						<th align="center">性别</th>
						<th align="center">手机号</th>
						<th align="center">银行卡号</th>
					
					</tr>
					<tr class="tr_addcolor">
						
				<c:forEach items="${sessionScope.SearchInfo }" var = "bre" begin ="0" >
	   		<tr>
	   		<td align="center">${bre.id}</td>
	   		<%-- <td align="center">${bre.name }</td> --%>
	   		<td align="center">${bre.age}</td>
			<td align="center">${bre.sex}</td>
			<td align="center">${bre.number}</td>
			<td align="center">${bre.card}</td>
			
		</tr>
								</c:forEach>
						
					</tr>

	
					<!-- 分页 -->
									<tr class="fenye_style">
										<td colspan="7" class="gigantic pagination">
											<a href="/?page=1" class="fa fa-angle-double-left" data-action="first"></a>
											<a href="/?page=39" class="fa fa-angle-left" data-action="previous"></a>
											<input type="text">
											<a href="/?page=40" class="fa fa-angle-right" data-action="next"></a>
											<a href="/?page=40" class="fa fa-angle-double-right" data-action="last"></a>
										</td>
									</tr>
								</table>
								
							</td>
							<td width="2"></td>
						</tr>
					</table>
				</div>
			</li>
		</ul>
<!--删除职工信息-->
						<ul class="hide" >
							<li>
								<div>
									<table class="fee_payment">
										<tr>
										<td width="20">&nbsp;</td>
											<td width="160" align="right" class="form_text">删除方式：</td>
											<td style="text-align:left">
												<select onchange="setBankNo()" >
										    	<option value="">  == 请选择 ==  </option>
										     	<option value="PENAL">职工号</option>
										     	<option value="INSURE">姓名</option>
								  			</select>
											</td>
											
											 <td width="160" align="right" class="form_text">删除条目：</td>
											<td width="160" align="left" class="form_text">
												<input id="endDate" style="width:208px"  name="" style="width:60%">
											</td>
										<td width="20">&nbsp;</td>
											<td align="left"><input name="Submit" type="button" class="buttonstyle" value="删除" onclick="doPost()">
											</td>
										</tr>
									</table>
								</div>
								<!-- 删除职工信息 结果-->
								<div>
								    <table  cellspacing="0" cellpadding="4" class="banking_processing_con">
									<tr>
											<td colspan="3" class="table_tdheight"><span>删除明细 </span></td>
										</tr>
										<tr>
											<td width="2"></td>
											<td align="center" valign="top">
											<form name="detailForm" method="post">
												<table  border="0" class="banking_processing_con_tit" cellspacing="0" cellpadding="4">
													<tr align="center" >
														<th align="center">职工号</th>
														<th align="center">姓名</th>
														<th align="center">职称</th>
														<th align="center">操作</th>
													</tr>
													
													<!-- 分页 -->
													<tr class="fenye_style">
														<td colspan="3" class="gigantic pagination">
															<a href="/?page=1" class="fa fa-angle-double-left" data-action="first"></a>
															<a href="/?page=39" class="fa fa-angle-left" data-action="previous"></a>
															<input type="text">
															<a href="/?page=40" class="fa fa-angle-right" data-action="next"></a>
															<a href="/?page=40" class="fa fa-angle-double-right" data-action="last"></a>
														</td>
													</tr>
												</table>
												</form>
											</td>
											<td width="2"></td>
										</tr>
									</table>
								</div>
							</li>
						</ul>
				<!-- 添加职工信息 -->
						<ul class="hide" >
							<li>
								<div>
									<table class="Recharge_public">
										<tr align="center">
											<td width="100px" height="30" align="right" class="form_text">姓名：</td>
								   			<td width="150px" height="30" align="left" class="form_text">
								   				<input id="endDate" style="width:208px"  name="endDate" style="width:60%" >
								   			</td>
											<td width="100px" height="30" align="right" class="form_text">职工号：</td>
								   			<td width="150px" height="30" align="left" class="form_text">
								   				<input id="endDate" style="width:208px"  name="endDate" style="width:60%" >	
												</td>
											<td width="100px" height="30" align="right" class="form_text">职称：</td>
								   			<td width="150px" height="30" align="left" class="form_text">
								   				<input id="endDate" style="width:208px"  name="endDate" style="width:60%" >
								   			</td>
											<tr>
								   			<td width="100px" height="30" align="right" class="form_text">基本工资：</td>
								   			<td width="150px" height="30" align="left" class="form_text">
								   				<input id="endDate" style="width:208px"  name="endDate" style="width:60%" >
								   			</td>
								   			<td width="100px" height="30" align="right" class="form_text">岗位津贴：</td>
								   			<td width="150px" height="30" align="left" class="form_text">
								   				<input id="endDate" style="width:208px"  name="endDate" style="width:60%" >
								   			</td>
								   			<td width="100px" height="30" align="right" class="form_text">课时费：</td>
								   			<td width="150px" height="30" align="left" class="form_text">
								   				<input id="endDate" style="width:208px"  name="endDate" style="width:60%" >
								   			</td>
											</tr>
								   			<td width="100px" height="30" align="right" class="form_text">实发工资：</td>
								   			<td width="150px" height="30" align="left" class="form_text">
								   				<input id="endDate" style="width:208px"  name="endDate" style="width:60%" >
								   			</td>
										   <td  width="100px" height="30">
										   	<input id="checkButton1" name="checkButton1" type="button" class="buttonstyle" value="添加" onclick="getRechargeList()">
										   </td>
										</tr>
									</table>
								</div>
								<!-- 添加结果 -->
								<div>
									<table  cellspacing="0" cellpadding="4" class="banking_processing_con">
										<tr>
											<td colspan="3" class="table_tdheight"><span>添加结果 </span></td>
										</tr>
										<tr>
											<td width="2"></td>
											<td align="center" valign="top">
											<form name="detailForm" method="post">
												<table  border="0" class="banking_processing_con_tit" cellspacing="0" cellpadding="4">
													<tr align="center" >
														<th align="center">姓名</th>
														<th align="center">职工号</th>
														<th align="center">职称</th>
														<th align="center">基本工资</th>
														<th align="center">岗位津贴</th>
														<th align="center">课时费</th>
														<th align="center">实发工资</th>
													</tr>
													<tr class="tr_addcolor">
														<td align="center">优秀</td>
														<td  align="center">6666</td>
														<td  align="center">门卫</td>
														<td align="center">￥200</td>
														<td  align="center">100</td>
														<td  align="center">￥200</td>
														<td  align="center">1500</td>
													</tr>
													
													<!-- 分页 -->
													<tr class="fenye_style">
														<td colspan="7" class="gigantic pagination">
															<a href="/?page=1" class="fa fa-angle-double-left" data-action="first"></a>
															<a href="/?page=39" class="fa fa-angle-left" data-action="previous"></a>
															<input type="text">
															<a href="/?page=40" class="fa fa-angle-right" data-action="next"></a>
															<a href="/?page=40" class="fa fa-angle-double-right" data-action="last"></a>
														</td>
													</tr>
												</table>
												</form>
											</td>
											<td width="2"></td>
										</tr>
									</table>
								</div>
							</li>
						</ul>
				</div>

<!-- 工资管理-->
<div class="r_invoice_flow_inquiry">
		<!-- 工资核算-->
<ul class="hide"  >
	<li>
		<div>
			<table class="check_statements">
				<tr>
				
					<td width="8%" height="30" align="right" class="form_text">职工号：</td>
					<td width="10%" height="30" align="left" class="form_text">
			  			<input type="text" id="khmc" name="id" value="" onblur="GetName(this.value)"/>
					</td>
					<td width="8%" height="30" align="right" class="form_text">基本工资：</td>
					<td width="10%" height="30" align="left" class="form_text">
			  			<input type="text" id="khmc" name="jbgz" value="" onblur="GetJBGZ(this.value)"/>
					</td>
					
					<td width="8%" height="30" align="right" class="form_text">岗位津贴：</td>
					<td width="10%" height="30" align="left" class="form_text">
			 			<input type="text" id="kfhm" name="gwjt" value="" onblur="GetGWJT(this.value)"/>
					</td>
					
					<td width="10%" height="30" align="right" class="form_text">课时费：</td>
					<td width="10%" height="30" align="left" class="form_text">
				        <input type="text" id="loanNo" name="ksf" value="" onblur="GetKSF(this.value)"/>
					</td>
						

				</tr>
				<tr>
					<td align="center" colspan="8">
						<input name="Submit" type="button" class="buttonstyle" value="计算" onclick="display3()">
				
			</td>
		</tr>
	</table>
</div>
<!-- 核算结果-->
<div>
	<table  cellspacing="0" cellpadding="4" class="banking_processing_con">
		<tr>
			<td colspan="3" class="table_tdheight"><span>查询结果 </span></td>
		</tr>
		<tr>
			<td width="2"></td>
			<td align="center" valign="top">
			<form name="detailForm" method="post">
				<table id="info2" border="0" class="banking_processing_con_tit" cellspacing="0" cellpadding="4">
					<tr align="center" >	
                                                
                        <th align="center">职工号</th>														
						<th align="center">基本工资</th>
						<th align="center">课时费</th>
						<th align="center">岗位津贴</th>
						<th align="center">总计</th>
					</tr>
					
			<c:forEach items="${applicationScope.salinfo }" var = "bre" begin ="0" >
	   		<tr>
	   		<td align="center">${bre.id}</td>
	   		<td align="center">${bre.jbgz}</td>
	   		<td align="center">${bre.ksf }</td>
	   		<td align="center">${bre.gwjt}</td>
			<td align="center">${bre.count}</td>			
		</tr>
								</c:forEach> 
					<!-- 分页 -->
							<tr class="fenye_style">
								<td colspan="12" class="gigantic pagination">
									<a href="/?page=1" class="fa fa-angle-double-left" data-action="first"></a>
									<a href="/?page=39" class="fa fa-angle-left" data-action="previous"></a>
									<input type="text">
									<a href="/?page=40" class="fa fa-angle-right" data-action="next"></a>
									<a href="/?page=40" class="fa fa-angle-double-right" data-action="last"></a>
								</td>
							</tr>
						</table>
						</form>
					</td>
					<td width="2"></td>
				</tr>
			</table>
		</div>
	</li>
</ul>

<!-- 工资查询-->
<ul class="hide" >
	<li>
		<div>
			<table class="related_transaction_upload">
				<tr>
					<td width="15%" height="30" align="right" class="form_text">职称：</td>
					<td width="10%" height="30" align="left" colspan="1" class="form_text">
						<select id="incomeRelation" name="incomeRelation" style="width: 230">
		<option value="">== 请选择 ==</option>
		<option value="">教授</option>
		<option value="">副教授</option>
		<option value="">讲师</option>
		<option value="">助教</option>
		
		
			
		
	</select>
</td>
<td width="15%" height="30" align="right" class="form_text">工号：</td>
<td width="15%" height="30" align="left" class="form_text">
	<input type="text" id="incomeSubjectNo" name="incomeSubjectNo" onblur = "GetName(this.value)">
</td>


	<td align="center" colspan="8">
		<input name="Submit" type="button" class="buttonstyle" value="查询" onclick="display4()">
			</td>
		</tr>
	</table>
</div>

<!-- 工资查询结果 -->
<div>
	<table  cellspacing="0" cellpadding="4" class="banking_processing_con">
		<tr>
			<td colspan="3" class="table_tdheight"><span>工资表详细汇总 </span></td>
		</tr>
		<tr>
			<td width="2"></td>
			<td align="center" valign="top">
			<form name="detailForm" method="post">
				<table  id ="info3" border="0" class="banking_processing_con_tit" cellspacing="0" cellpadding="4">

										
					<tr align="center" >
						<th align="center">工号</th>
						<!-- <th align="center">姓名</th> -->
						<th align="center">基本工资</th>
						<th align="center">岗位津贴</th>
						<th align="center">课时费</th>
						<th align="center">总计</th>
					</tr>
			<c:forEach items="${sessionScope.id_salinfo }" var = "bre" begin ="0" >
	   		<tr>
	   		<td align="center">${bre.id}</td>
	   		<td align="center">${bre.jbgz}</td>
	   		<td align="center">${bre.ksf }</td>
	   		<td align="center">${bre.gwjt}</td>
			<td align="center">${bre.count}</td>			
		</tr>
								</c:forEach> 
					<!-- 分页 -->
									<tr class="fenye_style">
										<td colspan="6" class="gigantic pagination">
											<a href="/?page=1" class="fa fa-angle-double-left" data-action="first"></a>
											<a href="/?page=39" class="fa fa-angle-left" data-action="previous"></a>
											<input type="text">
											<a href="/?page=40" class="fa fa-angle-right" data-action="next"></a>
											<a href="/?page=40" class="fa fa-angle-double-right" data-action="last"></a>
										</td>
									</tr>
								</table>
								</form>
							</td>
							<td width="2"></td>
						</tr>
					</table>
				</div>
			</li>
		</ul>
</div>

<!-- 公布公告-->
<div class="r_batch_management">
	<!-- 公布公告 -->
<ul class="hide" >
	<li>
			<div>
			<table class="related_transaction_upload">
				<tr>
					<td width="15%" height="30" align="right" class="form_text">公告类型：</td>
					<td width="10%" height="30" align="left" colspan="1" class="form_text">
					
						<select id="repayStatus" name="repayStatus" style="width:150" onchange="GetValue(this.value)">
     		<option value="">== 请选择 ==</option>
    			<option value="number">紧急</option>
    			<option value="card">普通</option>		
	</select>
	<td width="15%" height="30" align="right" class="form_text">发布内容：</td>
<td width="15%" height="30" align="left" class="form_text"/>
	<input type="text" id="incomeSubjectNo" name="incomeSubjectNo">
</td>
</td>
<td width="15%" height="30" align="right" class="form_text">发布者工号：</td>
<td width="15%" height="30" align="left" class="form_text">
	<input type="text" id="incomeSubjectNo" name="incomeSubjectNo"/>
</td>


	<td align="center" colspan="8">
		<input name="Submit" type="button" class="buttonstyle" value="查询" onclick="display4()">
			</td>
		</tr>
	</table>
</div>
		<div>
			<table class="bulk_management banking_processing_con_tit">
				<tr>
					<th style="width:20%">公告名称</th>
<th style="width:15%">创建时间</th>
<th style="width:10%">发布公告者工号</th>
<th style="width:10%">发布类型</th>
<th style="width:15%">发布内容</th>

</tr>


<tr class="tr_addcolor">
	<td>通知</td>
	<td>2016-05-12 13:48:02</td>
	<td  >14436320</td>
	<td>紧急</td>
	<td>告急12365512</td>
	
</tr>
<!-- 分页 -->
				<tr class="fenye_style">
					<td colspan="7" class="gigantic pagination">
						<a href="/?page=1" class="fa fa-angle-double-left" data-action="first"></a>
						<a href="/?page=39" class="fa fa-angle-left" data-action="previous"></a>
						<input type="text">
						<a href="/?page=40" class="fa fa-angle-right" data-action="next"></a>
						<a href="/?page=40" class="fa fa-angle-double-right" data-action="last"></a>
					</td>
				</tr>
			</table>
		</div>
	</li>
</ul>
<!-- 公布公告信息 -->
<ul class="hide" >
	<li>
		<div>
			<table class="batch_task_management banking_processing_con_tit">
				<tr>
					<th style="width:20%">公告名称</th>
<th style="width:15%">创建时间</th>
<th style="width:10%">发布公告者工号</th>
<th style="width:10%">发布类型</th>
<th style="width:15%">发布内容</th>
					<th>删除</th>
				</tr>

<tr class="tr_addcolor">
	<td>通知</td>
	<td>2016-05-12 13:48:02</td>
	<td  >14436320</td>
	<td>紧急</td>
	<td>告急1231231512154512151315135321351511315135</td>
	<td><input name="Submit" id="queryButton" type="button" value="删除" onclick="doPost()"></td>
</tr>
<!-- 分页 -->
								<tr class="fenye_style">
									<td colspan="6" class="gigantic pagination">
										<a href="/?page=1" class="fa fa-angle-double-left" data-action="first"></a>
										<a href="/?page=39" class="fa fa-angle-left" data-action="previous"></a>
										<input type="text">
										<a href="/?page=40" class="fa fa-angle-right" data-action="next"></a>
										<a href="/?page=40" class="fa fa-angle-double-right" data-action="last"></a>
									</td>
								</tr>
							</table>
						</div>
					</li>
				</ul>
		</div>
	</div>
	    </ul>
				
	  </div>
	  
	  <script src="js/jquery-1.10.2.js"></script>
		<script src="js/pagination.js"></script>
		<script type="text/javascript" src="js/jquery.bxslider.js"></script>
		<script type="text/javascript" src="./js/adddate.js"></script>
		<script src="js/jquery.contextmenu.r2.js"></script>
		<script src="js/style.js"></script>

  </body>
</html>
