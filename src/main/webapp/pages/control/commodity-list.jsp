<%@ page import="com.tee.service.CommodityService" %>
<%@ page import="com.tee.service.impl.CommodityServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.tee.pojo.Commodity" %><%--
  Created by IntelliJ IDEA.
  User: 27226
  Date: 2021/11/25
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ๅๅๅ่กจ</title>
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
            }
        }

        @media (min-width: 992px) {
            .container {
                width: 970px;
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

        .zw {
            margin: 80px 0;
        }

        hr {
            border-top: 1px solid #c8c8c8;
        }

        footer {
            padding-bottom: 60px;
        }

        @media (min-width: 992px) {
            .col-md-7 {
                padding: 0 0 0 200px;
            }
        }

        .col-md-7 .row {
            margin: 10px 0;
        }

        .num-button a:hover {
            text-decoration: none;
            color: white;
        }

        .num-control {
            border: 1px solid black;
            width: 80px;
            position: relative;
            display: inline-block;
            height: 50px;
        }

        .num-control a {
            text-decoration: none;
            color: #9d9d9d;
            border: 1px solid black;
        }

        .add {
            position: absolute;
            padding: 1px 10px;
            top: -1px;
            left: 48px;
        }

        .cut {
            position: absolute;
            bottom: -1px;
            padding: 2px 12px;
            left: 48px;
        }

        .thumbnail {
            text-align: center;
            height: 400px;
        }

        .thumbnail img {
            width: 250px;
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
    </style>
</head>
<body>
<!--    ๅฏผ่ชๆก-->
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
                <li><a href="../../index.jsp">ๅๅ้ฆ้กต</a></li>
                <li id="l1"><a href="commodity-list.jsp">ๅๅๅ่กจ</a></li>
                <li id="l2"><a href="order-list.jsp">่ฎขๅๅ่กจ</a></li>
                <li id="l3"><a href="addCommodity.jsp">ๆทปๅ?ๅๅ</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li id="login"><a href="../admin-login.html">็ปๅฝ</a></li>
                <li id="register"><a href="../admin-register.html">ๆณจๅ</a></li>
                <li id="user"><a href="admin-credit.jsp">่ดฆๆทไฟกๆฏ</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="page-header">
    <div class="container">
        <h1>ๅๅๅ่กจ</h1>
    </div>
</div>
<div class="page-content container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>ๅๅ็ผๅท</th>
            <th>ๅๅๅ</th>
            <th>ๅบๅญ</th>
            <th>้ๅฎ้</th>
            <th>ไปทๆ?ผ</th>
            <th>ๅๅ็ง็ฑป</th>
            <th>ๆไฝ</th>
        </tr>
        </thead>
        <tbdy>
            <%
                CommodityService commodityService = new CommodityServiceImpl();
                List<Commodity> list = commodityService.showCommodities();
                for (int i = 0; i < list.size(); i++) {
                    out.print("<tr>\n" +
                            "                    <td style=\"line-height:42px;\">" + list.get(i).getId() + "</td>\n" +
                            "                    <td style=\"line-height:42px;\">" + list.get(i).getName() + "</td>\n" +
                            "                    <td style=\"line-height:42px;\">" + list.get(i).getNum() + "</td>\n" +
                            "                    <td style=\"line-height:42px;\">" + list.get(i).getSalenum() + "</td>\n" +
                            "                    <td style=\"line-height:42px;\">" + list.get(i).getPrice() + "</td>\n" +
                            "                    <td style=\"line-height:42px;\">" + list.get(i).getType() + "</td>\n" +
                            "                    <td style=\"line-height:42px;\">" +
                            "                       <button type=\"button\" class=\"btn btn-primary\">ไฟฎๆน</button>" +
                            "                       <a type=\"button\" style=\"text-decoration:none;\" class=\"btn btn-danger\">ๅ?้ค</a>" +
                            "                    </td>\n" +
                            "            </tr>");
                }
            %>

        </tbdy>
    </table>
</div>
<!--ๅบ้จไฟกๆฏๆ?-->
<div class="container">
    <hr class="zw">
    <footer>
        <p class="pull-right">
            <a href="#">่ฟๅ้กถ้จ</a>
        </p>
        <p class="pull-left">
            ยฉ 2021 Company, Inc.
        </p>
    </footer>
</div>
<%--้่ๅ--%>
<form action="../../DelCommodityServlet" method="post" id="form" style="visibility: hidden;width: 0;height: 0;">
    <input type="text" id="id" name="id" style="visibility: hidden;width: 0;height: 0;">
</form>
<%--็ปๅฝ็ถๆๅคๆญ--%>
<script>
    //่ดฆๆทๅ็ปๅฝๆฅๅฃๅๆขๆพ็คบ
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
<%--็ฝ้กต่ทณ่ฝฌ--%>
<script>
    $('button').click(function () {
        // $(this).parent().parent().children(":first-child").css("background","red");
        var cid = $(this).parent().parent().children(":first-child").text();
        window.location.href = "commodity-modify.jsp?cid=" + cid;
    })
    $('td a').click(function () {
        var cid = $(this).parent().parent().children(":first-child").text();
        $(this).parent().parent().remove();
        document.getElementById('id').value=cid;
        document.getElementById('form').submit();
    })
</script>
</body>
</html>

