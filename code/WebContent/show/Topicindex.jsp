<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Game-heaven</title>

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .div1{
            margin-bottom: 20px;
        }
        </style>
</head>
<!-- 获取从request中保存的message标记值，来弹出提示窗口 -->
<%
	Object message = request.getSession().getAttribute("message");
	if(message!=null && !"".equals(message)){
%>
	<script type="text/javascript">
		alert("<%=message%>");
	</script>
<%} %>
<%
	message = null;
	session.setAttribute("message", message); 
%>
<body style="padding-top: 70px;">
<script>
function isBack(){
	if(confirm("是否退出登录？")){
		location.href = "${pageContext.request.contextPath}/logout";
	}
}
</script>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">${sessionScope.board.boardName}</a>
        <c:choose>
           		<c:when test = "${not empty sessionScope.user.userName}">
           			<ul class="nav navbar-nav navbar-right">
	           			<li>
		                    <a href="${pageContext.request.contextPath}/show/index.jsp">返回</a>
		                </li>
		                <li>
		                    <a href="javascript:isBack()">退出登录</a>
		                </li>
		                <li>
		                    <a href="${pageContext.request.contextPath}/input/register.jsp">注册</a>
		                </li>
		            </ul>
           		</c:when>
           		<c:otherwise>
           			<ul class="nav navbar-nav navbar-right">
	           			<li>
		                    <a href="${pageContext.request.contextPath}/show/index.jsp">返回</a>
		                </li>
		                <li>
		                    <a href="${pageContext.request.contextPath}/input/login.jsp">登录</a>
		                </li>
		                <li>
		                    <a href="${pageContext.request.contextPath}/input/register.jsp">注册</a>
		                </li>
		            </ul>
           		</c:otherwise>
           	</c:choose>
    </div>
</nav>


<div class="container">

    <div class="div1">
    <img src="${pageContext.request.contextPath}/img/bh.jpg" alt="..." class="img-rounded">
    </div>
	
	<c:forEach var="topic" items="${sessionScope.topicList}">
	 <div class="panel panel-primary">
        <div class="panel-heading"><a href="${pageContext.request.contextPath}/findTopicById?topicId=${topic.topicId}" class="panel-title">${topic.title}</a></div>
        <div class="panel-body"> ${topic.content}</div>
        <div class="panel-footer">${topic.time}</div>
    </div>
    
      
	</c:forEach>
	  <form role="form" action="${pageContext.request.contextPath}/saveTopic">
                <div class="form-group">
                    <label for="name">标题</label>
                    <input type="text" class="form-control" placeholder="请输入标题" name = "title">
                </div>
                <label for="name">内容</label>
                <div class="form-group">
                    <textarea class="form-control" rows="3" placeholder="请输入内容" name = "content"></textarea>
                </div>
                <button type="submit" class="btn btn-primary" >我要发帖</button>
            </form>
    

</div>

<!-- jQuery -->
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>