<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019\8\2 0002
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增</title>
    <link rel="stylesheet" href="/bootstrap/bootstrap.min.css" />
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/jquery.form.js"></script>
    <script src="/bootstrap/bootstrap.min.js"></script>
</head>
<body>
<div style="margin-top: 50px" >
    <form action="/con/add2" method="post" id="form" class="form-horizontal" role="form">
        <div class="form-group">
            <div class="col-lg-4"></div>
            <label class="col-lg-1" >问题</label>
            <div class="col-lg-3">
                <input type="text"name="title">
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-4"></div>
            <label class="col-lg-1" >问题描述</label>
            <div class="col-lg-3">
                <input type="text" name="des">
            </div>
        </div>
        <div class="col-lg-4"></div>
        <input type="submit" value="提问">
    </form>
</div>
</body>
<script>
</script>
</html>