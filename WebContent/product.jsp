<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Alchol"%>
<%@ page import="dao.AlcholRepository"%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>

<head>

<title>Welcome to DG Mall</title>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>




<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
        
.img-fluid {
  max-width: 100%;
  height: 650px;
}



</style>

</head>


<body style="background-color: black;">

<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>
<!-- 홈페이지 슬라이드 사진 -->
<%@ include file="slide.jsp" %>
<!-- 상품 목록 -->

	<%
		AlcholRepository dao = AlcholRepository.getInstance();
		ArrayList<Alchol> listOfAlchols = dao.getAllAlchols();
	%>
	
	
<div class="container">
      	<hr style="background-color:#baab8f;">  
          <!-- 추천 굴귀 -->
          <h1 style="color:#baab8f;font-family: 'Koulen', cursive; font-size:56px; text-align:center;">PRODUCTS</h1>
          
  
  
  
      <div class="row">
      
<!-- 브랜디 시작 -->
        <div class="col-md-12 mb-4">
          <img class="featurette-image img-responsive center-block" src="http://www.kajawine.kr/img/main/main_title_ca30.png" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:145px; height:35px;">
        </div>
         <div class="col-md-3">
          <img class="featurette-image img-responsive center-block" src="http://www.kajawine.kr/img/main/main_item_ca30.jpg" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:200px; height:600px;">
        </div>
        <div class="col-md-9">
        <div class="row">
        
                      	<%
				for (int i = 0; i < listOfAlchols.size(); i++) {
					Alchol alchol = listOfAlchols.get(i);
					
					int a = alchol.getCompare();//술 비교
					
					if(a >= 101 && a <= 200){
						
					
			%>
        <div class="col-3">
          <div class="card mb-2" style="background-color: black; border-style:solid 1px; border-color:#848484;">
            <img src="<%=alchol.getFile()%>" alt="" onclick="location.href='./productview.jsp?id=<%=alchol.getId()%>'"/>
            <div class="card-body">
              <h5 class="card-title" style="color:white; text-align:center; font-family: 'Bebas Neue', cursive;"><%=alchol.getName()%></h5>
              <!-- 할인 -->
              <%
              if(alchol.getSale() > 0){
            	  %>
            	  
                    <p style="text-align:center; white-space: nowrap;"><img src="http://www.kajawine.kr/shop/img/icon_discount.gif" alt="할인상품" title="" style="width:27px; height:14px;"></p>
               <%
               }
              %>      
              <!-- 품절 -->
              <%
              
              
              
             
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
                            if(alchol.getStock() == 0){
            	  %>
                    <p style="text-align:center; white-space: nowrap;"><img src="http://www.kajawine.kr/shop/img/icon_soldout.gif" alt="품절상품" title="" style="width:27px; height:14px;"></p>
               <%
               }
              %>
              
              <p class="card-text" style="color:white; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;"><%=alchol.getPrice()%>원</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <%
					}
        }
                      	
        %>
        
        <!-- 브랜디 끝 -->
        

        </div>
        </div>
      </div>
    </div>
    
           <!-- 위스키 시작 -->
   <div class="container">
      	<hr style="background-color:#baab8f;">  

      <div class="row">
         <div class="col-md-12 mb-4">
          <img class="featurette-image img-responsive center-block" src="http://www.kajawine.kr/img/main/main_title_ca20.png" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:82px; height:42px;">
        </div>
         <div class="col-md-3">
          <img class="featurette-image img-responsive center-block" src="http://www.kajawine.kr/img/main/main_item_ca20.jpg" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:200px; height:600px;">
        </div>
        <div class="col-md-9">
        <div class="row">
        
                              	<%
				for (int i = 0; i < listOfAlchols.size(); i++) {
					Alchol alchol = listOfAlchols.get(i);
					
					int a = alchol.getCompare();//술 비교
					
					if(a >= 0 && a <= 100){
						
					
			%>
        <div class="col-3">
          <div class="card mb-2" style="background-color: black; border-style:solid 1px; border-color:#848484;">
            <img src="<%=alchol.getFile()%>" alt="" onclick="location.href='./productview.jsp?id=<%=alchol.getId()%>'"/>
            <div class="card-body">
              <h5 class="card-title" style="color:white; text-align:center; font-family: 'Bebas Neue', cursive;"><%=alchol.getName()%></h5>
              <!-- 할인 -->
              <%
              if(alchol.getSale() > 0){
            	  %>
            	  
                    <p style="text-align:center; white-space: nowrap;"><img src="http://www.kajawine.kr/shop/img/icon_discount.gif" alt="할인상품" title="" style="width:27px; height:14px;"></p>
               <%
               }
              %>      
              <!-- 품절 -->
              <%
                            if(alchol.getStock() == 0){
            	  %>
                    <p style="text-align:center; white-space: nowrap;"><img src="http://www.kajawine.kr/shop/img/icon_soldout.gif" alt="품절상품" title="" style="width:27px; height:14px;"></p>
               <%
               }
              %>
              
              <p class="card-text" style="color:white; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;"><%=alchol.getPrice()%>원</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <%
					}
        }
                      	
        %>
            </div>
        </div>
      </div>
    </div>
        
        <!-- 위스키 끝 -->
        
           <!-- 와인 시작 -->
   <div class="container">
      	<hr style="background-color:#baab8f;">  

      <div class="row">
         <div class="col-md-12 mb-4">
          <img class="featurette-image img-responsive center-block" src="http://www.kajawine.kr/img/main/main_title_ca10.png" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:82px; height:42px;">
        </div>
         <div class="col-md-3">
          <img class="featurette-image img-responsive center-block" src="http://www.kajawine.kr/img/main/main_item_ca10.jpg" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:200px; height:600px;">
        </div>
        <div class="col-md-9">
        <div class="row">
        
                              	<%
				for (int i = 0; i < listOfAlchols.size(); i++) {
					Alchol alchol = listOfAlchols.get(i);
					
					int a = alchol.getCompare();//술 비교
					
					if(a >= 500 && a <= 600){
						
					
			%>
        <div class="col-3">
          <div class="card mb-2" style="background-color: black; border-style:solid 1px; border-color:#848484;">
            <img src="<%=alchol.getFile()%>" alt="" onclick="location.href='./productview.jsp?id=<%=alchol.getId()%>'"/>
            <div class="card-body">
              <h5 class="card-title" style="color:white; text-align:center; font-family: 'Bebas Neue', cursive;"><%=alchol.getName()%></h5>
              <!-- 할인 -->
              <%
              if(alchol.getSale() > 0){
            	  %>
            	  
                    <p style="text-align:center; white-space: nowrap;"><img src="http://www.kajawine.kr/shop/img/icon_discount.gif" alt="할인상품" title="" style="width:27px; height:14px;"></p>
               <%
               }
              %>      
              <!-- 품절 -->
              <%
                            if(alchol.getStock() == 0){
            	  %>
                    <p style="text-align:center; white-space: nowrap;"><img src="http://www.kajawine.kr/shop/img/icon_soldout.gif" alt="품절상품" title="" style="width:27px; height:14px;"></p>
               <%
               }
              %>
              
              <p class="card-text" style="color:white; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;"><%=alchol.getPrice()%>원</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <%
					}
        }
                      	
        %>
            </div>
        </div>
      </div>
    </div>
        
        <!-- 와인 끝 -->
        
           <!-- 보드카 시작 -->
   <div class="container">
      	<hr style="background-color:#baab8f;">  

      <div class="row">
         <div class="col-md-12 mb-4">
          <img class="featurette-image img-responsive center-block" src="http://www.kajawine.kr/img/main/main_title_ca60.png" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:180px; height:50px;">
        </div>
         <div class="col-md-3">
          <img class="featurette-image img-responsive center-block" src="http://www.kajawine.kr/img/main/main_item_ca60.jpg" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:200px; height:600px;">
        </div>
        <div class="col-md-9">
        <div class="row">
        
                              	<%
				for (int i = 0; i < listOfAlchols.size(); i++) {
					Alchol alchol = listOfAlchols.get(i);
					
					int a = alchol.getCompare();//술 비교
					
					if(a >= 200 && a <= 300){
						
					
			%>
        <div class="col-3">
          <div class="card mb-2" style="background-color: black; border-style:solid 1px; border-color:#848484;">
            <img src="<%=alchol.getFile()%>" alt="" onclick="location.href='./productview.jsp?id=<%=alchol.getId()%>'"/>
            <div class="card-body">
              <h5 class="card-title" style="color:white; text-align:center; font-family: 'Bebas Neue', cursive;"><%=alchol.getName()%></h5>
              <!-- 할인 -->
              <%
              if(alchol.getSale() > 0){
            	  %>
            	  
                    <p style="text-align:center; white-space: nowrap;"><img src="http://www.kajawine.kr/shop/img/icon_discount.gif" alt="할인상품" title="" style="width:27px; height:14px;"></p>
               <%
               }
              %>      
              <!-- 품절 -->
              <%
                            if(alchol.getStock() == 0){
            	  %>
                    <p style="text-align:center; white-space: nowrap;"><img src="http://www.kajawine.kr/shop/img/icon_soldout.gif" alt="품절상품" title="" style="width:27px; height:14px;"></p>
               <%
               }
              %>
              
              <p class="card-text" style="color:white; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;"><%=alchol.getPrice()%>원</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <%
					}
        }
                      	
        %>
            </div>
        </div>
      </div>
    <hr style="background-color:#baab8f;">  
    </div>

        
        <!-- 보드카 끝 -->            

<!-- 홈페이지 풋터-->
<%@ include file="footer.jsp" %>



</body>
</html>