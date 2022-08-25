<%@ page contentType="text/html; charset=utf-8"%>

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
		<h2 style=" font-size: 70px;color:#baab8f;font-family: 'Koulen', cursive;">Member Information</h2>
		<p style="font-size: 40px;color:white;font-family: 'Koulen', cursive;">
		
				<%
				String msg = request.getParameter("msg");
				
			if (msg != null) {
				if (msg.equals("0")){
					String loginId = (String) session.getAttribute("sessionId");
					out.println(loginId  +"<br>" +"Membership information has been modified.");
				}
					
				else if (msg.equals("1")){
					out.println("We sincerely welcome your Register.");
				}
				
				else if (msg.equals("2")) {
					String loginId = (String) session.getAttribute("sessionId");
					out.println(loginId +"<br>" + "We sincerely welcome your visit.");					
				}				
			} else {
				out.println("Member information has been deleted.");
			}
		%>
			</p>
			
			
	    <%if(msg.equals("0")){
		%>
	   <p><button class="w-btn-neon2" onclick="location.href='./Home.jsp'" type="button">Home</button></p>	
		<%} %>
			
		
	    <%if(msg.equals("1")){
		%>
	   <p><button class="w-btn-neon2" onclick="location.href='./Login.jsp'" type="button">Login</button></p>	
		<%} %>
			
		<%if(msg.equals("2")){
		%>
	   <p><button class="w-btn-neon2" onclick="location.href='./Home.jsp'" type="button">Home</button></p>	
		<%} %>
	
	</div>
       </div>
       <div class="img-cover"></div>
    </div>
</body>
</html>

