<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Alchol"%>
<%@ page import="dao.AlcholRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();

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
			if (n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_country"))
				shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_zipCode"))
				shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>주문 정보</title>

<style>
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

@keyframes gradient1 {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

@keyframes ring {
    0% {
        width: 30px;
        height: 30px;
        opacity: 1;
    }
    100% {
        width: 300px;
        height: 300px;
        opacity: 0;
    }
}

.w-btn-neon2 {
    position: relative;
    border: none;
    min-width: 200px;
    min-height: 50px;
    background: linear-gradient(
        90deg,
        rgba(129, 230, 217, 1) 0%,
        rgba(79, 209, 197, 1) 100%
    );
    border-radius: 1000px;
    color: darkslategray;
    cursor: pointer;
    box-shadow: 12px 12px 24px rgba(79, 209, 197, 0.64);
    font-weight: 700;
    transition: 0.3s;
}

.w-btn-neon2:hover {
    transform: scale(1.2);
}

.w-btn-neon2:hover::after {
    content: "";
    width: 30px;
    height: 30px;
    border-radius: 100%;
    border: 6px solid #00ffcb;
    position: absolute;
    z-index: -1;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation: ring 1.5s infinite;
}

@keyframes gradient2 {
    0% {
        background-position: 100% 50%;
    }
    50% {
  

</style>
</head>
<body>
<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>
      <div class="img">
        <div class="content">
       	<div class="container">
		<h2 style=" font-size: 70px;color:#baab8f;font-family: 'Koulen', cursive;">ORDER CONFIRMATION</h2>
		<p style="font-size: 20px;color:white;font-family: 'Koulen', cursive;">	Please check it out your ORDER CONFIRMATION
	</div>
	
		<div class="container col-8 alert alert-info" style="margin-top:50px; background-color:white;">
		<div class="text-center ">
			<h1>Receipt</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>Shipping address</strong> <br> Name : <% out.println(shipping_name); %>	<br> 
				Postal code : <% 	out.println(shipping_zipCode);%><br> 
				Address : <%	out.println(shipping_addressName);%>(<%	out.println(shipping_country);%>) <br>
			</div>
			<div class="col-4" align="right">
				<p>	<em>Date: <% out.println(shipping_shippingDate);%></em>
			</div>
		</div>
		<div>
			<table class="table table-hover">			
			<tr>
				<th class="text-center">Product</th>
				<th class="text-center">Quantity</th>
				<th class="text-center">Price</th>
				<th class="text-center">Total</th>
			</tr>
			<%
				int sum = 0;
				ArrayList<Alchol> cartList = (ArrayList<Alchol>) session.getAttribute("cartlist");
				if (cartList == null)
					cartList = new ArrayList<Alchol>();
				for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
					Alchol alchol = cartList.get(i);
					int total = alchol.getPrice() * alchol.getQuantity();
					sum = sum + total;
			%>
			<tr>
				<td class="text-center"><em><%=alchol.getName()%> </em></td>
				<td class="text-center"><%=alchol.getQuantity()%></td>
				<td class="text-center"><%=alchol.getPrice()%>원</td>
				<td class="text-center"><%=total%>원</td>
			</tr>
			<%
				}
			%>
			<tr>
				<td> </td>
				<td> </td>
				<td class="text-right">	<strong>Total: </strong></td>
				<td class="text-center text-danger"><strong><%=sum%> </strong></td>
			</tr>
			</table>
			
				<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId%>"class="btn btn-secondary" role="button"> Back </a>
				<a href="./thankCustomer.jsp"  class="btn btn-success" role="button" style="border:none;background-color:#baab8f;font-family: 'Koulen', cursive;">Order Completed </a>
				<a href="./checkOutCancelled.jsp" class="btn btn-secondary"	role="button"> Cancel </a>			
		</div>
	</div>
       </div>
       <div class="img-cover"></div>
    </div>
</body>
</html>
