<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/views/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<%@ include file="/WEB-INF/views/common/_include.jsp" %>
	<title>全民约战</title>
	<meta name="description" content="全民约战">
	<meta name="viewport" content="width=device-width">
	<!-- cover -->
	<link href="${ctx}/assets/res/css/basket-main.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">
	<%@ include file="/WEB-INF/views/layout/_header.jsp" %>
	<div class="page-title">
		<span class="title-text">全民约战</span>
	</div>
	<div class="search-box">
		<div class="location">
			<span>位置:</span><input class="province" value="湖南省">
			<input class="city" value="长沙市"><input class="district"value="岳麓区"
		</div>
		<div class="datetime"></div>
		<div class="administer"></div>
	</div>
	<div class="battle-list">
		<ul>
			<li class="battle">
				<div class="king">
					<img src="/assets/res/img/XY-logo.png">
				</div>
				<div class="vs-label"></div>
				<div class="emperor">
					<img src="/assets/res/img/XY-logo.png">
				</div>
			</li>
		</ul>
	</div>
</div>
</body>
</html>
