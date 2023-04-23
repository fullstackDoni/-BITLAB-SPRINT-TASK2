<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.db.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
    <%
        Items items = (Items) request.getAttribute("item");
        if (items != null) {
    %>
    <div class="col-6 mx-auto">
        <div class="row">
            <div class="col-12">
                <label>Name</label>
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12">
                <input type="text" class="form-control" readonly value="<%=items.getName()%>" name=name">
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <label>Description</label>
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12">
                <input type="text" class="form-control" readonly value="<%=items.getDescription()%>" name="description">
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <label>Price</label>
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12">
                <input type="text" class="form-control" readonly value="<%=items.getPrice()%>" name="price">
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#edit">
                    EDIT
                </button>
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12">
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete">
                    DELETE
                </button>
            </div>
        </div>
        <div class="modal fade" id="edit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">EDIT LAPTOP</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="SaveItem" method="post">
                            <input type="hidden" name="item_id" value="<%=items.getId()%>">
                            <div class="row">
                                <div class="col-12">
                                    <label>Name</label>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12">
                                    <input type="text" class="form-control" name="name" value="<%=items.getName()%>">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label>Description</label>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12">
                                    <input type="text" class="form-control" name="description"
                                           value="<%=items.getDescription()%>">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label>Price</label>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12">
                                    <input type="text" class="form-control" name="price" value="<%=items.getPrice()%>">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <%
    } else {
    %>
    <h3 class="text-center">NOT FOUND</h3>
    <%
        }
    %>
</div>
</body>
</html>
