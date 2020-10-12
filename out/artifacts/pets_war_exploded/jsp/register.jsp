<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>注册</title>
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
	width: 30%;
	height: 300px;
	margin-left: 40%;
	margin-top: 100px;
}
.input_1{
		  box-sizing: border-box;
		  text-align:center;
		  font-size:1.4em;
		  height:2.7em;
		  border-radius:4px;
		  border:1px solid #c8cccf;
		  color:#6a6f77;
		  -web-kit-appearance:none;
		  -moz-appearance: none;
		  display:block;
		  outline:0;
		  padding:0 1em;
		  text-decoration:none;
		  width:70%;
}
</style>
</head>

<body>
    <!--::header part start::-->
    <header class="header_area">
        <div class="sub_header">
            <div class="container">
                <div class="row align-items-center">
                  <div class="col-4 col-md-4 col-xl-6">
                      <div id="logo">
                          <a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/img/Logo.png" alt="" title="" /></a>
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
                                        <a class="nav-link active" href="../index.jsp">首页</a>
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
                                        <a href="###" class="nav-link">论坛</a>
                                    </li>
                                     <li class="nav-item">
                                        <a href="###" class="nav-link"> 喂养指导</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->

    <!--::breadcrumb part start::-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::breadcrumb part start::-->


	<div class="div-1">
		<form action="${pageContext.request.contextPath}/user/add" method="post" >
		<div class="form-group">
			<input type="text" name="number" placeholder="请输入账号" class="input_1" required>
		</div>
		<div class="form-group">
			<input type="password" name="password" placeholder="请输入密码" class="input_1" required>
		</div>
		<div class="form-group">
			<input type="password" name="newPassword" placeholder="确认密码" class="input_1" required>
		</div>
			
            <button type="reset" class="button button-contactForm">重置</button>
			<button type="submit" class="button button-contactForm">注册</button>
		</form>
        ${msg}
	</div>


<!-- footer part start-->
<footer class="footer_area padding_top">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="copyright_text">
                        
                        <p class="footer-text">&copy;<script>document.write(new Date().getFullYear());</script> 期待您的加入哦 <i class="ti-heart" aria-hidden="true"></i></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</body>

</html>