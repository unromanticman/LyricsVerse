<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 request.setCharacterEncoding("UTF-8");
%>


<!DOCTYPE html>
<html lang="en">
<head>  <title>Lyrics Verse</title>

  <meta charset="utf-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="./UI/sweetalert2.css">
  <script type="text/javascript" src="./UI/sweetalert2.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    #inner {
    width: 50%;
    margin: 0 auto; 
    }
    p{
       
    }
    #intro{
        font-size: 20px;
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Lyrics Verse</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="./index.jsp">Home</a></li>
        <li class="active"><a href="./about.jsp">About</a></li>
        <li><a href="./staff.jsp">Staff</a></li>
        <%
        if(session.getAttribute("TOKEN")!=null){
        out.print(
        "<li><a href='post.jsp'>Post Lyrics</a></li>");
      }
        
      %>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <%
        if(session.getAttribute("TOKEN")==null){
out.print("<li><a href='login.jsp'><span class='glyphicon glyphicon-log-in'></span> Login</a></li>");
out.print("<li><a href='register.jsp'><span class='glyphicon'></span> Register</a></li>");
        }
        else{
        out.print(
        "<li><a href='javascript:logout();' ><span class='glyphicon glyphicon-log-in'></span>Logout</a></li>");
      }
        
      %>
      </ul>
    </div>
  </div>
</nav>


<div class="jumbotron">
  <div class="container lv-text-center">
    <h1>Lyrics Verse (Intro)</h1>      
  </div>
</div>
<div id="inner">
<p id="intro">HEY!我是林郁翔，這是我的JSP作業，主要用來分享歌詞。<br>
<br>
因為有時候看Youtube下並不會有歌詞出現，必須另外找來看，因此做出這個網站。</p>
<h3>功能：</h3>
<p>1.發布歌詞</p>
<p>2.透過API自動取得預覽圖片（為追求品質僅提供480p）</p>
<h3>安全：</h3>
<p>1.密碼採用SHA-1 加密</p>
<p>2.驗證採用TOKEN 不會使使用者暴露重要資料</p>
<p>3.資料“新增”使用BIND VALUE方式，防止INJECTION</p>
<p>4.不使用COOIKE，而是使用SESSION防止使用者竄改</p>
<h3>特點：</h3>
<p>使用API方式呼叫資料，程式碼不會混亂，好維護。</p>
<br>
<br>
<br>
</div>
<footer class="container-fluid text-center">
   <p>Copyright © 2016 UM Inc. All rights reserved
</p>
</footer>
<script type="text/javascript">
   
</script>
</body>
</html>
