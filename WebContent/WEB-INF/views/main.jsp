<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>酒店首页</title>
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
<script language="JavaScript">
	$(document)
			.ready(
					function() {
						$('.easyui-accordion li a').click(
								function() {
									var tabTitle = $(this).text();
									var url = $(this).attr("href");
									addTab(tabTitle, url);
									$('.easyui-accordion li div').removeClass(
											"selected");
									$(this).parent().addClass("selected");
								}).hover(function() {
							$(this).parent().addClass("hover");
						}, function() {
							$(this).parent().removeClass("hover");
						});

						function addTab(subtitle, url) {
							if (!$('#tabs').tabs('exists', subtitle)) {
								$('#tabs').tabs('add', {
									title : subtitle,
									content : createFrame(url),
									closable : true,
									width : $('#mainPanle').width() - 10,
									height : $('#mainPanle').height() - 26
								});
							} else {
								$('#tabs').tabs('select', subtitle);
							}
							tabClose();
						}

						function createFrame(url) {
							var s = '<iframe name="mainFrame" scrolling="auto" frameborder="0"  src="'
									+ url
									+ '" style="width:100%;height:100%;"></iframe>';
							return s;
						}

						function tabClose() {
							/*双击关闭TAB选项卡*/
							$(".tabs-inner").dblclick(function() {
								var subtitle = $(this).children("span").text();
								$('#tabs').tabs('close', subtitle);
							})

							$(".tabs-inner").bind('contextmenu', function(e) {
								$('#mm').menu('show', {
									left : e.pageX,
									top : e.pageY,
								});
								var subtitle = $(this).children("span").text();
								$('#mm').data("currtab", subtitle);
								return false;
							});
						}

						//绑定右键菜单事件
						function tabCloseEven() {
							//关闭当前
							$('#mm-tabclose').click(function() {
								var currtab_title = $('#mm').data("currtab");
								$('#tabs').tabs('close', currtab_title);
							})
							//全部关闭
							$('#mm-tabcloseall').click(function() {
								$('.tabs-inner span').each(function(i, n) {
									var t = $(n).text();
									$('#tabs').tabs('close', t);
								});
							});

							//关闭除当前之外的TAB
							$('#mm-tabcloseother').click(function() {
								var currtab_title = $('#mm').data("currtab");
								$('.tabs-inner span').each(function(i, n) {
									var t = $(n).text();
									if (t != currtab_title)
										$('#tabs').tabs('close', t);
								});
							});
							//关闭当前右侧的TAB
							$('#mm-tabcloseright').click(function() {
								var nextall = $('.tabs-selected').nextAll();
								if (nextall.length == 0) {
									//msgShow('系统提示','后边没有啦~~','error');
									alert('后边没有啦~~');
									return false;
								}
								nextall.each(function(i, n) {
									var t = $('a:eq(0) span', $(n)).text();
									$('#tabs').tabs('close', t);
								});
								return false;
							});
							//关闭当前左侧的TAB
							$('#mm-tabcloseleft').click(function() {
								var prevall = $('.tabs-selected').prevAll();
								if (prevall.length == 0) {
									alert('到头了，前边没有啦~~');
									return false;
								}
								prevall.each(function(i, n) {
									var t = $('a:eq(0) span', $(n)).text();
									$('#tabs').tabs('close', t);
								});
								return false;
							});

							//退出
							$("#mm-exit").click(function() {
								$('#mm').menu('hide');

							})
						}
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
				align="center">菜&nbsp;&nbsp;鸟&nbsp;&nbsp;集&nbsp;&nbsp;团&nbsp;&nbsp;酒&nbsp;&nbsp;店&nbsp;&nbsp;管&nbsp;&nbsp;理&nbsp;&nbsp;系&nbsp;&nbsp;统</div>
			<div>
<!-- 			<a href="javascript:openUserAddDialog()" class="easyui-linkbutton" -->
<!-- 			iconCls="icon-add" plain="true">添加</a> -->
				<a name="login" value="退出系统" class="easyui-linkbutton" plain="true"
				href='${pageContext.request.contextPath}/login1' style="font-size:18px;">退出</a>
				&nbsp;&nbsp;<span style="color: green;">${username}</span>
			</div>
		</div>
	</div>

	<div region="south" border="true"
		style="overflow: hidden; height: 40px;">
		<div class="footer">
			版权所有：<a
				href="https://mail.qq.com/cgi-bin/frame_html?sid=aq4ZfxoEiDEqgBFJ&r=4f9c574117f46fd5d54f4aceedcb4530"
				style="text-decoration: none">6518-菜鸟小组工作室</a>
		</div>
	</div>
	<div region="west" title="功能菜单" style="width: 200px;">

		<div id="aa" class="easyui-accordion"
			style="position: absolute; top: 27px; left: 0px; right: 0px; bottom: 0px; overflow: scroll;">

			<div title="客房管理" style="padding: 10px;">content2</div>
			<div title="订餐管理">content3</div>
			<div title="娱乐服务管理">content11</div>
		</div>
	</div>
	<div id="mainPanle" region="center" border="false">
		<div id="tabs" class="easyui-tabs" fit="true">
			<div title="财务资料" style="padding: 20px;" id="home">
				<h1>Welcome to jQuery UI!</h1>
			</div>
		</div>
	</div>
</body>
</html>