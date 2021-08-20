<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
    <%--
        引入Bootstrap
        导入CDN
    --%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .table th, .table td {
            text-align: center;
            vertical-align: middle!important;
        }
    </style>
</head>

<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 ———— 所有书籍</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-md-offset-2 column">
                <%--AddOneBook--%>
                <a href="${pageContext.request.contextPath}/book/toAddBook"
                   class="btn btn-success"
                   role="button">新增书籍</a>
                <a href="${pageContext.request.contextPath}/book/allBook"
                   class="btn btn-info col-md-offset-1"
                   role="button">显示所有书籍</a>
            </div>
            <div class="col-md-4">
                <form action="${pageContext.request.contextPath}/book/queryBookByName"
                      method="post"
                      class="form-horizontal form-inline"
                      style="vertical-align: center">
                    <span class="label label-success">${resInfo}</span>
                    <div class="input-group">
                        <input type="text" name="queryBookName" class="form-control" placeholder="请输入书籍名称">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                            </button>
                        </span>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数目</th>
                    <th>书籍介绍</th>
                    <th>书籍操作</th>
                </tr>
                </thead>

                <%--将书籍信息从List中遍历--%>
                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdateBook/${book.bookID}"
                            class="btn btn-info btn-sm"
                            role="button">修改</a>
                            <a href="${pageContext.request.contextPath}/book/delBook/${book.bookID}"
                            class="btn btn-danger btn-sm"
                            role="button">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


</body>
</html>
