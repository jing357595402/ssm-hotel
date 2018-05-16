<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
<h1>w ssad asd as da </h1>
</div>

<!-- 列表显示用户信息 -->
<table class="easyui-datagrid" id="userList" title="房间信息" 
       data-options="singleSelect:false,collapsible:true,pagination:true,
       url:'/getAllusers.do',
       method:'get',
       pageSize:30, 
       toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
        	<th data-options="field:'roomCode',width:60">房间编码</th>
            <th data-options="field:'roomName',width:200">房间名称</th>
            <th data-options="field:'roomType',width:100">房间类型</th>
            <th data-options="field:'roomPrice',width:70,align:'right',formatter:BTC.formatPrice">房间价格</th>
            <th data-options="field:'roomCandition',width:100">房间状态</th>
            <th data-options="field:'roomCleaner',width:200">清洁工</th>
            </tr>
    </thead>
</table>