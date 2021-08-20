<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
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
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/addBook" method="post" class="form-horizontal">
        <div class="form-group col-md-12 center-block">
            <label class="col-md-6 control-label" for="bookName">书籍名称：</label>
            <div class="col-md-6">
                <input name="bookName" type="text" id="bookName" required>
            </div>
        </div>
        <div class="form-group col-md-12 center-block">
            <label class="col-md-6 control-label" for="bookCount">书籍数目：</label>
            <div class="col-md-6">
                <input name="bookCounts" type="text" id="bookCount" required>
            </div>
        </div>
        <div class="form-group col-md-12 center-block">
            <label class="col-md-6 control-label" for="detail">书籍介绍：</label>
            <div class="col-md-6">
                <input name="detail" type="text" id="detail" required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <button type="submit" class="btn btn-success center-block">添加书籍</button>
            </div>
        </div>
    </form>
    
</div>

</body>
</html>
