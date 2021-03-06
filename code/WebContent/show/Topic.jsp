<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EasyBBS</title>

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .div1{
            height:300px;
            width:100%;

            position: relative;
        }
        .div2{
            height: 300px;
            width: 20%;
            background-color: ghostwhite;


        }
        .div3{

            width: 80%;
            font-size:33px;
            text-align: center;
            left: 228px;
            position: absolute;
            top: 0px;
            height: 50px;
            background-color: white;
        }
        .div4{
            height: 80px;
            width: 80px;
            position: absolute;
            top: 40px;
            left: 70px;
            background: white;

        }
        .div5{
            height: 30px;
            width: 80px;
            position: absolute;
            top: 130px;
            left: 70px;
            text-align: center;
        }
       
        .div7{
            height:250px;
            width: 80%;
            background-color: whitesmoke;
            position: absolute;
            left: 228px;
            top: 50px;
            font-size: 20px;
        }
        .div8{
            
            line-height: 30px;
        }
        .div9{
            height:250px;
            width: 80%;

            position: absolute;
            left: 228px;
            top: 50px;
            font-size: 20px;
        }
        .div6{
         width: 80%;
            font-size:20px;
           
            left: 228px;
            position: absolute;
            top: 0px;
            height: 300px;
            background-color: whitesmoke;
            
         	
           
        }
        .div11{
         	height: 30px;
            width: 80px;
            position: absolute;
            top: 210px;
            left: 800px;
            text-align: center;
            font-size:10px;
        }
        </style>
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
       	<c:choose>
       		<c:when test = "${not empty sessionScope.user.userName}">
	       		<a class="navbar-brand" href="${pageContext.request.contextPath}/show/Topicindex.jsp">${sessionScope.board.boardName}</a>
	       		<ul class="nav navbar-nav navbar-right">
	       		  <li>
		              <a href="${pageContext.request.contextPath}/show/Topicindex.jsp">返回</a>
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
       		<a class="navbar-brand" href="${pageContext.request.contextPath}/show/Topicindex.jsp">${sessionScope.board.boardName}</a>
       		<ul class="nav navbar-nav navbar-right">
			  <li>
		          <a href="${pageContext.request.contextPath}/show/Topicindex.jsp">返回</a>
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


<!-- 楼主内容 -->
<div class="container">

    <div class="div1" style="margin-top: 15px">
        <div class="div2">
            <div class="div4">
                <img src="${pageContext.request.contextPath}/img/timg.jpg" width="100%" height="100%">
            </div>
            <div class="div5">
                ${requestScope.user.userName}
            </div>
        </div>
        <div class="div3">
        ${requestScope.topic.title}
        </div>
        <div class="div7">
            <div class="div8">
        ${requestScope.topic.content}
            </div>
            <div class="div11">
           ${requestScope.topic.time}
            </div>
        </div>
    </div>
    
    
 <!-- 帖子回复内容 -->
<c:forEach var="reply" items ="${requestScope.replyList}" varStatus="status">
	
	    <div class="div1" style="margin-top: 15px">
       	 <div class="div2">
            <div class="div4">
                <img src="${pageContext.request.contextPath}/img/timg.jpg" width="100%" height="100%">
            </div>
            <div class="div5">
             ${requestScope.userList[status.index].userName}
            </div>
        </div>
       <div class="div6">
        ${reply.content}
         <div class="div11">
           ${reply.replyTime}
            </div>
        </div>
        
        
   </div>
</c:forEach>


   

    
    
<!-- 回复框 -->
    <div class="div1" style="margin-top: 15px;margin-bottom: 30px">

        <div class="div3">

        </div>
        <div class="div9">
        <form role="form" action="${pageContext.request.contextPath}/saveReply">
            <div class="form-group">
                <textarea class="form-control" rows="3" name="content"></textarea>
                <input type="hidden" name = "topicId" value="${requestScope.topic.topicId}">
            </div>
            <button type="submit" class="btn btn-primary" >回复</button>
        </form>
        </div>
    </div>




</d>

<!-- jQuery -->
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>