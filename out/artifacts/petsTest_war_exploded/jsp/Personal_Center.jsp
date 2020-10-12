<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
    <!-- themify CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flaticon.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style type="text/css">
        .div-1{
            width: 60%;
            height: 800px;
            margin-left: 20%;
            float: left;
            background-color:#F2F2F2;
        }
        .div-1-1{
            width: 100%;
            height: 1000px;
            margin-top: 100px;
        }
        .div-1-1-1{
            width: 60%;
            height: 100px;
            margin-left: 20%;
            float: left;
            background-color:#F2F2F2;
        }
        .div-1-1-2{
            width: 10%;
            height: 30px;
            margin-right: 7%;
            float: right;
            margin-top: 2%;
            background-color:#F2F2F2;
        }
        .div-2{
            width: 100%;
            height: 25%;

            float: left;
            background-color: #fff;
        }
        .div-2-1{
            width: 3%;
            height: 80%;

            float: left;
            margin-top: 3.5%;
            background-color:#F2F2F2;
        }
        .div-2-2{
            width: 95%;
            height: 95%;
            margin-bottom:3%;
            background-image: url("${pageContext.request.contextPath}/img/2.jpg");
            background-size: 100% 100%;
            padding:  0;
            float: left;
            margin-left: 2.5%;
            margin-top: 2.5%;

        }
        .div-2-2-1{
            width: 15%;
            height: 100%;
            margin-bottom:3%;
            float: left;

        }
        .div-2-3-1{
            width: 33%;
            height: 30%;

            margin-left: 3%;
            margin-top: 10%;

        }
        .div-4{
            width: 100%;
            height: 20%;

            float:left;
        }
        .div-4-1{
            width: 60%;
            height: 25%;

            float:left;
            border-bottom: 1px dotted black;
            margin-left: 3%;
            margin-top: 1%;
            line-height: 35px;
        }
        .div-4-2{
            width: 60%;
            height: 25%;

            float:left;

            margin-left: 3%;
            margin-top: 1%;
            line-height: 35px;
        }

        .div-2-3{
            width: 82%;
            height: 80%;

            float: left;
            margin-top: 3.5%;
            background-color:#F2F2F2;
        }
        .div-3{
            width: 100%;
            height: 6%;

            float:right;
            margin-top: 10px;
            background-color:#fff;
        }
        .div-5{
            width: 100%;
            height: 30%;

            float:left;

            margin-top: 1%;
        }
        .div-5-1{
            width: 40%;
            height: 15%;

            float:left;
            border-bottom: 1px dotted black;
            margin-left: 3%;
            margin-top: 1%;
            line-height: 35px;
        }
        .div-5-2{
            width: 40%;
            height: 15%;

            float:left;

            margin-left: 3%;
            margin-top: 1%;
            line-height: 35px;
        }
        .div-6{
            width: 100%;
            height: 13%;

            float:left;
        }
        .div-6-1{
            width: 40%;
            height: 30%;
            float:left;
            margin-left: 3%;
            margin-top: 1%;
            line-height: 25px;
        }
        .div-6-2{
            width: 90%;
            height: 60%;
            margin-top: 1.5%;
            float:left;
            border: 1px solid #666666;
            margin-left: 3%;
            border-radius: 4px;
            line-height: 25px;
        }
    </style>
    <script>
        function testa() {
            if (window.confirm("您真的要放弃您的宠物吗")){
                window.location.replace("${pageContext.request.contextPath}/updateStatus?petNumber=${user.status}&&id=${user.id}&&status=null&&adoptionStatus=0&&number=${user.number}");
            }

        }
    </script>
</head>

<body>
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
                                    <a href="${pageContext.request.contextPath}/forum/all" class="nav-link">论坛</a>
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
<!-- Header part end-->


<form action="${pageContext.request.contextPath}/user/updateUser" method="post">
    <div class="div-1-1">
        <div class="div-1">
            <div class="div-2">
                <div class="div-2-1"></div>
                <div class="div-2-2-1">
                    <div class="div-2-2"></div>
                </div>
                <div class="div-2-3">
                    <div class="div-2-3-1" style="font-size: 20px;">
                        ${user.number} 欢迎您！
                    </div>
                </div>

            </div>
            <div class="div-3" style="font-size: 15px;line-height: 50px;">&nbsp;&nbsp;&nbsp;你的资料</div>
            <div class="div-4">
                <div class="div-4-2"><h3>账号信息</h3></div>
                <div class="div-4-1">昵称：<input type="text" name="number" value="${user.number}" style="border: none;background-color:#F2F2F2;height: 20px; "></div>
                <div class="div-4-1">邮箱：<input type="text" name="email" value="${user.email}" style="border: none;background-color:#F2F2F2;height: 20px; "></div>
            </div>
            <input type="hidden" name="password" value="${user.password}">
            <div class="div-5">
                <div class="div-5-2"><h3>详细信息</h3></div>
                <div class="div-5-2"></div>
                <input type="hidden" name="id" value="${user.id}">
                <div class="div-5-1">姓名：<input type="text" name="name" value="${user.name}" style="border: none;background-color:#F2F2F2;height: 20px; "></div>
                <div class="div-5-1">性别：<input type="text" name="sex" value="${user.sex}" style="border: none;background-color:#F2F2F2;height: 20px; "></div>
                <div class="div-5-1">年龄：<input type="text" name="age" value="${user.age}" style="border: none;background-color:#F2F2F2;height: 20px; "></div>
                <div class="div-5-1">职业：<input type="text" name="occupation" value="${user.occupation}" style="border: none;background-color:#F2F2F2;height: 20px;"></div>
                <div class="div-5-1">电话：<input type="text" name="phone" value="${user.phone}" style="border: none;background-color:#F2F2F2;height: 20px; "></div>
                <div class="div-5-1">地址：<input type="text" name="address" value="${user.address}" style="border: none;background-color:#F2F2F2;height: 20px; "></div>
                <div class="div-5-1">微信：<input type="text" name="weChat" value="${user.weChat}" style="border: none;background-color:#F2F2F2;height: 20px; "></div>
                <div class="div-5-1">收养状态：
                    <c:if test="${user.status != null && user.status != ''&& user.status != 'null' }">
                        已收养
                        &nbsp; &nbsp; &nbsp;<a href="javascript:testa()">转让</a>
                    </c:if>
                    <c:if test="${user.status == null || user.status == ''|| user.status == 'null'}">
                        未收养
                        &nbsp; &nbsp; &nbsp;
                    </c:if>

                </div>

            </div>
            <div class="div-6">
                <div class="div-6-1"><h3>收养意向</h3></div>
                <div class="div-6-2" style="text-align: left;padding: 15px;"><input type="text" name="intention" value="${user.intention}" style="border: none;background-color:#F2F2F2;height: 20px;width: 800px; "></div>
            </div>
        </div>
        <div class="div-1-1-1">
            <input type="submit" value="保存信息" style="border-radius: 8px;border: none;border-bottom: 1px solid black;border-top: 1px solid black;font-size: 15px;" class="div-1-1-2">
        </div>

    </div>
</form>
<!-- footer part start-->
<footer class="footer_area padding_top">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <div class="copyright_text">
                    <p class="footer-text">&copy;<script>document.write(new Date().getFullYear());</script> 期待您的加入哦 <i class="ti-heart" aria-hidden="true"></i></a></p>
                </div>
            </div>
        </div>
    </div>
</footer>

</body>

</html>