<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/views/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <%@ include file="/WEB-INF/views/common/_include.jsp" %>
  <title>全民约战</title>
  <meta name="description" content="Programmer">
  <meta name="viewport" content="width=device-width">
  <!-- cover -->
  <link href="${ctx}/assets/res/css/basket-main.css" rel="stylesheet">
</head>
<body class="cover-body">
<div class="layout">
  <%@ include file="/WEB-INF/views/layout/_header.jsp" %>
  <main id="basket-main" class="cover-main">
    <div class="container-fluid header">
      <div class="row">
        <div class="col-md-2 text-center">
          <div class="header-info border-light">
            <div class="location">湖南电大篮球场</div>
            <div class="today-info">1月1日周一</div>
          </div>
        </div>
        <div class="col-md-10">
          <div class="header-people border-light">
            <a class="map">地图导航</a>
            <div class="administrator">系统管理员:<span class="name">张三</span></div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid game-entry border-light">
      <div class="row">
        <div class="col-md-2">
          <div class="game-time border-light">
            <span class="start">8:00</span>-
            <span class="end">10:00</span>
          </div>
          <div class="venue-status border-light">包场</div>
        </div>
        <div class="col-md-10">
          <div class="game-info border-light">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-4">
                  <div class="border-light team left team-left">约战</div>
                </div>
                <div class="col-md-4">
                  <div class="referee border-light">裁判员</div>
                  <div class="vs-label">VS</div>
                </div>
                <div class="col-md-4">
                  <div class="border-light team right team-right">约战</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</div>
<script>

</script>
</body>
</html>