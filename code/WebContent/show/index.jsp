<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Game_heaven </title>

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
<div class="jumbotron">
<div style="text-align:center">
  <h1 >Game Heaven</h1>
  <p>No game no life!</p>
  <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/input/register.jsp" role="button">立即注册</a></p>

       </div>
        <hr>
        <div class="row">
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-2">
                        <h4 class="glyphicon glyphicon-send"></h4>
                    </div>
                    <div class="col-md-10">
                        <h4><a href="${pageContext.request.contextPath}/findBoardTopic?boardId=1">恐怖类</a></h4>
                        <p>
                            发贴 : <span>55</span>, 回复 : <span>66</span>
                        </p>
                        <p>
                            最后发表 : <span>2019-1-10 17:43</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-2">
                        <h4 class="glyphicon glyphicon-send"></h4>
                    </div>
                    <div class="col-md-10">
                        <h4><a href="${pageContext.request.contextPath}/findBoardTopic?boardId=2">射击类</a></h4>
                        <p>
                            发贴 : <span>55</span>, 回复 : <span>66</span>
                        </p>
                        <p>
                            最后发表 : <span>2019-1-10 17:43</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-2">
                        <h4 class="glyphicon glyphicon-send"></h4>
                    </div>
                    <div class="col-md-10">
                        <h4><a href="${pageContext.request.contextPath}/findBoardTopic?boardId=3">动作冒险类</a></h4>
                        <p>
                            发贴 : <span>55</span>, 回复 : <span>66</span>
                        </p>
                        <p>
                            最后发表 : <span>2019-1-10 17:43</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-2">
                        <h4 class="glyphicon glyphicon-send"></h4>
                    </div>
                    <div class="col-md-10">
                        <h4><a href="${pageContext.request.contextPath}/findBoardTopic?boardId=4">角色扮演类</a></h4>
                        <p>
                            发贴 : <span>55</span>, 回复 : <span>66</span>
                        </p>
                        <p>
                            最后发表 : <span>2019-1-10 17:43</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-2">
                        <h4 class="glyphicon glyphicon-send"></h4>
                    </div>
                    <div class="col-md-10">
                        <h4><a href="${pageContext.request.contextPath}/findBoardTopic?boardId=5">策略类</a></h4>
                        <p>
                            发贴 : <span>55</span>, 回复 : <span>66</span>
                        </p>
                        <p>
                            最后发表 : <span>2019-1-10 17:43</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-2">
                        <h4 class="glyphicon glyphicon-send"></h4>
                    </div>
                    <div class="col-md-10">
                        <h4><a href="${pageContext.request.contextPath}/findBoardTopic?boardId=6">赛车类</a></h4>
                        <p>
                            发贴 : <span>55</span>, 回复 : <span>66</span>
                        </p>
                        <p>
                            最后发表 : <span>2019-1-10 17:43</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-2">
                        <h4 class="glyphicon glyphicon-send"></h4>
                    </div>
                    <div class="col-md-10">
                        <h4><a href="${pageContext.request.contextPath}/findBoardTopic?boardId=7">体育类</a></h4>
                        <p>
                            发贴 : <span>55</span>, 回复 : <span>66</span>
                        </p>
                        <p>
                            最后发表 : <span>2019-1-10 17:43</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-2">
                        <h4 class="glyphicon glyphicon-send"></h4>
                    </div>
                    <div class="col-md-10">
                        <h4><a href="${pageContext.request.contextPath}/findBoardTopic?boardId=8">格斗对打类</a></h4>
                        <p>
                            发贴 : <span>55</span>, 回复 : <span>66</span>
                        </p>
                        <p>
                            最后发表 : <span>2019-1-10 17:43</span>
                        </p>
                    </div>
                </div>
            </div>
           
                       
            
        </div>
</div>
    </div>

    <!-- jQuery -->
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>