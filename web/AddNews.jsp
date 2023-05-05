<<<<<<< HEAD
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container mt-3">
    <div class="row">
        <div class="col-6 mx-auto">
            <form action="/AddNews" method="post">
                <div class="col-12">
                    <label>
                        TITLE :
                    </label>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <input type="text" class="form-control" name="title" placeholder="title">
                    </div>
                </div>
                <div class="col-12">
                    <label>
                       Content :
                    </label>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <textarea class="form-control" name="content" placeholder="content"></textarea>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                         <button class="btn btn-success">ADDPOST</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
=======
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container mt-3">
    <div class="row">
        <div class="col-6 mx-auto">
            <form action="/AddItem" method="post">
                <div class="row">
                    <div class="col-12">
                        <label>Name</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="name">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <label>Description</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="description">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <label>Price</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="price">
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <button class="btn btn-success">Add</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
>>>>>>> origin/DONI
</html>
