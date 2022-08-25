<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="mvc.model.BoardDTO"%>

<%
    String sessionId = (String) session.getAttribute("sessionId");
	BoardDTO notice = (BoardDTO) request.getAttribute("board");
	int num = ((Integer) request.getAttribute("num")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Board</title>

<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
    .img{
    position: relative;
    background-image: url("https://swall.teahub.io/photos/small/168-1682920_jack-daniels-wallpaper-hd.jpg");                                                               
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
     width: 1200px;
     text-align: center;
}

@import url("https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap");

button {
    margin: 20px;
}

.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-outline {
    position: relative;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-indigo {
    background-color: aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline {
    border: 3px solid aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline:hover {
    color: #1e6b7b;
    background: aliceblue;
}

.w-btn-green {
    background-color: #77af9c;
    color: #d7fff1;
}

.w-btn-green2 {
    background-color: #519d9e;
    color: #9dc8c8;
}

.w-btn-green-outline {
    border: 3px solid #77af9c;
    color: darkgray;
}

.w-btn-green2-outline {
    border: 3px solid #519d9e;
    color: darkgray;
}

.w-btn-green-outline:hover {
    background-color: #77af9c;
    color: #d7fff1;
}

.w-btn-green2-outline:hover {
    background-color: #519d9e;
    color: #9dc8c8;
}

.w-btn-brown {
    background-color: #ce6d39;
    color: #ffeee4;
}

.w-btn-brown-outline {
    border: 3px solid #ce6d39;
    color: #b8b8b8;
}

.w-btn-brown-outline:hover {
    background-color: #ce6d39;
    color: #ffeee4;
}

.w-btn-blue {
    background-color: #6aafe6;
    color: #d4dfe6;
}

.w-btn-pink {
    background-color: #f199bc;
    color: #d4dfe6;
}

.w-btn-gray {
    background-color: #a3a1a1;
    color: #e3dede;
}

.w-btn-red {
    background-color: #ff5f2e;
    color: #e1eef6;
}

.w-btn-skin {
    background-color: #f8e6e0;
    color: #6e6e6e;
}

.w-btn-yellow {
    background-color: #fce205;
    color: #6e6e6e;
}

.w-btn-blue-outline {
    border: 3px solid #6aafe6;
    color: #6e6e6e;
}

.w-btn-pink-outline {
    border: 3px solid #f199bc;
    color: #6e6e6e;
}

.w-btn-gray-outline {
    border: 3px solid #a3a1a1;
    color: #6e6e6e;
}

.w-btn-red-outline {
    border: 3px solid #ff5f2e;
    color: #6e6e6e;
}

.w-btn-skin-outline {
    border: 3px solid #f8e6e0;
    color: #6e6e6e;
}

.w-btn-yellow-outline {
    border: 3px solid #fce205;
    color: #6e6e6e;
}

.w-btn-blue-outline:hover {
    background-color: #6aafe6;
    color: #d4dfe6;
}

.w-btn-pink-outline:hover {
    background-color: #f199bc;
    color: #d4dfe6;
}

.w-btn-gray-outline:hover {
    background-color: #a3a1a1;
    color: #e3dede;
}

.w-btn-red-outline:hover {
    background-color: #ff5f2e;
    color: #e1eef6;
}

.w-btn-skin-outline:hover {
    background-color: #f8e6e0;
    color: #6e6e6e;
}

.w-btn-yellow-outline:hover {
    background-color: #fce205;
    color: #6e6e6e;
}

.w-btn:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}

.w-btn-outline:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}

.w-btn:active {
    transform: scale(1.5);
}

.w-btn-outline:active {
    transform: scale(1.5);
}

.w-btn-gra1 {
    background: linear-gradient(-45deg, #33ccff 0%, #ff99cc 100%);
    color: white;
}

.w-btn-gra2 {
    background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    color: white;
}

.w-btn-gra3 {
    background: linear-gradient(
        45deg,
        #ff0000,
        #ff7300,
        #fffb00,
        #48ff00,
        #00ffd5,
        #002bff,
        #7a00ff,
        #ff00c8,
        #ff0000
    );
    color: white;
}

.w-btn-gra-anim {
    background-size: 400% 400%;
    animation: gradient1 5s ease infinite;
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

@keyframes gradient2 {
    0% {
        background-position: 100% 50%;
    }
    50% {
        background-position: 0% 50%;
    }
    100% {
        background-position: 100% 50%;
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

</style>

</head>
<body style="background-color:black;">
   <jsp:include page="../Menubar.jsp" />
       <div class="img">
        <div class="content">
    
	 <div class="container" style="background-color:rgba( 255, 255, 255, 0.8 ); border-radius: 80px / 40px;">
	    <h1 class="display-1" style="color:black;font-family: 'Koulen', cursive;">Bulletin</h1>
		<h1 style=" text-align:right;"><%if(notice.getHit()>=5){%> <img src="https://icons.veryicon.com/png/o/miscellaneous/tool-icon-library/hot-15.png" alt="" title="" style="width:40px; height:40px; text-align:right;"> <%} %><%if(notice.getName().equals("이동국")){%> <img src="https://cdn-icons-png.flaticon.com/512/1866/1866955.png" alt="" title="" style="width:40px; height:40px;"> <%} %></h1>
		<hr style="margin-bottom:90px;">
		<form name="newUpdate"
			action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
			class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2 control-label" style="font-family: 'Bebas Neue', cursive;">Name</label>
				<div class="col-sm-3">
					<input name="name" class="form-control"	value=" <%=notice.getName()%>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" style="font-family: 'Bebas Neue', cursive;" >Title</label>
				<div class="col-sm-5">
					<input name="subject" class="form-control"	value=" <%=notice.getSubject()%>" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label"style="font-family: 'Bebas Neue', cursive;" >Text</label>
				<div class="col-sm-8" style="word-break: break-all;">
					<textarea name="content" class="form-control" cols="50" rows="5"> <%=notice.getContent()%></textarea>
				</div>
			</div>
         <div class="form-group row">
            <div class="col-sm-12" style="text-align:center;">
               <c:set var="userId" value="<%=notice.getId()%>" />
               <c:if test='${sessionId eq "ldg4088" }'>
                  <p>
                     <button class="w-btn w-btn-gra1 w-btn-gra-anim" onclick="location.href='./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>'" type="button">Delete</button>
                     <button class="w-btn w-btn-gra1 w-btn-gra-anim" onclick="location.href='./BoardListAction.do?pageNum=<%=nowpage%>'" type="submit">Edit</button>
               </c:if>
               <button class="w-btn w-btn-gra1 w-btn-gra-anim" onclick="location.href='./BoardListAction.do?pageNum=<%=nowpage%>'" type="button">List</button>
            </div>
         </div>
		</form>
		<hr>
	</div>
	
	</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>


