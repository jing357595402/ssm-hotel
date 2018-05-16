<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
<h1>w ssad asd as da </h1>
</div>

<!-- 列表显示用户信息 -->
<table class="easyui-datagrid" id="userList" title="员工信息" 
       data-options="singleSelect:false,collapsible:true,pagination:true,
       url:'/getAllusers.do',
       method:'get',
       pageSize:30, 
       toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
        	<th data-options="field:'orderNumber',width:60">订单编号</th>
            <th data-options="field:'roomCode',width:200">订单房号</th>
            <th data-options="field:'updated',width:130,align:'center',formatter:BTC.formatDateTime">入住日期</th>
            <th data-options="field:'updated',width:130,align:'center',formatter:BTC.formatDateTime">退房日期</th>
            <th data-options="field:'orderCustomer',width:200">房客id</th>
            <th data-options="field:'CustomerName',width:200">房客姓名</th>
            <th data-options="field:'entilPrice',width:70,align:'right',formatter:BTC.formatPrice">总价</th>
            <th data-options="field:'createBy',width:200">创建者</th>
            <th data-options="field:'created',width:130,align:'center',formatter:BTC.formatDateTime">创建日期</th>
            <th data-options="field:'updateBy',width:200">更新者</th>
            <th data-options="field:'updated',width:130,align:'center',formatter:BTC.formatDateTime">更新日期</th>
        </tr>
    </thead>
</table>