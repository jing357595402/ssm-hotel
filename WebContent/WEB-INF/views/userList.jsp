<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
<h1>w ssad asd as da </h1>
</div>

<!-- 列表显示用户信息 -->
<table class="easyui-datagrid" id="userList" title="员工信息" 
       data-options="singleSelect:false,collapsible:true,pagination:true,
       url:'/getUsertList.do',
       method:'get',
       pageSize:30, 
       toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
        	<th data-options="field:'userCode',width:60">员工编码</th>
            <th data-options="field:'userName',width:200">员工姓名</th>
            <th data-options="field:'userPassword',width:100">密码</th>
            <th data-options="field:'gender',width:100">性别</th>
            <th data-options="field:'birthday',width:130,align:'center',formatter:BTC.formatDateTime">出生日期</th>
            <th data-options="field:'phone',width   :70,align:'right'">电话</th>
            <th data-options="field:'address',width:100">地址</th>
            <th data-options="field:'departmentName',width:100">部门</th>
            <th data-options="field:'positionName',width:100">职位</th>
            <th data-options="field:'positionWage',width:70,align:'right',formatter:BTC.formatPrice">工资</th>
            <th data-options="field:'createBy',width:200">创建者</th>
            <th data-options="field:'created',width:130,align:'center',formatter:BTC.formatDateTime">创建日期</th>
            <th data-options="field:'updateBy',width:200">更新者</th>
            <th data-options="field:'updated',width:130,align:'center',formatter:BTC.formatDateTime">更新日期</th>
        </tr>
    </thead>
</table>