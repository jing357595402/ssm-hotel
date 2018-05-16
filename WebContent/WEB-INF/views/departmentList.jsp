<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
<h1>w ssad asd as da </h1>
</div>

<!-- 列表显示部门信息 -->
<table class="easyui-datagrid" id="userList" title="部门信息" 
       data-options="singleSelect:false,collapsible:true,pagination:true,
       url:'/getAllusers.do',
       method:'get',
       pageSize:30, 
       toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
        	<th data-options="field:'departmentCode',width:60">部门编码</th>
            <th data-options="field:'departmentName',width:200">部门名称</th>
            <th data-options="field:'ManagerName',width:100">部门经理</th>
            </tr>
    </thead>
</table>