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
<script type="text/javascript">
function addToCart() {
	
	if(confirm("Would you like to add the product to your shopping cart?")) {
		document.addForm.submit();
	} else{
		document.addForm.reset();
	}
	
}
</script>


<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
p a {
    font-size: inherit;
    font-weight: inherit;
    color: #baab8f;
    letter-spacing: inherit;
}
p a:link{
    font-size: inherit;
    font-weight: inherit;
    color: #baab8f;
    letter-spacing: inherit;
}
p a:visited {
    font-size: inherit;
    font-weight: inherit;
    color: #baab8f;
    letter-spacing: inherit;
}
p a:ahover {
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
p a:active{
    font-size: inherit;
    font-weight: inherit;
    color: black;
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
}     

</style>

</head>


<body style="background-color: black;">

<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>
<!-- 홈페이지 슬라이드 사진 -->
<%@ include file="slide.jsp" %>

<!-- 제품 페이지 -->
<%

  String aid = request.getParameter("id");
  AlcholRepository dao = AlcholRepository.getInstance();
  Alchol alchol = dao.getId(aid);

%>
<div class="container">
          <hr style="background-color:#baab8f;">  
          <!-- 추천 굴귀 -->
          <h1 style="color:#baab8f;font-family: 'Koulen', cursive; font-size:56px; text-align:center; margin-top:10px;">VIEW PRODUCT</h1>
      <div class="row">
         <div class="col-md-6 mt-4" style=" border-style:solid 3px; border-color:#848484;" >
           <img class="featurette-image img-responsive center-block" src="<%=alchol.getFile()%>" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:400px; height:600px;">
        </div>
        <div class="col-md-6 mt-4">
          <h1 style="color:white;font-family: 'Bebas Neue', cursive; font-size:46px;"><%=alchol.getName()%></h1>
          <hr style="background-color:#baab8f; white-space: nowrap;"> 
          <!-- 할인 -->
              <%
              if(alchol.getSale() > 0){
            	  %>
            	  
                    <p style="text-align:right; white-space: nowrap;"><img src="http://www.kajawine.kr/shop/img/icon_discount.gif" alt="할인상품" title="" style="width:27px; height:14px;"></p>
               <%
               }
              %>      
              <!-- 품절 -->
              <%
                            if(alchol.getStock() == 0){
            	  %>
                    <p style="text-align:right; white-space: nowrap;"><img src="http://www.kajawine.kr/shop/img/icon_soldout.gif" alt="품절상품" title="" style="width:27px; height:14px;"></p>
               <%
               }
              %>
          <h4><span class="text-muted">OUR PRODUCTS</span></h4>
                    <p style="color:white;font-family: 'Dosis', sans-serif;"><%=alchol.getDescription()%></p>  
         <br>
         <h5 style="color:white; font-family: 'Bebas Neue', cursive; font-size:28px;"><i class="fa-solid fa-plane-departure" style="margin-right:5px; "></i>&nbsp;Country Of Origin: <%=alchol.getOrigin()%></h5>
         <h5 style="color:white;font-family: 'Bebas Neue', cursive; font-size:28px;"><i class="fa-solid fa-droplet" style="margin-right:5px;"></i>&nbsp;Proof: <%=alchol.getProof()%></h5>
         <h5 style="color:white;font-family: 'Bebas Neue', cursive; font-size:28px;"><i class="fa-solid fa-wine-bottle" style="margin-right:5px;"></i>&nbsp;Capacity:  <%=alchol.getCapacity()%></h5>
          <h5 style="color:white;font-family: 'Bebas Neue', cursive; font-size:28px;"><i class="fa-solid fa-box-archive" style="margin-right:5px;"></i>&nbsp;Stock:  <%=alchol.getStock()%>EA</h5>
         <h5 style="color:white;font-family: 'Bebas Neue', cursive; font-size:28px;"><i class="fa-solid fa-sack-dollar" style="margin-right:5px;"></i>&nbsp;Price:  <%=alchol.getPrice()%>$</h5>
              
         <br>
         
         <form name="addForm" action="./addCart.jsp?id=<%=alchol.getId()%>" method="post">
         <a class="ghost-button" href="#" <% if(alchol.getStock() > 0){%>onclick="addToCart()" <%} %>>BUY&raquo;</a>      
         </form>
        
        </div>
        
        <div class="col-md-12 mt-4">
        <hr style="background-color:#baab8f; white-space: nowrap;"> 
        </div>
      

      </div>
    </div>


<!-- 홈페이지 풋터-->
<%@ include file="footer.jsp" %>



</body>
</html>