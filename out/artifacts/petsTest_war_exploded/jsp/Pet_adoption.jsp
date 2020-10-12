<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>宠物之家</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <style>
        .div{
            width: 100%;
            height: 1500px;

        }
        #canvas{
            position: fixed;
            background: #fff;
            overflow: auto;
            z-index: -1;
        }
        .div-1{
            width: 50%;
            height: 15%;
            margin-left: 25%;
            margin-top: 2%;

            background-color:#F2F2F2;
        }
        .div-1-1{
            width: 15%;
            height: 20%;
            margin-left: 3%;
            margin-top: 2.5%;
            float: left;

        }
        .div-2{
            width: 50%;
            height: 70%;
            margin-left: 25%;
            margin-top: 2%;

        }
        .btn {
            color: white;
            background-color: #008aa6;
            padding: 0px 1em;
            border-radius: 5px;
        }


        .btn:hover {
            background-color: #ff0000;
        }


        /*active 要在后面 否则会被hover覆盖*/


        .btn:focus {
            background-color: #32dbb2;
        }


        .btn:active {
            background-color: #000000;
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
                        <a href="index.jsp"><img src="${pageContext.request.contextPath}/img/logo.png" alt="" title="" /></a>
                    </div>
                </div>
                <div class="col-8 col-md-8 col-xl-6 ">
                    <div class="sub_header_social_icon float-right">
                        <c:if test="${user.number == null}">
                            <a href="${pageContext.request.contextPath}/jsp/login.jsp" class="btn_1 d-none d-md-inline-block">登录/注册</a> <!--跳转注册页面-->
                        </c:if>

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
                                    <a class="nav-link active" href="${pageContext.request.contextPath}/index.jsp">首页</a>
                                </li>

                                <li class="nav-item">
                                    <a href="###" class="nav-link">医护知识</a>
                                </li>
                                <li class="nav-item">
                                    <a href="###" class="nav-link">更多萌宠</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="###" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        联系我们
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/jsp/Pet_adoption.jsp">宠物领养</a>
                                        <a class="dropdown-item" href="###">收养宠物转让</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/jsp/Pet_registration.jsp">流浪动物救助</a>
                                    </div>
                                </li>

                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/jsp/forum.jsp" class="nav-link">论坛</a>
                                </li>
                                <li class="nav-item">
                                    <a href="###" class="nav-link">喂养指导</a>
                                </li>
                                <c:if test="${user.number != null}">
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="###" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            个人中心
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/toPersonalCenter">个人信息</a>
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


    <div class="div">
        <div class="div-1">
            <a href="${pageContext.request.contextPath}/PetWatch/all" target="myframe"><button class="div-1-1 btn" style="border-radius: 4px;" >全部</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?section=猫" target="myframe"><button class="div-1-1 btn" style="border: none;">猫</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?section=狗" target="myframe"><button class="div-1-1 btn" style="border: none;">狗</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?adoptionStatus=1" target="myframe"><button class="div-1-1 btn" style="border: none;">已领养</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?adoptionStatus=0" target="myframe"><button class="div-1-1 btn" style="border: none;">未领养</button></a>

            <a href="${pageContext.request.contextPath}/PetWatch/all" target="myframe"><button class="div-1-1 btn" style="border-radius: 4px;">全部</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?age=6&&a=0" target="myframe"><button class="div-1-1 btn" style="border: none;">0-6个月</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?age=24&&a=7" target="myframe"><button class="div-1-1 btn" style="border: none;">6个月-2岁</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?age=60&&a=25" target="myframe"><button class="div-1-1 btn" style="border: none;">2-5岁</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?age=100&&a=61" target="myframe"><button class="div-1-1 btn" style="border: none;">5岁+</button></a>


            <a href="${pageContext.request.contextPath}/PetWatch/all" target="myframe"><button class="div-1-1 btn" style="border-radius: 4px;">全部</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?weight=2&&b=0" target="myframe"><button class="div-1-1 btn" style="border: none;" >0-2kg</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?weight=5&&b=3" target="myframe"> <button class="div-1-1 btn" style="border: none;">2kg-5kg</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?weight=10&&b=6" target="myframe"> <button class="div-1-1 btn" style="border: none;">5kg-10kg</button></a>
            <a href="${pageContext.request.contextPath}/PetWatch/all?weight=20&&b=10" target="myframe"><button class="div-1-1 btn" style="border: none;">10kg+</button></a>

        </div>
        <div class="div-2">
            <iframe name="myframe" src="${pageContext.request.contextPath}/PetWatch/all" frameborder="0" scrolling="auto" width="100%" height="100%" onload="document.all['myframe'].style.height=myframe.document.body.scrollHeight" onload="document.all['myframe'].style.width=myframe.document.body.scrollWidth"></iframe>
        </div>
    </div>
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
<%--<script src="${pageContext.request.contextPath}/js/change.js" type="text/javascript"></script>--%>
</body>
</html>
