<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page errorPage="ErrorPage.jsp"%>

<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/DGMALL"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM MEMBER WHERE ID=?
   <sql:param value="<%=sessionId%>" />
</sql:query>


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
	
	<title>회원 수정</title>
</head>
<body onload="init()">


	<jsp:include page="/Menubar.jsp" />

      <div class="img">
        <div class="content">
        <h3 class="display-4" style="color:#baab8f;font-family: 'Koulen', cursive;">Update Membership</h3>
        <p class="display-7" style="color:red;font-family: 'Bebas Neue', cursive; margin-bottom:50px;">Please Update to DG mall.</p>

	<c:forEach var="row" items="${resultSet.rows}">
	<c:set var="mail" value="${row.mail}" />
	<c:set var="mail1" value="${mail.split('@')[0]}" />
	<c:set var="mail2" value="${mail.split('@')[1]}" />

	<c:set var="birth" value="${row.birth }" />
	<c:set var="year" value="${birth.split('/')[0]}" />
	<c:set var="month" value="${birth.split('/')[1]}" />
	<c:set var="day" value="${birth.split('/')[2]}" />

		<form name="newMember" class="form-horizontal"
			action="processUpdateMember.jsp" method="post"
			onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 " style="font-family: 'Bebas Neue', cursive; color:#baab8f; font-size:30px;">ID</label>
				<div class="col-sm-8">
					<input name="id" type="text" class="form-control" style="opacity:0.8;" placeholder="id"
						value="<c:out value='${row.id }'/>" />
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">PassWord</label>
				<div class="col-sm-8">
					<input name="password" type="text" class="form-control" style="opacity:0.8;"
						placeholder="password" value="<c:out value='${row.password }'/>" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">Check Password</label>
				<div class="col-sm-8">
					<input name="password_confirm" type="text" class="form-control"
						placeholder="password_confirm" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">Name</label>
				<div class="col-sm-8">
					<input name="name" type="text" class="form-control"
						placeholder="name" value="<c:out value='${row.name }'/>" style="opacity:0.8;" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">SEX</label>
				<div class="col-sm-4">
					<c:set var="gender" value="${row.gender }" />
					<input name="gender" type="radio" value="남"	<c:if test="${gender.equals('남')}"> <c:out value="checked" /> </c:if> >Men 
						<input name="gender" type="radio" value="여"	<c:if test="${gender.equals('여')}"> <c:out value="checked" /> </c:if> >Women
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">Birth</label>
				<div class="col-sm-7  ">
					<input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" 	size="6" value="${year}" style="opacity:0.8;"> 
						<select name="birthmm"	id="birthmm">
						<option value=""style="font-family: 'Bebas Neue', cursive;color:#baab8f; font-size:30px;">Month</option>
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
					</select> <input type="text" name="birthdd" maxlength="2" placeholder="일" size="4" value="${day}" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row ">
				<label class="col-sm-2"style="font-family: 'Bebas Neue', cursive; color:#baab8f; font-size:30px;">E-Mail</label>
				<div class="col-sm-9">
					<input type="text" name="mail1" maxlength="50" value="${mail1}" style="opacity:0.8;">@
					<select name="mail2" id="mail2">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
					</select>
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2"style="font-family: 'Bebas Neue', cursive; color:#baab8f; font-size:30px;">Phone</label>
				<div class="col-sm-8">
					<input name="phone" type="text" class="form-control" placeholder="phone" value="<c:out value='${row.phone}'/>" style="opacity:0.8;">

				</div>
			</div>

			<div class="form-group  row">
				<label class="col-sm-2 "style="font-family: 'Bebas Neue', cursive; color:#baab8f; font-size:30px;">Address</label>
				<div class="col-sm-8">
					<input name="address" type="text" class="form-control" placeholder="address" value="<c:out value='${row.address}'/>" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-12">
				<button class="w-btn w-btn-blue" style="text-align:center;" type="submit">Member Update</button>
				<button class="w-btn w-btn-red" style="text-align:center;" type="button" onclick="location.href='deleteMember.jsp'">Member Delete</button>
				</div>
			</div>
		</form>	
	
	</c:forEach>
	
	        </div>
       <div class="img-cover"></div>
    </div>
</body>
</html>
<script type="text/javascript">
	function init() {
		setComboMailValue("${mail2}");
		setComboBirthValue("${month}");
	}

	function setComboMailValue(val) {
		var selectMail = document.getElementById('mail2');
		for (i = 0, j = selectMail.length; i < j; i++) {
			if (selectMail.options[i].value == val) {
				selectMail.options[i].selected = true; 
				break;
			}
		}
	}
	function setComboBirthValue(val) {
		var selectBirth = document.getElementById('birthmm'); 
		for (i = 0, j = selectBirth.length; i < j; i++){
			if (selectBirth.options[i].value == val){
				selectBirth.options[i].selected = true; 
				break;
			}
		}
	}
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