<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 82134
  Date: 2020/10/5
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!-- themify CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flaticon.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
        .div{
            width: 100%;
            height: 1000px;


        }
        .div-1{
            width: 95%;
            height: 95%;
            margin-left: 2.5%;
            margin-top: 2.5%;
            background-color:#F3F3F3;
        }
        .div-1-1{
            width: 60%;
            height: 900px;
            margin-left: 20%;
            margin-top: 2%;
            background-color:#F2F2F2;
        }
        .div-2{
            width: 100%;
            height: 15%;
            float: left;
            border: 1px solid black;
            border-radius: 8px;
            margin-top: 2%;

        }
        .div-2-1{
            width: 100%;
            height: 5%;
            float: left;
            background-color: #F3F3F3;

        }
        .div-2-2{
            width: 80%;
            height: 80%;
            border-radius: 8px;
            float: right;
            margin-top: 2%;
            margin-right: 0.5%;
        }
        .div-2-3{
            width: 15%;
            height: 100%;
            float: right;

        }
        .div-3{
            width: 100%;
            height: 17%;
            border-bottom: 1px dotted #ba8b00;
            float: left;
        }
        .div-3-1{
            width: 8%;
            height: 90%;
            float: left;
        }
        .div-3-2{
            width: 73%;
            height: 45%;
            float: left;
            border-radius:50%;
            margin-left:20%;
            margin-top: 20%;
            background-image: url("${pageContext.request.contextPath}/img/2.jpg");
            background-size: 100% 100%;
            padding:  0;
        }
        .div-3-3{
            width: 60%;
            height: 20%;
            float: left;
            margin-top: 1%;
            margin-left: 1%;
        }
        .div-3-4{
            width: 60%;
            height: 20%;
            float: left;
            margin-top: 0.5%;
            margin-left: 1%;
        }
        .div-3-5{
            width: 80%;
            height: 30%;
            float: left;
            margin-top: 1%;
            margin-left: 1%;
        }
        .div-4{
            width: 50%;
            height: 5%;
            float: left;
            margin-top: 3%;
            margin-left: 25%;
            line-height: 45px;
        }

    </style>

    <script>
        function delFroUm(id) {
            if (window.confirm("你确定要删除吗？")){
                window.location.href = "${pageContext.request.contextPath}/forum/del?id=" + id;
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
                                        <a class="dropdown-item" href="###">流浪动物救助</a>
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

<form action="${pageContext.request.contextPath}/forum/add" method="post">
<div class="div">
    <div class="div-1-1">
        <div class="div-1">
            <div class="div-2">
                <textarea rows="50" maxlength="80" name="content" cols="3" style="width: 100%;height: 100%;border-radius: 8px;resize:none;"></textarea>
            </div>
                <div class="div-2-1">
                    <div class="div-2-3">
                        <input type="hidden" name="number" value="${user.number}">
                        <button class="div-2-2">发布留言</button>
                    </div>
                </div>
            <c:forEach items="${pagemsg.lists}" var="forum">
                <div class="div-3">
                    <div class="div-3-1">
                        <div class="div-3-2"></div>
                    </div>
                    <div class="div-3-3" style="line-height: 30px;font-size: 20px;">${forum.number}</div>
                    <div class="div-3-4" style="line-height: 35px;font-size: 10px;"><script>document.write(new Date().toTimeString());</script>
                        <c:choose>
                            <c:when test="${user.number == 'admin'}">
                                <a href="javascript:delFroUm('${forum.id}')" >删除</a>
                            </c:when>
                            <c:when test="${user.number == forum.number}">
                                <a href="javascript:delFroUm('${forum.id}')" >删除</a>
                            </c:when>
                        </c:choose>
                    </div>
                    <div class="div-3-5" style="line-height: 35px;font-size: 15px;">${forum.content}</div>
                </div>
            </c:forEach>
            <div class="div-4">
                <span>总记录数：${pagemsg.totalCount } </span>
                <span>第${pagemsg.currPage }/ ${pagemsg.totalPage}页</span>
                <span>
                <c:if test="${pagemsg.currPage != 1}">
                   <a href="${pageContext.request.contextPath }/forum/all?currentPage=1">[首页]</a>
                   <a href="${pageContext.request.contextPath }/forum/all?currentPage=${pagemsg.currPage-1}">[上一页]</a>
                </c:if>
                <span>当前为第${pagemsg.currPage}页</span>
                <c:if test="${pagemsg.currPage != pagemsg.totalPage}">
                   <a href="${pageContext.request.contextPath }/forum/all?currentPage=${pagemsg.currPage+1}">[下一页]</a>
                   <a href="${pageContext.request.contextPath }/forum/all?currentPage=${pagemsg.totalPage}">[尾页]</a>
                </c:if>
                </span>
            </div>

            </div>
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
<!-- footer part end-->

<!-- jquery plugins here-->
<!-- jquery -->
<script src="js/jquery-1.12.1.min.js"></script>
<!-- popper js -->
<script src="js/popper.min.js"></script>
<!-- bootstrap js -->
<script src="js/bootstrap.min.js"></script>
<!-- counterup js -->
<script src="js/jquery.counterup.min.js"></script>
<!-- waypoints js -->
<script src="js/waypoints.min.js"></script>
<!-- easing js -->
<script src="js/jquery.magnific-popup.js"></script>
<!-- particles js -->
<script src="js/owl.carousel.min.js"></script>
<!-- custom js -->
<script src="js/custom.js"></script>
</body>
</html>
