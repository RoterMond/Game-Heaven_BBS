<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Game_Heaven - 用户注册</title>

        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://cdn.bootcss.com/html5shiv/r29/html5.min.js"></script>
            <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

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
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/show/index.jsp">欢迎来到Game-heaven</a>
           	<c:choose>
           		<c:when test = "${not empty sessionScope.user.userName}">
           			<ul class="nav navbar-nav navbar-right">
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
            
            <form action="${pageContext.request.contextPath}/saveUser.do" method="POST" role="form" style="margin: 100px auto; width: 520px;">
                <legend>Game Heaven - 用户注册</legend>
            
                <div class="form-group">
                    <label for="">用户名</label>
                    <input type="text" class="form-control" id="" placeholder="用户名" name="userName">
                </div>
                
                <div class="form-group">
                    <label for="">密码</label>
                    <input type="password" class="form-control" id="" placeholder="密码" name="password">
                </div>

                <div class="form-group">
                    <label for="">确认密码</label>
                    <input type="password" class="form-control" id="" placeholder="确认密码" name="repassword">
                </div>
                
                 <div class="form-group">
                    <label for="">手机号(请输入11位手机号)</label>
                    <input type="text" class="form-control" id="" placeholder="手机号" name="phone">
                </div>
                
                 <div class="form-group">
                    <label for="">邮箱</label>
                    <input type="text" class="form-control" id="" placeholder="邮箱" name="email">
                </div>
                
                <div class="form-group">
                    <label for="">性别</label>
                 	<select class="form-control"name="sex">
            			<option value = "0">男</option>
            			<option value = "1">女</option>       
        			</select>
				</div>
				
                 <div class="form-group">
                    <label for="">年龄</label>
                    <input type="text" class="form-control" id="" placeholder="年龄" name="age">
                </div>
            
                <button type="submit" class="btn btn-primary">立即注册</button>
            </form>      
        </div>

        <!-- jQuery -->
        <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>