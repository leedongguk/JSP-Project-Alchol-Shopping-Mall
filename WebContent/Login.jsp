<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String sessionId = (String) session.getAttribute("sessionId");%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>

<head>

<title>Welcome to DG Mall</title>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">




<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
    .img{
    position: relative;
    background-image: url("https://mir-s3-cdn-cf.behance.net/project_modules/disp/e0f4e5100690639.5f0e572f0d91a.gif");                                                               
    height: 100vh;
    background-size: cover;
}
 .img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.3);                                                                 
   z-index:1;
}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     z-index: 2;
     width: 300px;
     text-align: center;
}

        

</style>

</head>


<body style="background-color: black;">

<!-- 화면 변경 크기와 navbar의 배경색, 글자색 변경 -->
<!-- 화면 위쪽에 고정하기 위해 fixed-top 클래스 추가 -->


<nav class="navbar navbar-expand-md navbar-dark bg-darker fixed-top">
  <!-- navbar-brand의 content 변경 -->
  
  <a class="navbar-brand" href="#"><img src="https://www.jackdaniels.com/themes/JDTheme2/css/img/navLogo.png" style="width:50%; height:50%;" /></a>
  <!--<kbd class="font-weight-bold">DG MALL</kbd>-->
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    <p></p>
  </button>
      

</nav>



<!-- 로그인 안내 -->
      
      <div class="img">
        <div class="content">
        <h3 class="display-4" style="color:#baab8f;font-family: 'Koulen', cursive;">Welcome</h3>
        <p class="display-7" style="color:white;font-family: 'Bebas Neue', cursive;">Please login to DG mall.</p>
         
         
         <form class="form-signin" action="processLoginMember.jsp" method="post">
           <div class="form-group mb-3">
               <input type="text" name='id' placeholder="User Name" required autofocus class="form-control rounded-pill border-0 shadow-sm px-4">
            </div>
            <div class="form-group mb-3">
              <input id="password" type="password" name='password' placeholder="Password" required class="form-control rounded-pill border-0 shadow-sm px-4 text-primary">
            </div>
             <button type="submit" class="btn btn-Dark btn-block text-uppercase mb-2 rounded-pill shadow-sm" style="background-color:#baab8f; color:white;font-family: 'Bebas Neue', cursive;">Sign in</button>          
             <%
             String error = request.getParameter("error");
             
             if(error != null){
            	 
            	 out.println("<div class='alert alert-danger'>");
            	 out.println("Please check your ID and password.");
            	 out.println("</div>");            	 
             }
             %>
             <div class="text-center d-flex justify-content-between mt-1">
             <p style="color:white;">Made by <a href="#" class="font-italic text-muted"> 
             <u style="color:red;">Dongguk</u></a></p>  
             
             
                   <c:choose>
               <c:when test="${empty sessionId}">
             <a class="font-italic text-muted" href='<c:url value="/addMember.jsp"/>'> 
             <u style="color:red; text-decoration:none;">Create Account</u></a>
             </c:when>
              </c:choose>
             
             </div>
       </form>        
        </div>
       <div class="img-cover"></div>
    </div>

</body>
</html>