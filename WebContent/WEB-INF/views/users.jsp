<%@ page language="java" contentType="text/html; charset=utf-8"    
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    
<%    
    String path = request.getContextPath();    
    String basePath = request.getScheme() + "://"    
            + request.getServerName() + ":" + request.getServerPort()    
            + path ;    
%>    
<html>    
<head>    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">    
<title>用户列表</title>    
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
	<script type="text/javascript">
	var url;
	
	$(function(){
		var p=$("#dg").datagrid('getPager');
		 $(p).pagination({
// 				total:20, 
				pageSize:10,
// 				pages:3,
				pageNumber:1,
				pageList:[5,10,15,20],
// 				showPageList:false,
// 		        pageSize: 10,//每页显示的记录条数，默认为10 
// 		        pageList: [5,10,15],//可以设置每页记录条数的列表 
		        beforePageText: '第',//页数文本框前显示的汉字 
		        afterPageText: '页    共 {pages} 页', 
		        displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录',
// 		        onBeforeRefresh:function(){
// 	            $(this).pagination('loading');
// 	            alert('before refresh');
// 	             $(this).pagination('loaded');
// 	            onSelectPage:function(pageNumber, pageSize){
// 	        		$(this).pagination('loading');
// 	        		alert('pageNumber:'+pageNumber+',pageSize:'+pageSize);
// 	        		$(this).pagination('loaded');
		 });
	});
	
	function searchUser() {
// 		$.get("${pageContext.request.contextPath}/easyui/list", {
// 			username: $("#s_userName").val()
// 		}, function(data) {
// //				var data = eval('(' +data+ ')');
// 			if (data!=null) {
// 				$.messager.alert("系统提示", "查找成功");
// // 				$("#dlg").dialog("close");
// // 				$("#dg").datagrid("reload");
// 			} else {
// 				$.messager.alert("系统提示", "查找失败，请联系系统管理员！");
// 			}
// 		}, "json");
		$("#dg").datagrid('load', {
			"username" : $("#s_userName").val()
		});
	}
	function openUserAddDialog() {
		$("#dlg").dialog("open").dialog("setTitle", "添加用户信息");
		url = "${pageContext.request.contextPath}/easyui/add";
	}
	function openUserModifyDialog() {
		var selectedRows = $("#dg").datagrid("getSelections");
		if (selectedRows.length != 1) {
			$.messager.alert("系统提示", "请选择一条要编辑的数据！");
			return;
		}
		var row = selectedRows[0];
		$("#dlg").dialog("open").dialog("setTitle", "编辑用户信息");
		$("#fm").form("load", row);
		url = "${pageContext.request.contextPath}/easyui/add?id=" + row.id;
	}
	function saveUser() {
		$("#fm").form("submit", {
			url : url,
// 			onSubmit : function() {
// 				if ($("#roleId").combobox("getValue") == "") {
// 					$.messager.alert("系统提示", "请选择用户角色！");
// 					return false;
// 				}
// 				return $(this).form("validate");
// 			},
			success : function(data) {
				var data = eval('(' +data+ ')');
				if (data.result1) {
					$.messager.alert("系统提示", "保存成功！");
					resetValue();
					$("#dlg").dialog("close");
					$("#dg").datagrid("reload");
				} else {
					$.messager.alert("系统提示", "保存失败！");
					return;
				}
			}
		});
	}
	function resetValue() {
		$("#loginname").val("");
		$("#password").val("");
		$("#username").val("");
		$("#rights").val("");
		$("#status").val("");
	}
	function closeUserDialog() {
		$("#dlg").dialog("close");
		resetValue();
	}
	function deleteUser() {
		var selectedRows = $("#dg").datagrid("getSelections");
		if (selectedRows.length == 0) {
			$.messager.alert("系统提示", "请选择要删除的数据！");
			return;
		}
		var strIds = [];
		for ( var i = 0; i < selectedRows.length; i++) {
			strIds.push(selectedRows[i].jmid);
		}
		var ids = strIds.join(",");
		$.messager.confirm("系统提示", "您确定要删除这<font color=red>"
				+ selectedRows.length + "</font>条数据吗？", function(r) {
			if (r) {
				$.post("${pageContext.request.contextPath}/easyui/delete", {
					jmid : ids
				}, function(data) {
// 					var data = eval('(' +data+ ')');
					if (data.result1) {
						$.messager.alert("系统提示", "数据已成功删除！");
						$("#dlg").dialog("close");
						$("#dg").datagrid("reload");
					} else {
						$.messager.alert("系统提示", "数据删除失败，请联系系统管理员！");
					}
				}, "json");
			}
		});
	}
</script>
</head>    
<body style="margin: 1px">
	<table id="dg"
	 title="用户管理" class="easyui-datagrid" 
	fitColumns="true" pagination="true" rownumbers="true"
	url="${pageContext.request.contextPath}/list" fit="true"
	toolbar="#tb">
		<thead>
			<tr>
				<th field="cb" checkbox="true" align="center"></th>
				<th field="jmid" width="50" align="center">加盟商id</th>
				<th field="loginname" width="50" align="center">登录名</th>
				<th field="password" width="50" align="center">密码</th>
				<th field="username" width="50" align="center">加盟商姓名</th>
				<th field="rights" width="50" align="center">权限</th>
				<th field="status" width="50" align="center">用户状态</th>
			</tr>
		</thead>
	</table>
	<div id="tb">
		<a href="javascript:openUserAddDialog()" class="easyui-linkbutton"
			iconCls="icon-add" plain="true">添加</a> <a
			href="javascript:openUserModifyDialog()" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true">修改</a> <a
			href="javascript:deleteUser()" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true">删除</a>
	
		<div>
			 用户名： <input type="text" id="s_userName" size="20"
				onkeydown="if(event.keyCode == 13)searchUser()" /> <a
				href="javascript:searchUser()" class="easyui-linkbutton"
				iconCls="icon-search" plain="true">查询</a>
		</div>
		<div id="dlg-buttons">
			<a href="javascript:saveUser()" class="easyui-linkbutton"
				iconCls="icon-ok">保存</a> <a href="javascript:closeUserDialog()"
				class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
		</div>
		<div id="dlg" class="easyui-dialog"
			style="width: 730px;height:280px;padding:10px 10px;" closed="true"
			buttons="#dlg-buttons">
			<form method="post" id="fm">
				<table cellspacing="8px;">
					<tr>
						<td>登录名：</td>
						<td><input type="text" id="loginname" name="loginname"
							class="easyui-validatebox" required="true" /> <span
							style="color: red">*</span>
						</td>
						<td>	</td>
						<td>加盟商名：</td>
						<td><input type="text" id="username" name="username"
							class="easyui-validatebox" required="true" /> <span
							style="color: red">*</span>
						</td>
					</tr>
					<tr>
						<td>密码：</td>
						<td><input type="password" id="password" name="password"
							class="easyui-validatebox" required="true" /> <span
							style="color: red">*</span>
						</td>
						<td>	</td>
<!-- 						<td>邮箱：</td> -->
<!-- 						<td><input type="text" id="email" name="email" -->
<!-- 							validType="email" class="easyui-validatebox" required="true" /> <span -->
<!-- 							style="color: red">*</span> -->
<!-- 						</td> -->
						<td>权限</td>
						<td><input type="text" id="rights" name="rights"
							class="easyui-validatebox" required="true" /> <span
							style="color: red">*</span>
						</td>
							
					</tr>
					<tr>
<!-- 						<td>联系电话：</td> -->
<!-- 						<td><input type="text" id="phone" name="phone" -->
<!-- 							class="easyui-validatebox" required="true" /> <span -->
<!-- 							style="color: red">*</span> -->
<!-- 						</td> -->
						<td>状态：</td>
						<td><input type="text" id="status" name="status"
							class="easyui-validatebox" required="true" /> <span
							style="color: red">*</span>
						</td>
						<td>	</td>
						<td>用户角色：</td>
						
<!-- 						
<select name="roleId" class="easyui-combobox" -->
<!-- 							id="roleId" style="width: 154px;" editable="false" -->
<!-- 							panelHeight="auto"> -->
<!-- 								<option value="">请选择角色</option> -->
<!-- 								<option value="系统管理员">加盟商1</option> -->
<!-- 								<option value="销售主管">加盟商2</option> -->
<!-- 								<option value="客户经理">加盟商3</option> -->
<!-- 								<option value="高管">加盟商4</option> -->
<!-- 						</select>  <span style="color: red">*</span> -->
						<td>
						<input type="text" id="roleId" name="roleId"
							class="easyui-validatebox" required="true" /> <span
							style="color: red">*</span>
						</td>
					</tr>
					
					<tr>
						<td>加盟商id</td>
						<td><input type="text" id="jmid" name="jmid"
							 required="true" /> <span
							style="color: red">*</span>
						</td>
						<td>    </td>
					</tr>
				</table>
			</form>
		</div>
		</div>
</body>
</html>
</html>