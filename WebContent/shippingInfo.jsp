<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<title>배송 정보</title>

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
   background-color: rgba(0, 0, 0, 0.2);                                                                 
   z-index:1;
}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     z-index: 2;
     width: 800px;
     text-align: center;
     background-color:#DCDCDC;
     border-radius: 80px / 40px;
}

<%@ include file="button.jsp" %>

</style>
</head>
<body style="background-color: black;">

<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>

      <div class="img">
        <div class="content">
        <h1 style="margin-top:10px;">　</h1>
        	<h1 style=" color:#baab8f;font-family: 'Koulen', cursive;  font-size:56px; text-align:center; margin-bottom:50px; display:inline;"><i class="fa-solid fa-box-open"></i><h1 style="color:#baab8f display:inline; font-family: 'Koulen', cursive; font-size:56px; text-align:center; margin-bottom:50px;">Shipping Information</h1></h1>
		<form action="./processShippingInfo.jsp" class="form-horizontal" style="text-align:center; margin-top:50px;"method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
			<div class="form-group row">
				<label class="col-sm-3" style="color:#baab8f; font-family: 'Bebas Neue', cursive; font-size:30px;" >Name</label>
				<div class="col-sm-7">
					<input name="name" type="text" placeholder="Name" class="form-control" style="font-family: 'Bebas Neue', cursive;"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3" style="color:#baab8f; font-family: 'Bebas Neue', cursive; font-size:30px;">Date</label>
				<div class="col-sm-7">
					<input name="shippingDate" type="text" placeholder="Date(yyyy/mm/dd)" class="form-control" style="font-family: 'Bebas Neue', cursive;" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3"  style="color:#baab8f;  font-family: 'Bebas Neue', cursive; font-size:30px;">Country</label>
				<div class="col-sm-7">
					<input name="country"  placeholder="Country" type="text" class="form-control" style="font-family: 'Bebas Neue', cursive;"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3" style="color:#baab8f; font-family: 'Bebas Neue', cursive; font-size:30px;">Postal Code</label>
				<div class="col-sm-7">
					<input name="zipCode" placeholder="Postal Code" type="text" class="form-control" style="font-family: 'Bebas Neue', cursive;"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3" style="color:#baab8f; font-family: 'Bebas Neue', cursive; font-size:30px;">Address</label>
				<div class="col-sm-7">
					<input name="addressName"  placeholder="Address"  type="text" class="form-control" style="font-family: 'Bebas Neue', cursive;"/>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-12 " style="text-aglin:center; margon-top:20px;">
				     <button class="w-btn w-btn-indigo" onclick="location.href='./cart.jsp?cartId=<%=request.getParameter("cartId")%>'" type="button">Back</button>
				     <button class="w-btn w-btn-gra1" type="submit">Registration</button>
				     <button class="w-btn w-btn-indigo" onclick="location.href='./checkOutCancelled.jsp'" type="button">Cancel</button>
				</div>
			</div>
		</form>
       </div>
       <div class="img-cover"></div>
    </div>
</body>
</html>
