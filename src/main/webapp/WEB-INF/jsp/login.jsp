<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page  isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <link rel="stylesheet" href="/css/bootstrap.min.css" >

    <title>学习增删改查</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>SSM-CRUD</h1>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 col-md-offset-9">
            <button class="btn btn-success">增加</button>
            <button class="btn btn-danger">删除</button>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover">
                <tr>
                    <th>#</th>
                    <th>empName</th>
                    <th>gender</th>
                    <th>email</th>
                    <th>deptName</th>
                    <th>操作</th> 
                </tr>

                <c:forEach items="${pageInfo.list}" var="user" >

                    <tr>
                        <th>${user.uId}</th>
                        <th>${user.username}</th>
                        <th>${user.gender == "m"? "男" : "女"}</th>
                        <th>${user.email}</th>
                        <th>${user.department.deptname}</th>
                        <th>
                            <button class="btn btn-success btn-primary btn-sm">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                编辑</button>
                            <button class="btn btn-danger btn-primary btn-sm">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                删除</button>
                        </th>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </div>


    <div class="row">
        <%--存放小的分页--%>
        <div class="col-md-6">
            当前第 ${pageInfo.pageNum} 页,共 ${pageInfo.pages} 页,共 ${pageInfo.total}记录数
        </div>
        <%--存放大的分页--%>
        <div>
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li><a href="/user?pageNumber=1">首页</a></li>
                    <c:if test="${pageInfo.hasPreviousPage}">
                        <li>
                            <a href="/user?pageNumber=${pageInfo.pageNum - 1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>

                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_Num" >
                        <c:if test="${page_Num == pageInfo.pageNum}" >
                            <li class="active"><a href="#">${page_Num}</a></li>
                        </c:if>
                        <c:if test="${page_Num != pageInfo.pageNum}" >
                            <li ><a href="/user?pageNumber=${page_Num}">${page_Num}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${pageInfo.hasNextPage}">
                        <li>
                            <a href="/user?pageNumber=${pageInfo.pageNum + 1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>

                    <li><a href="/user?pageNumber=${pageInfo.pages}">末页</a></li>
                </ul>
            </nav>
        </div>
    </div>

</div>
</body>
</html>
