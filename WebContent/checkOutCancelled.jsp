<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Alchol"%>
<%@ page import="dao.AlcholRepository"%>

<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>주문 정보</title>

<style>
.img{
    position: relative;
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1469130393/carousel/d/Home_No7_Desktop_01_Opt.jpg");                                                               
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
     width: 1500px;
     text-align: center;
}

  <%@ include file="button.jsp" %>

</style>
</head>
<body>
<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>
      <div class="img">
        <div class="content">
       	<div class="container">
		<h2 style=" font-size: 70px;color:#baab8f;font-family: 'Koulen', cursive;">ORDER CANCELLATION</h2>
		<p style="font-size: 20px;color:white;font-family: 'Koulen', cursive;">Your order has been canceled.
		<p><button class="w-btn w-btn-gray" onclick="location.href='./product.jsp'" type="button"> &laquo; PRODUCT</button></p>	
	</div>
       </div>
       <div class="img-cover"></div>
    </div>
</body>
</html>
