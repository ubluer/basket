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
    <div class="header">筛选框</div>
    <div class="location">
      <span class="label">位置：</span>
      <span class="province">湖南省</span>
      <span class="city">长沙市</span>
      <span class="town">岳麓区</span>
      <span class="venue">天一道馆</span>
    </div>
    <div class="date">
      <span class="label">日期：</span>
      <span class="year">2016年</span>
      <span class="month">1月</span>
      <span class="day">31日</span>
    </div>
    <div class="time">
      <span class="label">时段：</span>
      <span class="interval">10:00-10:55</span>
    </div>
    <div class="order-type">
      <span class="label">类别：</span>
      <span class="type">不限</span>
    </div>
    <div class="administer">
      <span class="label">管理员：</span>
      <span class="name">张三</span>
    </div>
    <div class="actions text-align-center">
      <button type="button" class="btn btn-primary">战</button>
    </div>
  </div>
  <div class="battle-list">
    <ul>
      <li class="battle">
        <div class="king">
          <div class="avatar"><img src="/assets/res/img/XY-logo.png"></div>
        </div>
        <div class="vs-label"></div>
        <div class="emperor">
          <div class="avatar"><img src="/assets/res/img/XY-logo.png"></div>
        </div>
      </li>
    </ul>
  </div>
</div>
</body>
</html>
