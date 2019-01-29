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
	<script type="text/javascript" src="http://www.daimajiayuan.com/download/jquery/jquery-1.10.2.min.js"></script>  
    <script type="text/javascript" src="http://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/js/bootstrap-select.js"></script>    
	<link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/css/bootstrap-select.css">   
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>  
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://cdn.bootcss.com/html5shiv/r29/html5.min.js"></script>
            <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
	<!-- <script type="text/javascript">  
			function findAllBoard(){
				$.ajax({  
            		url:"${pageContext.request.contextPath}/findAllBoard",//servlet文件的名称
            		type:"GET",
            		success:function(e){
            			alert("servlet调用成功！");
            		}
            	});
				
			}
	</script>   -->

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
<!-- style="padding-top: 70px;" -->
<!-- onload="findAllBoard()" -->
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
       	<c:choose>
       		<c:when test = "${not empty sessionScope.user.userName}">
	       		<a class="navbar-brand" href="${pageContext.request.contextPath}/findAllBoard">欢迎来到Game-heaven，${sessionScope.user.userName}</a>
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
       		<a class="navbar-brand" href="${pageContext.request.contextPath}/findAllBoard">欢迎来到Game-heaven，请登录</a>
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
		  <h1 >Game Heaven<small>游戏论坛</small></h1>
		  <p>No game no life!</p>
		  <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/input/register.jsp" role="button"><span class="glyphicon glyphicon-user"></span>立即注册</a>
		
		</div>
		        <hr>
		    <div class="row">
				<c:forEach var='board' items='${sessionScope.boardList}' begin="0" end="3" varStatus="status">	
		            <div class="col-md-3">
		                <div class="row">
		                    <div class="col-md-2">
		                    <h4 class="glyphicon glyphicon-send"></h4>
		                    </div>
		                    <div class="col-md-10">
		                        <h4><a href="${pageContext.request.contextPath}/findBoardTopic?boardId=${board.boardId}">${board.boardName}</a></h4>
		                        <ul>
								  <li>发贴 : <span>${sessionScope.topicNumList[status.index]}</span></li>
								  <li>回复 : <span>${sessionScope.boardReplyNumList[status.index]}</span></li>
								  <li>最后发表 : <span>${sessionScope.postTimeList[status.index]}</span></li>
								</ul>
		                    </div>
		                </div>
					</div>
				</c:forEach>
			</div>
			<div class="row">
				<c:forEach var='board' items='${sessionScope.boardList}' begin="4" end="7" varStatus="status">
		            <div class="col-md-3">
		                <div class="row">
		                    <div class="col-md-2">
		                        <h4 class="glyphicon glyphicon-send"></h4>
		                    </div>
		                    <div class="col-md-10">
		                        <h4><a href="${pageContext.request.contextPath}/findBoardTopic?boardId=${board.boardId}">${board.boardName}</a></h4>
		                        <ul>
								  <li>发贴 : <span>${sessionScope.topicNumList[status.index]}</span></li>
								  <li>回复 : <span>${sessionScope.boardReplyNumList[status.index]}</span></li>
								  <li>最后发表 : <span>${sessionScope.postTimeList[status.index]}</span></li>
								</ul>
	                    </div>
	                </div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>

    <!-- jQuery -->
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>