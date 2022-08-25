<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="mvc.model.BoardDTO"%>
<%
   String sessionId = (String) session.getAttribute("sessionId");
   List boardList = (List) request.getAttribute("boardlist");
   int total_record = ((Integer) request.getAttribute("total_record")).intValue();
   int pageNum = ((Integer) request.getAttribute("pageNum")).intValue();
   int total_page = ((Integer) request.getAttribute("total_page")).intValue();
%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
<script type="text/javascript">
	function checkForm() {	
		if (${sessionId==null}) {
			alert("로그인 해주세요.");
			return false;
		}
		location.href = "./BoardWriteForm.do?id=<%=sessionId%>"
	}
</script>
</head>
<body style="background-color:black;">
   <jsp:include page="../Menubar.jsp" />
       <div class="img">
        <div class="content">
        <h1 class="display-1" style="color:white;font-family: 'Koulen', cursive;"></h1>
    <div class="container" style="background-color:rgba( 255, 255, 255, 0.8 ); border-radius: 80px / 40px;">
      <form action="<c:url value="./BoardListAction.do"/>" method="post">
         <div>
            <div class="text-right">
               <span class="badge badge-success" stlye="font-family: 'Bebas Neue', cursive;">ALL_<%=total_record%>   </span>
            </div>
         </div>
         <div style="padding-top: 50px">
            <table class="table table-hover">
               <tr>
                  <th style="font-family: 'Bebas Neue', cursive;">NUM</th>
                  <th style="font-family: 'Bebas Neue', cursive;">TITLE</th>
                  <th style="font-family: 'Bebas Neue', cursive;">DATE</th>
                  <th style="font-family: 'Bebas Neue', cursive;">VIEW</th>
                  <th style="font-family: 'Bebas Neue', cursive;">ID</th>
               </tr>
               <%
                  for (int j = 0; j < boardList.size(); j++) {
                     BoardDTO notice = (BoardDTO) boardList.get(j);
               %>
               <tr>
                  <td><%=notice.getNum()%></td>
                  <td><a href="./BoardViewAction.do?num=<%=notice.getNum()%>&pageNum=<%=pageNum%>"><%=notice.getSubject()%></a> <%if(notice.getHit()>=5){%> <img src="https://icons.veryicon.com/png/o/miscellaneous/tool-icon-library/hot-15.png" alt="" title="" style="width:27px; height:40px;"> <%} %></td>
                  <td><%=notice.getRegist_day()%></td>
                  <td><%=notice.getHit()%></td>
                  <td><%=notice.getName()%> <%if(notice.getName().equals("이동국")){%> <img src="https://cdn-icons-png.flaticon.com/512/1866/1866955.png" alt="" title="" style="width:40px; height:40px;"> <%} %></td>
               </tr>
               <%
                  }
               %>
            </table>
         </div>
         <div align="center">
            <c:set var="pageNum" value="<%=pageNum%>" />
            <c:forEach var="i" begin="1" end="<%=total_page%>">
               <a href="<c:url value="./BoardListAction.do?pageNum=${i}" /> ">
                  <c:choose>
                     <c:when test="${pageNum==i}">
                        <font color='4C5317'><b> [${i}]</b></font>
                     </c:when>
                     <c:otherwise>
                        <font color='4C5317'> [${i}]</font>
                     </c:otherwise>
                  </c:choose>
               </a>
            </c:forEach>
         </div>
         <div align="left">
            <table>
               <tr>
                  <td width="100%" align="left">&nbsp;&nbsp; 
                  <select name="items" class="txt">
                        <option value="subject" style="font-family: 'Bebas Neue', cursive;">TITLE</option>
                        <option value="content" style="font-family: 'Bebas Neue', cursive;">TEXT</option>
                        <option value="name" style="font-family: 'Bebas Neue', cursive;">ID</option>
                  </select> 
                  <input name="text" type="text" /> 
                  <button class="w-btn w-btn-gra1 w-btn-gra-anim" value="SEARCH " type="submit">SEARCH</button>
                  </td>
                  <td width="100%" align="right">
                     <button class="w-btn w-btn-gra1 w-btn-gra-anim" onclick="checkForm(); return false;" type="button">&laquo;WRITHING</button>
                  
                  </td>
               </tr>
            </table>
         </div>
      </form>
      <hr>
   </div>
       </div>
       <div class="img-cover"></div>
    </div>

   <jsp:include page="../footer.jsp" />
</body>
</html>