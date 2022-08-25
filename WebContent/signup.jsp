<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<title>회원가입</title>

<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
        
.img{
    position: relative;
    background-image: url("https://res.cloudinary.com/hjqklbxsu/image/upload/f_auto,fl_lossy,q_auto/v1538428598/side/d/Distillery%20Tours1600x635.png");                                                               
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
     width: 600px;
     text-align: center;
     background-color:white;
     border-radius: 40px 80px;
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
<body style="background-color: black;">

<nav class="navbar navbar-expand-md navbar-dark bg-darker fixed-top">
  <!-- navbar-brand의 content 변경 -->
  
  <a class="navbar-brand" href="#"><img src="https://www.jackdaniels.com/themes/JDTheme2/css/img/navLogo.png" style="width:50%; height:50%;" /></a>
  <!--<kbd class="font-weight-bold">DG MALL</kbd>-->
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    <p></p>
  </button>
      

</nav>

      <div class="img">
        <div class="content">
        	<h1 style="color:#FF0033;font-family: 'Koulen', cursive; font-size:56px; text-align:center; margin-bottom:50px; display:inline;">Sign <h1 style="color:white; display:inline; font-family: 'Koulen', cursive; font-size:56px; text-align:center; margin-bottom:50px;">UP</h1></h1>
		<form action="signupprocess.jsp" class="form-horizontal" style="text-align:center; margin-top:50px;"method="post">
			<div class="form-group row">
				<label class="col-sm-3" style="color:#FF0033; font-family: 'Bebas Neue', cursive; font-size:30px;" >Name</label>
				<div class="col-sm-5">
					<input name="name" type="text" placeholder="Name" class="form-control" style="font-family: 'Bebas Neue', cursive;"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3" style="color:red; font-family: 'Bebas Neue', cursive; font-size:30px;">ID</label>
				<div class="col-sm-5">
					<input name="shippingDate" type="text" placeholder="ID" class="form-control" style="font-family: 'Bebas Neue', cursive;" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3"  style="color:#FF0033;  font-family: 'Bebas Neue', cursive; font-size:30px;">PASSWORD</label>
				<div class="col-sm-5">
					<input name="country"  placeholder="Country" type="text" class="form-control" style="font-family: 'Bebas Neue', cursive;"/>
				                 <button class="w-btn-neon2" type="button" style="margin-top:40px;">
                   Sign UP
                 </button>
				</div>
			</div>
		</form>
       </div>
       <div class="img-cover"></div>
    </div>
</body>
</html>