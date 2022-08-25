<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String sessionId = (String) session.getAttribute("sessionId");%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>

<head>

<title>Welcome to DG Mall</title>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<script type="text/javascript">
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>


<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
    .img{
    position: relative;
    background-image: url("https://i.pinimg.com/736x/24/8b/30/248b30abe779c2afce97c89a5d8b45fd--cool-wallpaper-wallpaper-pictures.jpg");                                                               
    height: 100vh;
    background-size: cover;
}
 .img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.5);                                                                 
   z-index:1;
}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     z-index: 3;
     width: 600px;
     text-align: center;
}


<%@ include file="button.jsp" %>
        

</style>

</head>


<body style="background-color: black;">

<!-- 화면 변경 크기와 navbar의 배경색, 글자색 변경 -->
<!-- 화면 위쪽에 고정하기 위해 fixed-top 클래스 추가 -->


<nav class="navbar navbar-expand-md navbar-dark bg-darker fixed-top">
  <!-- navbar-brand의 content 변경 -->
  
  <a class="navbar-brand" href="#"><img src="https://www.jackdaniels.com/themes/JDTheme2/css/img/navLogo.png" style="width:50%; height:50%;" /></a>
  <!--<kbd class="font-weight-bold">DG MALL</kbd>-->
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    <p></p>
  </button>
      

</nav>



<!-- 로그인 안내 -->
      
      <div class="img">
        <div class="content">
        <h3 class="display-4" style="color:#baab8f;font-family: 'Koulen', cursive;">Join Membership</h3>
        <p class="display-7" style="color:red;font-family: 'Bebas Neue', cursive; margin-bottom:50px;">Please Register to DG mall.</p>
       <form name="newMember" class="form-horizontal"  action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 " style="font-family: 'Bebas Neue', cursive; color:#baab8f; font-size:30px;">ID</label>
				<div class="col-sm-8">
					<input name="id" type="text" class="form-control" placeholder="id" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">Password</label>
				<div class="col-sm-8">
					<input name="password" type="text" class="form-control" placeholder="password" style="opacity:0.8;" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">Check Password</label>
				<div class="col-sm-8">
					<input name="password_confirm" type="text" class="form-control" placeholder="password confirm" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">Name</label>
				<div class="col-sm-8">
					<input name="name" type="text" class="form-control" placeholder="name" style="opacity:0.8;" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">SEX</label>
				<div class="col-sm-4">
					<input name="gender" type="radio" value="남"  style="opacity:0.8;"/>Men
					<input name="gender" type="radio" value="여" style="opacity:0.8;"/>Woman
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">Birth</label>
				<div class="col-sm-7  ">
					<input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" size="6" style="opacity:0.8;"> 
					<select name="birthmm" style="opacity:0.8;">
						<option value="" style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">Month</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="birthdd" maxlength="2" placeholder="일" size="4" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row ">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive; color:#baab8f; font-size:30px;">E-Mail</label>
				<div class="col-sm-9">
					<input type="text" name="mail1" maxlength="80" style="opacity:0.8;">@ 
					<select name="mail2" style="opacity:0.8;">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
					</select>
				</div>				
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive; color:#baab8f; font-size:30px;">Phone</label>
				<div class="col-sm-8">
					<input name="phone" type="text" class="form-control" placeholder="phone" style="opacity:0.8;" >

				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2 " style="font-family: 'Bebas Neue', cursive; color:#baab8f; font-size:30px;">Address</label>
				<div class="col-sm-8">
					<input name="address" type="text" class="form-control" placeholder="address" style="opacity:0.8;">

				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-12">
				     <button class="w-btn w-btn-red" style="text-align:center;" type="submit">등록</button>
				</div>
			</div>
		</form>

       
        </div>
       <div class="img-cover"></div>
    </div>

</body>
</html>