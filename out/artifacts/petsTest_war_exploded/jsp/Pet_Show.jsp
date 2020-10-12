<%--
  Created by IntelliJ IDEA.
  User: 82134
  Date: 2020/10/6
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
<style>
    .div{
        width: 100%;
        height: 1000px;
        background-color:#F2F2F2;
    }
    .div-1{
        width: 20%;
        height: 23%;
        float: left;
        margin-left: 4%;
        margin-top: 2%;

    }
    .div-2{
        width: 100%;
        height: 70%;
        float: left;
        background-color:#F2F2F2;
        border-radius: 4px;
    }
    .div-2-1{
        width: 100%;
        height: 30%;
        float: left;
    }
    .div-3{
        width: 100%;
        height: 3%;
        line-height: 40px;
    }
</style>

    <script>
        function toPet_information(id) {
            window.location.href = "${pageContext.request.contextPath}/selectOne?id=" + id;
        }
    </script>
</head>
<body>
<div class="div">
    <c:forEach items="${PetWatch.lists}" var="pets">
        <div class="div-1">
            <a href="javascript:toPet_information(${pets.id})"><img src=${pets.petPictures} class="div-2"></a>
            <div class="div-2-1">
                <p style="font-size: 15px;">&nbsp;${pets.petNumber}&nbsp;&nbsp;&nbsp;${pets.section}&nbsp;&nbsp;&nbsp;${pets.species}<br>
                    &nbsp;年龄：${pets.age}个月</p>
            </div>
        </div>
    </c:forEach>
</div>
<div class="div-3" style="text-align: center;">
    <div class="div-4">
        <span>总记录数：${PetWatch.totalCount } </span>
        <span>第${PetWatch.currPage }/ ${PetWatch.totalPage}页</span>
        <span>
                <c:if test="${PetWatch.currPage != 1}">
                    <a href="${pageContext.request.contextPath }/PetWatch/all?currentPage=1&&section=${pw.section}&&adoptionStatus=${pw.adoptionStatus}&&age=${pw.age}&&a=${a}&&weight=${pw.weight}&&b=${b}">[首页]</a>
                    <a href="${pageContext.request.contextPath }/PetWatch/all?currentPage=${PetWatch.currPage-1}&&section=${pw.section}&&adoptionStatus=${pw.adoptionStatus}&&age=${pw.age}&&a=${a}&&weight=${pw.weight}&&b=${b}">[上一页]</a>
                </c:if>
                <span>当前为第${PetWatch.currPage}页</span>
                <c:if test="${PetWatch.currPage != PetWatch.totalPage}">
                    <a href="${pageContext.request.contextPath }/PetWatch/all?currentPage=${PetWatch.currPage+1}&&section=${pw.section}&&adoptionStatus=${pw.adoptionStatus}&&age=${pw.age}&&a=${a}&&weight=${pw.weight}&&b=${b}">[下一页]</a>
                    <a href="${pageContext.request.contextPath }/PetWatch/all?currentPage=${PetWatch.totalPage}&&section=${pw.section}&&adoptionStatus=${pw.adoptionStatus}&&age=${pw.age}&&a=${a}&&weight=${pw.weight}&&b=${b}">[尾页]</a>
                </c:if>
                </span>
    </div>
</div>
</body>
</html>
