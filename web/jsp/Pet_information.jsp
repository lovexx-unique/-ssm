<%--
  Created by IntelliJ IDEA.
  User: 82134
  Date: 2020/10/6
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>Title</title>
    <style>
        .div{
            width: 100%;
            height: 900px;
            border: 1px solid black;
            background-color:#F2F2F2;
        }
        .div-1{
            width: 95%;
            height: 95%;
            margin-left: 2.5%;
            margin-top: 2.5%;
            background-image: url("${pageContext.request.contextPath}/img/2.jpg");
            background-size: 100% 100%;
            padding:  0;
            float: left;
        }
        .div-1-1{
            width: 25%;
            height: 30%;
            margin-left: 5%;
            margin-top: 5%;
            float: left;
            border: 1px solid black;
        }
        .div-2{
            width: 50%;
            height: 7%;
            border-bottom: 1px dotted black;
            margin-left: 5%;
            margin-top: 3%;
            float: left;
            line-height: 50px;
        }
        .div-3{
            width: 100%;
            height: 58%;
            margin-top: 3%;
            float: left;
        }
        .div-3-1{
            width: 45%;
            height: 10%;
            border-bottom: 1px dotted black;
            margin-top: 3%;
            margin-left: 3%;
            float: left;
            line-height: 50px;
        }

    </style>
</head>
<script>
    function adoptIt() {
        if ("${user.number}" == ""){
            if (window.confirm("用户尚未登陆，请先登录")){
                parent.location.replace("${pageContext.request.contextPath}/jsp/login.jsp");
            }

        }
        else {
            if ("${user.status}" == null || "${user.status}" == "" || "${user.status}" == "null"){
                if ("${user.name}" != "" && "${user.occupation}" != "" && "${user.sex}" != "" && "${user.age}" != "" && "${user.address}" != "" && "${user.phone}" != ""){
                    parent.location.replace("${pageContext.request.contextPath}/updatePet?petNumber=${petWatch.petNumber}&&adoptionStatus=1&&status=${petWatch.petNumber}&&id=${user.id}&&number=${user.number}" );
                } else {
                  if (window.confirm("您的个人信息并不完善，无法领养，请先完善个人信息")){
                      parent.location.replace("${pageContext.request.contextPath}/jsp/Personal_Center.jsp");
                  }
                }
            } else {
                alert("您已领养动物，无法再次领养")
            }
        }

    }
</script>
<body>
<div class="div">
    <div class="div-1-1"><img src=${petWatch.petPictures} alt="0UibY4.jpg" border="0"  class="div-1" /></div>
    <div class="div-2"></div>
    <div class="div-2">&nbsp;&nbsp;姓名：${petWatch.petNumber}</div>
    <div class="div-2">&nbsp;&nbsp;年龄：${petWatch.age}</div>
    <div class="div-3">
        <div class="div-3-1">宠物编号：${petWatch.petNumber}</div>
        <div class="div-3-1">科：${petWatch.section}</div>
        <div class="div-3-1">种：${petWatch.species}</div>
        <div class="div-3-1">性别：${petWatch.sex}</div>
        <div class="div-3-1">救助地址：${petWatch.rescueAddress}</div>
        <div class="div-3-1">体重：${petWatch.weight}kg</div>
        <div class="div-3-1">救助人：${petWatch.salvor}</div>
        <div class="div-3-1">收养状态：
        <c:if test="${petWatch.adoptionStatus == 0}">
            未收养
        </c:if>
        <c:if test="${petWatch.adoptionStatus == 1}">
            已收养
        </c:if>
        </div>
        <div class="div-3-1">健康状况：${petWatch.healthy}</div>
        <div class="div-3-1">登记时间：${petWatch.registration}</div>
        <div class="div-3-1" style="border: none;"></div>
        <c:if test="${petWatch.adoptionStatus == 0}">
            <a class="div-3-1" style="text-align:right;margin-right:1%;border: none;" href="javascript:adoptIt()">收养它</a>
        </c:if>
    </div>
</div>
</body>
</html>
