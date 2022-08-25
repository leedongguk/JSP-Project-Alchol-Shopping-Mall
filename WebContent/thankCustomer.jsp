<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>주문 완료</title>

<style>
 body { 
            padding: 0px;
            margin: 0px;            
        }
    .img{
    position: relative;
    background-image: url("https://cdn.getnews.co.kr/news/photo/202204/581056_273796_5943.jpg");                                                               
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
	<%
		String shipping_cartId = "";
		String shipping_name = "";
		String shipping_shippingDate = "";
		String shipping_country = "";
		String shipping_zipCode = "";
		String shipping_addressName = "";		

		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if (n.equals("Shipping_shippingDate"))
					shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>
<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>
      <div class="img">
        <div class="content">
       	<div class="container">
		<h2 style=" font-size: 70px;color:white;font-family: 'Koulen', cursive;">Thank you for your order.</h2>
		<p style="font-size: 30px;color:white;font-family: 'Koulen', cursive;">	The order will be delivered on the	<%	out.println(shipping_shippingDate);	%> !!	
		<p style="font-size: 30px;color:white;font-family: 'Koulen', cursive;">	Order number:	<%	out.println(shipping_cartId);	%>		
	</div>
	<div class="container">
		        <button class="w-btn-neon2" type="button" onclick="location.href='product.jsp'">
                   BACK
                </button>	
	</div>
       
       </div>
       <div class="img-cover"></div>
    </div>
	
</body>
</html>
<%
	session.invalidate();

	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_country"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_zipCode"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
%>
