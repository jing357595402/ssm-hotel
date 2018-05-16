<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
<h1>w ssad asd as da </h1>
</div>

<!-- 列表显示用户信息 -->
<table class="easyui-datagrid" id="userList" title="房间类型信息" 
       data-options="singleSelect:false,collapsible:true,pagination:true,
       url:'/getAllusers.do',
       method:'get',
       pageSize:30, 
       toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
        	<th data-options="field:'roomtypeCode',width:60">房间类型编码</th>
            <th data-options="field:'roomtypeName',width:200">房间类型名称</th>
            <th data-options="field:'roomMessage',width:100">房间类型信息</th>
            <th data-options="field:'roomImages',width:100">图片</th>
            <th data-options="field:'roomtypePrice',width:70,align:'right',formatter:BTC.formatPrice">房间价格</th>
            <th data-options="field:'createBy',width:200">创建者</th>
            <th data-options="field:'created',width:130,align:'center',formatter:BTC.formatDateTime">创建日期</th>
            <th data-options="field:'updateBy',width:200">更新者</th>
            <th data-options="field:'updated',width:130,align:'center',formatter:BTC.formatDateTime">更新日期</th>
        </tr>
    </thead>
</table>