<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
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
                                        <a href="###" class="nav-link">喂养指导</a>
                                    </li>
                                    <c:if test="${user.number != null}">
       									<li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="###" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               个人中心            
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="${pageContext.request.contextPath}/toPersonalCenter">个人信息</a>
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

    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-content-center">
                <div class="col-lg-7 col-xl-6">
                    <div class="banner_text">
                        <h2><a style="font-size: 150%;"><strong>以领养代替购买</strong></a></h2>
                        <h2>
                            请尽力帮助他们告别哀伤面向阳光
                            他们在等待人给予它们关爱</h2>
                        <a href="###" class="btn_1">OUR SERVIECS</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->

    <!-- about part start-->
    <section class="about_part section_padding">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-md-6">
                    <div class="about_img">
                        <img src="${pageContext.request.contextPath}/img/about.png" alt="">
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="about_text">
                        <img src="${pageContext.request.contextPath}/img/about_icon.png" class="about_icon" alt="">
                        <h2>关于我们</h2>
                        <p>随着社会经济的发展，猫狗等小动物数量日益增多，流浪动物也越来越多。在社会网络化的背景下，推进人与动物和谐共处符合时代特点。流浪动物救助网站能够为一些机构和爱心人士提供平台，让小宠物们能更好的找到主人使它们也更容易的生存下去。同时，也可以为一些不愿意继续养宠物的主人提供转让服务。</p>
                        <a href="###" class="btn_1">About Us</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about part start-->

    <!-- service part start-->
    <section class="service_part section_padding services_bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section_tittle text-center">
                        <img src="${pageContext.request.contextPath}/img/about_icon.png" alt="">
                        <h2>我们的工作</h2>

                    </div>
                </div>
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_service_part">
                        <img src="${pageContext.request.contextPath}/img/single_service_1.png" alt="#">
                        <h3>收养流浪猫狗</h3>
                        <p>我们的工作人员会定时去各个地方查看流浪猫狗的存在，只要我们发现了都会带回到我们的协会中心收养。</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_service_part">
                        <img src="${pageContext.request.contextPath}/img/single_service_2.png" alt="#">
                        <h3>健康的保障</h3>
                        <p>收养进来的流浪猫狗，我们会先帮助它们基本的驱虫，然后为它们检查是否有疾病，并保障它们良好的身体健康。</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_service_part">
                        <img src="${pageContext.request.contextPath}/img/single_service_3.png" alt="#">
                        <h3>帮助找新家</h3>
                        <p>我们会给健康的流浪猫狗，找到适合它们的新家庭，领养人我们会经过严格的筛选，达到我们的条件才能成功的领养。</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- service part end-->

    <!-- counter adopt number here -->
    <section class="abopt_number_counter section_padding">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-5 col-md-6">
                    <div class="counter_text">
                        <h2>他们需要您的帮助</h2>
                        <p>街头巷尾的流浪猫狗数目极为庞大,绝望无助的眼神中,满是身处绝境的无奈,置之不理等待他们的除了病痛就是死亡</p>
                        <div class="counter_number">
                            <div class="single_counter_number">
                                <img src="${pageContext.request.contextPath}/img/adopt_icon_1.png" alt="#">
                                 <h3><span class="count">50000000</span></h3>
                                <p>国内统计数据</p>
                            </div>
                        </div>
                        <a href="###" class="btn_1">Brows Now</a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="adopt_image">
                        <img src="${pageContext.request.contextPath}/img/adopt_img.png" alt="#">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- counter adopt number end -->

     <!-- client review part here -->
     <section class="client_review">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="client_review_content owl-carousel">
                        <div class="singke_client_review">
                            <img src="${pageContext.request.contextPath}/img/review_img_1.png" alt="#">
                            <h4>" 我们是同一个星球上的一家人,我们生命应该是平等的.</h4>
                            <h2><p>- 阿政</p></h2>
                        </div>
                        <div class="singke_client_review">
                            <img src="${pageContext.request.contextPath}/img/review_img_2.png" alt="#">
                            <h4>" 地球没有了动物,就如蓝天没有了白云.</h4>
                            <h2><p>- 佳琪</p></h2>
                        </div>
                        <div class="singke_client_review">
                            <img src="${pageContext.request.contextPath}/img/review_img_3.png" alt="#">
                            <h4>" 不要让我们的孩子只能在博物馆里才见到今天的动物.爱护动物,就是爱护我们自己不要让人类成为最后一种动物.</h4>
                            <h2><p>- 政委</p></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- client review part end -->

    <!-- about part start-->
    <section class="about_part section_padding">

        <div class="about_part section_padding">
            <div class="row align-items-center justify-content-between">
                <div class="col-md-6">
                    <div class="about_img">
                        <img src="${pageContext.request.contextPath}/img/valunteer_img1.jpg" alt="">
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="about_img">
                        <img src="${pageContext.request.contextPath}/img/valunteer_img2.jpg" alt="">
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="about_img">
                        <img src="${pageContext.request.contextPath}/img/valunteer_img3.jpg" alt="">
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="about_img">
                        <img src="${pageContext.request.contextPath}/img/valunteer_img4.jpg" alt="">
                    </div>

                </div>

            </div>
        </div>
        <div class="row align-items-center justify-content-between">
            <div class="row align-items-center justify-content-between">
                <div class="col-md-6">
                    <div class="about_img">
                        <img src="${pageContext.request.contextPath}/img/valunteer_img5.jpg" alt="">
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="about_img">
                        <img src="${pageContext.request.contextPath}/img/valunteer_img6.jpg" alt="">
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="about_img">
                        <img src="${pageContext.request.contextPath}/img/valunteer_img7.jpg" alt="">
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="about_img">
                        <img src="${pageContext.request.contextPath}/img/valunteer_img8.jpg" alt="">
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- about part end-->

    <!-- footer part start-->
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