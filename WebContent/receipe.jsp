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
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dosis:wght@200;300&family=Koulen&family=League+Gothic&family=Smooch&display=swap" rel="stylesheet">



<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
        
    .p1{
    position: relative;
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1470166243/side/d/PC_Panel_01_Desktop2.jpg");                                                               
    height: 800px;
    width:100%;
    background-size: cover;
}

    .p2{
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1469204799/side/d/process_taste_desktop_0_opt.jpg");                                                               
    height: 1200px;
    width:100%;
    background-size: cover;
}

    .img{
    position: relative;
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1466095359/header/d/recipes_marquee_desktop2.jpg");                                                               
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

.ghost-button {
 display: inline-block;
 width:100px;
 height:50px;
 padding: 8px;
 color: #baab8f;
 border: 2px solid rgba(0, 0, 0, 0.0);
 outline: none;
 text-decoration: none;
 text-align:center;
}

.ghost-button:hover{
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


.re1{
    position: relative;
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1568910980/recipe/recipe/JDTA_Fizz_Cropped.png");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re1-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.6);                                                                 
   z-index:1;
}

.re1-cover:hover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 0%);
   border: solid 2px #baab8f;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.8);                                                                 
   z-index:1;
}

.re2{
    position: relative;
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1584639796/recipe/recipe/Red_Hot_Honey_500x500_png.png");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re2-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.6);                                                                 
   z-index:1;
}

.re2-cover:hover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 0%);
   border: solid 2px #baab8f;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.8);                                                                 
   z-index:1;
}

.re3{
    position: relative;
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1541525442/recipe/recipe/JD_Apple_Jack_Crop.png");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re3-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.6);                                                                 
   z-index:1;
}

.re3-cover:hover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 0%);
   border: solid 2px #baab8f;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.8);                                                                 
   z-index:1;
}

.re4{
    position: relative;
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1543627057/recipe/recipe/Firey_Smashes_Apple_500x500.png");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re4-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.6);                                                                 
   z-index:1;
}

.re4-cover:hover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 0%);
   border: solid 2px #baab8f;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.8);                                                                 
   z-index:1;
}

.re5{
    position: relative;
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1541524486/recipe/recipe/FranksWay_Crop.png");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re5-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.6);                                                                 
   z-index:1;
}

.re5-cover:hover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 0%);
   border: solid 2px #baab8f;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.8);                                                                 
   z-index:1;
}

.re6{
    position: relative;
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1541524486/recipe/recipe/FranksWay_Crop.png");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re6-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.6);                                                                 
   z-index:1;
}

.re6-cover:hover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 0%);
   border: solid 2px #baab8f;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.8);                                                                 
   z-index:1;
}


</style>

</head>


<body style="background-color: black;">

<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>

      <div class="img">
        <div class="content">
        <h1 class="display-1" style="color:white;font-family: 'Koulen', cursive;"> LET'S TALK DRINKS</h1>
       </div>
       <div class="img-cover"></div>
    </div>

<div class="container">
 
      <div class="com-md-12" style="margin-top:150px; margin-bottom:150px;">
      <div class="row">    
        
        <div class="col-md-4 mb-3">
        <div class="re1">
        <div class="re1-cover">
        <h1 style="font-family: 'League Gothic', sans-serif; font-size:35px; color:white;"
        ><br><i class="fa-solid fa-apple-whole"></i><br>JACK APPLE FIZZ
        </h1>
        <a class="ghost-button" href="https://www.jackdaniels.com/recipes/jack-apple-fizz">GO Recipe</a>
        </div>
        </div>
        </div>
        
        <div class="col-md-4 mb-3">
        <div class="re2">
        <div class="re2-cover">
        <h1 style="font-family: 'League Gothic', sans-serif; font-size:35px; color:white;"
        ><br><i class="fa-solid fa-fire"></i><br>CINAMON WHISKEY SPARK<br>
        </h1>
        <a class="ghost-button" href="https://www.jackdaniels.com/recipes/cinnamon-whiskey-spark">GO Recipe</a>
        </div>
        </div>
        </div>
        
        <div class="col-md-4 mb-3">
        <div class="re3">
        <div class="re3-cover">
        <h1 style="font-family: 'League Gothic', sans-serif; font-size:35px; color:white;"
        ><br><i class="fa-brands fa-supple"></i><br>APPLE JACK
        </h1>
        <a class="ghost-button" href="https://www.jackdaniels.com/recipes/apple-jack">GO Recipe</a>
        </div>
        </div>
        </div>
        
         <div class="col-md-4 mb-3">
        <div class="re4">
        <div class="re4-cover">
        <h1 style="font-family: 'League Gothic', sans-serif; font-size:35px; color:white;"
        ><br><i class="fa-brands fa-apper"></i><br>CINNAMON SMASHED APPLE
        </h1>
        <a class="ghost-button" href="https://www.jackdaniels.com/recipes/cinnamon-smashed-apple">GO Recipe</a>
        </div>
        </div>
        </div>
        
         <div class="col-md-4 mb-3">
        <div class="re5">
        <div class="re5-cover">
        <h1 style="font-family: 'League Gothic', sans-serif; font-size:35px; color:white;"
        ><br><i class="fa-brands fa-redhat"></i><br>FANK'S WAY
        </h1>
        <a class="ghost-button" href="https://www.jackdaniels.com/recipes/franks-way">GO Recipe</a>
        </div>
        </div>
        </div>
        
        <div class="col-md-4 mb-3">
        <div class="re6">
        <div class="re6-cover">
        <h1 style="font-family: 'League Gothic', sans-serif; font-size:35px; color:white;"
        ><br><i class="fa-regular fa-lemon"></i><br>GODFATHER NO.7
        </h1>
        <a class="ghost-button" href="https://www.jackdaniels.com/recipes/godfather-no-7">GO Recipe</a>
        </div>
        </div>
        </div>
        
        
        
   </div>
   </div>
</div>

      	<hr style="background-color:#baab8f;">  

      <div class="p1">
      <div class="col-md-12">
      <div class="col-md-6">
      <h1 style="margin-top:100px; color:white;font-family: 'Bebas Neue', cursive; font-size:68px;">CHOOSING YOUR BARREL</h1>
      <h3 style="color:white;margin-bottom:300px;font-family: 'Dosis', sans-serif;">Come pay us a visit at the Jack Daniel Distillery for a one-of-a-kind whiskey experience.  Our Distilling Team will personally guide you through a tasting to find the barrel that’s right for you. If you can’t visit, we’ll send you whiskey samples from three different barrels, each with their own distinct flavor profile. Or, we can simply have our Distilling Team make a barrel selection based on your preferences. </h3>
      </div>
      </div>
      </div>
      
      <div class="p2">
      <div class="col-md-7">
      </div>
      <div class="col-md-5" style="text-align:right;">
      <h1 style="margin-top:100px; color:white;font-family: 'Bebas Neue', cursive; font-size:68px;">HURRYING NEVER HELPED GOOD WHISKEY</h1>
      <h3 style="color:white;margin-bottom:300px;font-family: 'Dosis', sans-serif;">Our whiskey goes into the barrel colorless and raw. Years later, it will pour out a beautiful amber, its rawness turned smooth and complex. Exactly how many years later? That’s a question decided by Mother Nature and Father Time.Come pay us a visit at the Jack Daniel Distillery for a one-of-a-kind whiskey experience.  Our Distilling Team will personally guide you through a tasting to find the barrel that’s right for you. If you can’t visit, we’ll send you whiskey samples from three different barrels, each with their own distinct flavor profile. Or, we can simply have our Distilling Team make a barrel selection based on your preferences. </h3>
      </div>
      </div>

<!-- 홈페이지 풋터-->
<%@ include file="footer.jsp" %>

</body>
</html>