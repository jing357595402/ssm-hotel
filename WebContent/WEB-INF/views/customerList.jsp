<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
<h1>w ssad asd as da </h1>
</div>

<!-- 列表显示用户信息 -->
<table class="easyui-datagrid" id="userList" title="部门信息" 
       data-options="singleSelect:false,collapsible:true,pagination:true,
       url:'/getAllusers.do',
       method:'get',
       pageSize:30, 
       toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
        	<th data-options="field:'customerCode',width:60">客户编码</th>
            <th data-options="field:'customerName',width:200">客户名字</th>
            <th data-options="field:'gender',width:100">性别</th>
            <th data-options="field:'customerPhone',width   :70,align:'right'">电话</th>
            <th data-options="field:'createBy',width:200">创建者</th>
            <th data-options="field:'created',width:130,align:'center',formatter:BTC.formatDateTime">创建日期</th>
            <th data-options="field:'updateBy',width:200">更新者</th>
            <th data-options="field:'updated',width:130,align:'center',formatter:BTC.formatDateTime">更新日期</th>
        
            </tr>
    </thead>
</table>