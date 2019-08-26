<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019\8\2 0002
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/bootstrap/bootstrap.min.css" />
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/jquery.form.js"></script>
    <script src="/bootstrap/bootstrap.min.js"></script>
    <style type="text/css">
        div{margin-top: 30px}
    </style>
</head>
<body>
<h2 align="center" class="text-primary">问题详情</h2>
<div class="col-lg-4"></div>
<div class="col-lg-4"align="center">
    <table class="table table-hover table-striped table-condensed  text-warning">
        <tr class="text-danger">
            <td>问题:</td>
            <td>${q.title}</td>
        </tr>
        <tr class="text-danger">
            <td>问题描述:</td>
            <td>${q.des}</td>
        </tr>
        <c:forEach var="as" items="${a}">
            <tr>
                <td>网友回答:</td>
                <td><fmt:formatDate value="${as.ansdate}" pattern="yyyy-MM-dd"/>: <br>
                        ${as.content}
                </td>
            </tr>
        </c:forEach>
    </table >
    <form action="/con/sone1">
        <table class="table table-hover  table-condensed table-bordered text-success">
            <tr>
                <td>我来回答</td>
                <td><textarea name="content" cols="50" rows="5"></textarea>
                </td>
            </tr>
        </table>
        <input type="hidden" name="qid" value="${q.id}">
        <br>
        <input type="submit" value="提交答案">
        <input type="button"onclick="location.href='/con/select'" value="返回">
    </form>
</div>
</body>
</html>
