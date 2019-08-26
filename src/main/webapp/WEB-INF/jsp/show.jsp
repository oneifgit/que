<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="/bootstrap/bootstrap.min.css" />
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/jquery.form.js"></script>
    <script src="/bootstrap/bootstrap.min.js"></script>
</head>
<body>
<div align="center">
    <form action="/con/select" method="post" id="form" class="form-horizontal" role="form">
        <input type="hidden" name="currPage" id="hd" value="1">
    </form>
    <a href="/con/add1">我要提问</a>
</div>
<div class="container">
    <table class="table table-hover table-striped table-condensed table-bordered">
        <tr>
            <td>序号</td>
            <td>问题</td>
            <td>回答次数</td>
            <td>最后修改</td>
        </tr>
        <c:forEach var="Ques" items="${list}">
            <tr>
                <td>${Ques.id}</td>
                <td><a href="/con/sone?id=${Ques.id}">${Ques.title}</a></td>
                <td>${Ques.ansc}</td>
                <td><fmt:formatDate value="${Ques.lastdate}" pattern="yyyy-MM-dd"/></td>
            </tr>
        </c:forEach>
    </table >
</div>
<%--分页--%>
<div class="row">
    <div class="col-lg-4"></div>
    <ul class="pagination">
        <li><a href="javascript:goPage(1)">首页</a></li>
        <li><a href="javascript:goPage(${page.currPage-1})"><<</a></li>
        <c:forEach var="i" begin="1" end="${page.totalPage}">
            <li><a href="javascript:goPage(${i})">${i}</a></li>
        </c:forEach>
        <li><a href="javascript:goPage(${page.currPage+1})">>></a></li>
        <li><a href="javascript:goPage(${page.totalPage})">尾页</a></li>
        <li>跳转到 <input type="text" value="${page.currPage}" size="3">页
            <input type="button" onclick="goPage(this.previousElementSibling.value)" value="GO"></li>
        <li>第${page.currPage}页/共${page.totalPage}页</li>
    </ul>

</div>
</body>
<script>
/*    function goPage(p) {
        alert(p)
        if(p>$page.totalPage){
            p=$page.totalPage
        }
        if(p<1){
            p=1;
        }
        location.href=
        location.href="/con/select?currPage="+p;
    }*/
   function goPage(p) {
        var total=${page.totalPage};
        if(p>total){
            p=total;
        }
        if(p<1){
            p=1;
        }
        var f=document.getElementById("form");
        var hd=document.getElementById("hd");
        hd.value=p;
        f.submit();
    }
</script>
</html>
