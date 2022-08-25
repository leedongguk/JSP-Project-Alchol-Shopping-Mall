
<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>

<title>Welcome to DG Mall</title>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<style> 
   body { 
            padding: 0px;
            margin: 0px;            
        }
      
       a{
            text-decoration-line: none;
        }
        a:link{
            color:#ffffff;
            text-decoration-line: none;
        }
        a:visited{
                color: #ffffff;
                text-decoration-line: none;
        }
        a:hover{
                color: #d5d0d0;
                text-decoration-line: none;
        }
        

 
       .jb-box {
            max-width: 100%;
            height: 100%;
            overflow: hidden;
            margin: 0px auto;
            position: relative;
            background-image:url('image/back3.jpg');
            background-repeat : no-repeat;
            background-size : cover;
         }
         
        .jb-welcome {
            position: absolute;
            top: 3%;
            width: 50%;
            margin-left: 5%;
            z-index: 1000;
        }
       
       .jb-menu {
            position: absolute;
            top: 60%;
            width: 40%;
            margin-left: 10%;
            z-index: 1000;
        }
        
       .jb-logo {
            position: absolute;
            top: 0%;
            width: 10%;  
            z-index: 1000;
        }
        
    
    
    
    
</style>

</head>

<body>

  <div class="jb-box">  
          <div class="jb-welcome">
                    
          <img src="./image/logo2.png" style="margin-top:5%; width:60%; height:60%;text-align:center;" />
          
          </div>
          <div class="jb-menu">       
            <h1 style="color: #ffffff; display: inline; margin-left: 14%;"><a href="Main.jsp">HOME</a></h1>
            <br>
            <h1 style="color:#ffffff; display:inline; margin-left:14%;"><a href="Home.jsp">SHOPPING</a></h1>
             <br>
            <h1 style="color:#ffffff; display:inline; margin-left:14%;"><a href=https://www.instagram.com/Moving_country99/>INSTAGRAM</a></h1>
             <br>
            <h1 style="color:#ffffff; display:inline; margin-left:14%;"><a href=https://blog.naver.com/1256316>BLOG</a></h1>
             <br>
            <h3 style="font-size:16px; margin-top:17%;">It's a shopping mall that sells alcoholic beverages.</h3>
            <h3 style="font-size:16px; margin-top:1%;">Made By DongGukLee</h3>   
        </div>
  
  </div>

</body>
</html>