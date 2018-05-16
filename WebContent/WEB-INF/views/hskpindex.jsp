<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>酒店客房部首页</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/easyui/demo/demo.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/easyui/jquery-2.2.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/easyui/easyui-lang-zh_CN.js"></script>
	<!-- 点击树形菜单后，添加tab选项 -->
<script type="text/javascript">
$(function(){
	$('ul').tree({
		onClick: function(node){
			if($('ul').tree("isLeaf",node.target)){
				var tabs = $("#tabs");
				var tab = tabs.tabs("getTab",node.text);
				if(tab){
					tabs.tabs("select",node.text);
				}else{
					tabs.tabs('add',{
					    title:node.text,
					    href: node.attributes.url,
					    closable:true,
					    bodyCls:"content"
					});
				}
			}
		}
	});
});
</script>
<style>
.footer {
	width: 100%;
	text-align: center;
	line-height: 35px;
}

.top-bg {
	background-color: #d8e4fe;
	height: 80px;
}
</style>
</head>

<body class="easyui-layout" style="overflow: scroll;">
	<div region="north" border="true">
		<div class="top-bg">
			<div style="font-size: 30px; line-height: 50px; font-weight: bold;"
				align="center">玉&nbsp;&nbsp;井&nbsp;&nbsp;湾&nbsp;&nbsp;休&nbsp;&nbsp;闲&nbsp;&nbsp;山&nbsp;&nbsp;庄&nbsp;&nbsp;管&nbsp;&nbsp;理&nbsp;&nbsp;系&nbsp;&nbsp;统
				</div>
			<div>
 
				<a name="login" value="退出系统" class="easyui-linkbutton" plain="true"
				href='${pageContext.request.contextPath}/dologin.do' style="font-size:18px;">退出</a>
				&nbsp;&nbsp;<span style="color: green;">${sessionScope.user.userName }</span>
					</div>
					
		</div>
	</div>

	<div region="south" border="true"
		style="overflow: hidden; height: 40px;">
		<div class="footer">
			版权所有：玉井湾休闲山庄
		</div>
	</div>
	<div region='west' title='功能菜单' style="width: 200px;">

		<div id="aa" class="easyui-accordion"
			style="position: absolute; top: 27px; left: 0px; right: 0px; bottom: 0px; overflow: scroll;">

			
			
			<div title="客房管理" selected="true"
				style="overflow: scroll; padding: 10px; background-color: #F8FAFF">
				<ul class="easyui-tree">
				   <li data-options="attributes:{'url':'userList'}">客房信息</li>
				    <li><span>添加客房</span></li>
				    <li><span>修改客房</span></li>
				    <li><span>删除客房</span></li>
				    <li><span>打扰房间</span></li>
					
				</div>
			<div title="客房类型管理" selected="true"
				style="overflow: scroll; padding: 10px; background-color: #F8FAFF">
				<ul class="easyui-tree">
			       <li><span>客房类型信息</span></li>
			       <li><span>添加类型</span></li> 
			       <li><span>修改类型</span></li>
			       <li><span>删除类型</span></li>
			<div title="个人信息" selected="true"
				style="overflow: scroll; padding: 10px; background-color: #F8FAFF">
				<ul class="easyui-tree">
			       <li><span>查看个人信息</span></li>
			       <li><span>修改密码</span></li> 
			       <li><span>更新个人信息</span></li>
			</div>
		</div>
	</div>
	<div data-options="region:'center',title:''">
    	<div id="tabs" class="easyui-tabs" >
		    <div title="首页" style="padding:20px;">
		        <h1>欢迎来到玉井湾休闲山庄</h1>
		    </div>
		</div>
    </div>
</body>


 
</html>