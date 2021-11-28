<%@ page import="com.tee.service.MessageService" %>
<%@ page import="com.tee.pojo.Message" %>
<%@ page import="java.util.List" %>
<%@ page import="com.tee.service.impl.MessageServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: 27226
  Date: 2021/11/27
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单反馈</title>
    <link rel="stylesheet" href="../../static/bootstrap-3.4.1-dist/css/bootstrap.min.css">
    <script src="../../static/JQuery/jquery-3.6.0.min.js"></script>
    <script src="../../static/bootstrap-3.4.1-dist/js/bootstrap.js"></script>
    <style>
        body {
            /*background-color: #faebd7;*/
            z-index: 1;
        }

        .navbar-default {
            /*background-color: #faebd7;*/
            /*background-color: white;*/
            /*opacity: 0;*/
            background-color: transparent;
        }

        .logo {
            height: 50px;
        }

        .navbar-header .navbar-brand {
            padding: 0px 15px;;
        }

        .navbar {
            border: 0px;
        }

        @media (min-width: 768px) {
            .navbar {
                margin-top: 20px;
                /*position: absolute;*/
                right: 0;
                left: 0;
                z-index: 3;
            }
        }


        @media (min-width: 768px) {
            .container {
                width: 750px;
                /*width: 100%;*/
            }
        }

        @media (min-width: 768px) and (max-width: 992px) {
            .search {
                visibility: hidden;
                width: 0;
                height: 0;
            }
        }

        @media (min-width: 992px) {
            .container {
                /*width: 970px;*/
                width: 100%;
            }
        }

        @media (min-width: 1200px) {
            .container {
                width: 1170px;
            }
        }

        .header {
            /*background-color: #2f4f4f;*/
            border-radius: 6px;
        }

        .navbar-default .navbar-nav li a {
            color: #c1aa96;
        }

        .navbar-default .navbar-nav li ul li a {
            color: black;
        }

        @media (min-width: 768px) {
            .navbar-nav li:hover .dropdown-menu {
                display: block;
            }
        }

        .dropdown ul {
            text-align: center;
        }

        @media (min-width: 768px) {
            .navbar-form .form-control {
                /*width: 400px;*/
            }
        }

        .navbar-header {
            text-align: center;
        }

        .navbar-default .navbar-form {
            text-align: center;
        }

        .navbar-nav {
            text-align: center;
        }

        .carousel-inner .item img {
            height: 721px;
            width: 100%;
        }

        .carousel-control a {
            background-color: transparent;
        }

        .col-md-4 h2 {
            font-weight: 400;
            color: #4a4a4a;
        }

        .col-md-4 p {
            margin-right: 10px;
            margin-left: 10px;
        }

        p {
            margin: 0 0 10px;
        }

        .btn-default {
            color: #333;
            background-color: #fff;
            border-color: #ccc;
        }


        hr {
            border-top: 1px solid #c8c8c8;
        }

        footer {
            padding-bottom: 60px;
        }

        .btn-default {
            position: relative;
            bottom: 0;
        }

        h2 a:hover {
            text-decoration: none;
        }


        .dcart li {
            /*display: flex;*/
            height: 120px;
            margin: 30px 10px;
        }


        .img img {
            width: 100px;
        }

        .dcart li div {
            text-align: center;
        }

        .page-header {
            background-color: #eeebeb;
            padding: 5px 0px;
            margin-bottom: 5px;
            font-weight: 300;
            font-family: "acumin-pro", "Arial", sans;
        }

        .page-header h1 {
            font-size: 1.5em;

        }

        .zw {
            margin: 40px 0;
        }

        .tr1 td {
            width: 162px;
            text-align: center;
            line-height: 100px;
        }
    </style>
</head>
<body>
<div class="container">
</div>
<%
    String oid = request.getParameter("oid");
    MessageService messageService = new MessageServiceImpl();
    List<Message> mesList = messageService.showMessages(oid);
%>
<div>
    <!--    导航条-->
    <nav class="navbar navbar-default">
        <div class="container header">
            <div class="navbar-header row">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img class="logo" src="../../static/img/logo-small.png" alt=""></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="../../index.jsp">商城首页</a></li>
                    <li id="l1"><a href="commodity-list.jsp">商品列表</a></li>
                    <li id="l2"><a href="order-list.jsp">订单列表</a></li>
                    <li id="l3"><a href="addCommodity.jsp">添加商品</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li id="login"><a href="../admin-login.html">登录</a></li>
                    <li id="register"><a href="../admin-register.html">注册</a></li>
                    <li id="user"><a href="admin-credit.jsp">账户信息</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="page=content">
        <div class="page-header">
            <div class="container">
                <h1>订单反馈</h1>
            </div>
        </div>
        <div class="container">
            <div style="height: 50px;line-height: 50px;">
                订单编号:<%=oid%>
            </div>
            <span>反馈内容:</span>
            <form action="../../AddAdminMessageServlet" method="post"
                  style="width: 600px;margin: 10px auto;">
                <div style="visibility: hidden;width: 0;height: 0;">
                    <input type="text" name="oid" value="<%=oid%>">
                </div>
                <%
                    if (mesList != null) {
                        for (int i = 0; i < mesList.size(); i++) {
                            if (mesList.get(i).getId().length() < 5) {
                                out.print("<div class=\"admin\">\n" +
                                        "     <label>管理员</label>\n" +
                                        "     <p>" + mesList.get(i).getMessage() + "</p>\n" +
                                        " </div>");
                            } else {
                                out.print("<div class=\"user\">\n" +
                                        "    <label>用户</label>\n" +
                                        "    <p>" + mesList.get(i).getMessage() + "</p>\n" +
                                        "  </div>");
                            }
                        }
                    }
                %>
                <div class="send">
                    <textarea id="message" name="message" style="display: block;"></textarea>
                    <button class="btn btn-default" type="submit">发送</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="container">
    <hr class="zw">
    <footer>
        <p class="pull-right">
            <a href="#">返回顶部</a>
        </p>
        <p class="pull-left">
            © 2021 Company, Inc.
        </p>
    </footer>
</div>
<script>
    //账户和登录接口切换显示
    window.onload = function () {
        var l1 = document.getElementById("login");
        var l2 = document.getElementById("register");
        var l3 = document.getElementById("user")
        var l4 = document.getElementById("l1")
        var l5 = document.getElementById("l2")
        var l6 = document.getElementById("l3")

        if ('${adminUser.username}' == '') {
            l3.style.visibility = "hidden";
            l3.style.width = 0;
            l3.style.height = 0;
            l4.style.visibility = "hidden";
            l4.style.width = 0;
            l4.style.height = 0;
            l5.style.visibility = "hidden";
            l5.style.width = 0;
            l5.style.height = 0;
            l6.style.visibility = "hidden";
            l6.style.width = 0;
            l6.style.height = 0;
        } else {
            l1.style.visibility = "hidden";
            l1.style.width = 0;
            l1.style.height = 0;
            l2.style.visibility = "hidden";
            l2.style.width = 0;
            l2.style.height = 0;
        }
    }
</script>
</body>
</html>
