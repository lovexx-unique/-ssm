<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>个人中心</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style type="text/css">
        #canvas{
            position: fixed;
            background: #fff;
            overflow: auto;
            z-index: -1;
        }
        .div{
            width: 100%;
            height: 900px;

        }
        .div-1{
            width: 50%;
            height: 85%;
            margin-top: 5%;
            margin-left: 25%;
            background-color:#F2F2F2;
        }
        .div-2{
            width: 100%;
            height: 8%;
            text-align: center;
            line-height: 100px;
        }
    </style>
</head>
<body>
<canvas id="canvas"></canvas>
<!--::header part start::-->
<header class="header_area">
    <div class="sub_header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-4 col-md-4 col-xl-6">
                    <div id="logo">
                        <a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/img/logo.png" alt="" title="" /></a>
                    </div>
                </div>
                <div class="col-8 col-md-8 col-xl-6 ">
                    <div class="sub_header_social_icon float-right">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main_menu">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="ti-menu"></i>
                        </button>

                        <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link active" href="index.jsp">首页</a>
                                </li>

                                <li class="nav-item">
                                    <a href="###" class="nav-link">医护知识</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="###" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        联系我们
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="###">宠物领养</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/jsp/Pet_registration.jsp">流浪动物救助</a>
                                    </div>
                                </li>

                                <li class="nav-item">
                                    <a href="###" class="nav-link">论坛</a>
                                </li>
                                <li class="nav-item">
                                    <a href="###" class="nav-link"> 喂养指导</a>
                                </li>
                                <c:if test="${user.number != null}">
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="###" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            个人中心
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/jsp/Personal_Center.jsp">个人信息</a>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/jsp/Change_Password.jsp">修改密码</a>
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/outLogin">注销登录</a>
                                        </div>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<form action="${pageContext.request.contextPath}/addPet" method="post">
    <div class="div">
        <div class="div-1">
            <div class="div-2">宠物年龄：<input type="text" name="age" style="width: 50%;height: 60%;border: none;border-bottom: 1px solid black;background-color: #F2F2F2" required></div>
            <div class="div-2">宠物科属：<input type="text" name="section" style="width: 50%;height: 60%;border: none;border-bottom: 1px solid black;background-color: #F2F2F2" required></div>
            <div class="div-2">宠物种属：<input type="text" name="species" style="width: 50%;height: 60%;border: none;border-bottom: 1px solid black;background-color: #F2F2F2" required></div>
            <div class="div-2">宠物性别：<input type="text" name="sex" style="width: 50%;height: 60%;border: none;border-bottom: 1px solid black;background-color: #F2F2F2" required></div>
            <div class="div-2">救助地址：<input type="text" name="rescueAddress" style="width: 50%;height: 60%;border: none;border-bottom: 1px solid black;background-color: #F2F2F2" required></div>
            <div class="div-2">宠物体重：<input type="text" name="weight" style="width: 50%;height: 60%;border: none;border-bottom: 1px solid black;background-color: #F2F2F2" required></div>
            <div class="div-2">救&nbsp;助&nbsp;人：<input type="text" name="salvor" style="width: 50%;height: 60%;border: none;border-bottom: 1px solid black;background-color: #F2F2F2" required></div>
            <div class="div-2">健康状况：<input type="text" name="healthy" style="width: 50%;height: 60%;border: none;border-bottom: 1px solid black;background-color: #F2F2F2" required></div>
            <div class="div-2">宠物照片：<input type="text" name="petPictures" style="width: 50%;height: 60%;border: none;border-bottom: 1px solid black;background-color: #F2F2F2" required></div>
            <input type="hidden" name="adoptionStatus" value="0">
            <div class="div-2">登记时间：<input type="text" name="registration" style="width: 50%;height: 60%;border: none;border-bottom: 1px solid black;background-color: #F2F2F2" required></div>
            <input type="reset" value="重置" style="width: 70px;height: 40px;margin-left: 70%;border-radius: 8px;margin-top: 40px;" >
            <input type="submit" value="确定" style="width: 70px;height: 40px;margin-left: 1%;border-radius: 8px;margin-top: 40px;" >
        </div>
    </div>
</form>

<footer class="footer_area padding_top">
    <div class="footer_area padding_top">

        <div class="row">
            <div class="col-lg-12">
                <div class="copyright_text">
                    <img src="${pageContext.request.contextPath}/img/footer_logo.png" alt="#">
                    <p class="footer-text">
                        &copy;<script>document.write(new Date().getFullYear());</script> 期待您的加入哦 <i class="ti-heart" aria-hidden="true"></i></a></p>
                </div>
            </div>
        </div>
    </div>
</footer>
</body>
<%--<script src="${pageContext.request.contextPath}/js/change.js" type="text/javascript"></script>--%>
</html>
