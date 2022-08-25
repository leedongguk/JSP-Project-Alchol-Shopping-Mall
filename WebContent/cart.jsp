<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Alchol"%>
<%@ page import="dao.AlcholRepository"%>

<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<%
	String cartId = session.getId();
%>
<title>장바구니</title>

<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
    .img{
    position: relative;
    background-image: url("https://images.squarespace-cdn.com/content/v1/5e4ebffeccd62403a77158ca/1611836590498-OYLV7H5N2YZ337TRAVW6/JW_NSOF_Jigger.gif");                                                               
    height: 600;
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
     width: 600px;
     text-align: center;
}

p a {
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
a:link{
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
a:visited {
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
a:ahover {
    font-size: inherit;
    font-weight: inherit;
    color: #BBBBBB;
    letter-spacing: inherit;
}
a:active{
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
.ghost-button {
 display: inline-block;
 width:100px;
 height:50px;
 padding: 8px;
 color: #baab8f;
 border: 2px solid #baab8f;
 outline: none;
 text-decoration: none;
 text-align:center;
 background-color:#baab8f;
}
</style>
</head>
<body style="background-color: black;">
<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>

      <div class="img">
        <div class="content">
        <h1 class="display-1" style="color:white;font-family: 'Koulen', cursive;">CART</h1>
       </div>
       <div class="img-cover"></div>
    </div>

<!-- 게시판 -->    
    
    	<!-- 게시판 -->
		<div class="container mt-5">
			<div class = "row">
				<table class = "table table-striped" style="text-align:center; border:2px solid #baab8f;">
					<thead>
						<tr>
							<th style = "background-color:#baab8f; font-family: 'Bebas Neue', cursive; text-align:center;">Image</th>
							<th style = "background-color:#baab8f; font-family: 'Bebas Neue', cursive; text-align:center;">Product</th>
							<th style = "background-color:#baab8f; font-family: 'Bebas Neue', cursive; text-align:center;">Quantity</th>
							<th style = "background-color:#baab8f; font-family: 'Bebas Neue', cursive; text-align:center;">Price</th>
							<th style = "background-color:#baab8f; font-family: 'Bebas Neue', cursive; text-align:center;">Note</th>							
						</tr>
					</thead>
					<tbody style="background-color:white;">
						<tr>
						<%
						int sum = 0;
						int Num = 1;
						ArrayList<Alchol> cartList = (ArrayList<Alchol>)
						session.getAttribute("cartlist");
						
						if(cartList == null){
							cartList = new ArrayList<Alchol>();
						}
						
						for(int i=0; i<cartList.size(); i++){
							Alchol alchol = cartList.get(i);
							int total = alchol.getPrice() * alchol.getQuantity();
							sum = sum + total;
							
						
						
						%>
						<td style = "background-color:white; font-family: 'Dosis', sans-serif; text-align:center;"><p><img class="featurette-image img-responsive center-block" src="<%=alchol.getFile()%>" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:50px; height:100px;"></p></td>
						<td style = "background-color:white;font-family: 'Dosis', sans-serif;  text-align:center; font-size:28px;"><p><%=alchol.getName()%></p></td>
						<td style = "background-color:white; font-family: 'Dosis', sans-serif; text-align:center; font-size:28px;"><p><%=alchol.getQuantity()%></p></td>
					    <td style = "background-color:white; font-family: 'Dosis', sans-serif; text-align:center;font-size:28px;"><p><%=alchol.getPrice()%></p></td>
						<td style = "background-color:white; font-family: 'Dosis', sans-serif; text-align:center;"><a class="ghost-button" href="./removeCart.jsp?id=<%=alchol.getId()%>" style="">DELETE&raquo;</a></td>
						</tr>
				<%} %>
					</tbody>
					<tbody>
					<tr>
							<th style = "background-color:#baab8f; font-family: 'Bebas Neue', cursive;text-align:center;"></th>
							<th style = "background-color:#baab8f; font-family: 'Bebas Neue', cursive; text-align:center;"></th>
							<th style = "background-color:#baab8f; font-family: 'Bebas Neue', cursive;text-align:center;">총액</th>
							<th style = "background-color:#baab8f; font-family: 'Bebas Neue', cursive;text-align:center;"><%=sum %></th>
							<th style = "background-color:#baab8f; font-family: 'Bebas Neue', cursive; text-align:center;"></th>						
					</tr>
					</tbody>
				</table>
              <a class="ghost-button" href="./shippingInfo.jsp?cartId=<%=cartId%>" style="">ORDER&raquo;</a>
			</div>
		</div>
    

<!-- footer -->
<%@ include file="footer.jsp" %>
</body>
</html>
