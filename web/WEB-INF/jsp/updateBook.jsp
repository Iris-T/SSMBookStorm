<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍信息</title>
    <%--
        引入Bootstrap
        导入CDN
    --%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook"
          method="post"
          class="form-horizontal">
        <input type="hidden" name="bookID" value="${oldBook.bookID}">
        <div class="form-group col-md-12 center-block">
            <label class="col-md-6 control-label" for="bookName">新的书籍名称：</label>
            <div class="col-md-6">
                <input name="bookName" type="text" id="bookName" value="${oldBook.bookName}" required>
            </div>
        </div>
        <div class="form-group col-md-12 center-block">
            <label class="col-md-6 control-label" for="bookCounts">新的书籍数目：</label>
            <div class="col-md-6">
                <input name="bookCounts" type="text" id="bookCounts" value="${oldBook.bookCounts}" required>
            </div>
        </div>
        <div class="form-group col-md-12 center-block">
            <label class="col-md-6 control-label" for="detail">新的书籍介绍：</label>
            <div class="col-md-6">
                <input name="detail" type="text" id="detail" value="${oldBook.detail}" required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <button type="submit" class="btn btn-success center-block">修改书籍</button>
            </div>
        </div>
    </form>

</div>

</body>
</html>
