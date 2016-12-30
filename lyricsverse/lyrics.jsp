<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>Lyrics Verse</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./UI/bootstrap.min.css">
  <script src="./UI/jquery.min.js"></script>
  <script src="./UI/bootstrap.min.js"></script>
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
    .lv-div-center{
        margin: 0px auto;
    }
    .lv-text-center{
      text-align: center;
    }
    pre{
        background: white;
        border: none;
        
    }
    .lv-size{
      font-size: 20px;
    }
    .lv-size{
      color: black;
      text-decoration:none;
    }
    .lv-size:hover {  
      color: #272821;
      text-decoration:none;
    }
    p{
        white-space: pre;

    }
    #title{
      font-size: 30px;
    }
    #upload,#date{
       font-size: 20px;
    }
    
    #searchText,#gobtn{
      z-index: 0;
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
        <li class="active"><a href="./index.jsp">Home</a></li>
        <li><a href="./about.jsp">About</a></li>
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
    <h1>Lyrics Verse</h1>      
    <p>We collect some lyrics.</p>
 
  </div>
  <div class="row text-center">
        <div class="lv-div-center" style="width: 50%">
    <div class="input-group">
      <input type="text" id="searchText" class="form-control" placeholder="Search for...">
      <span class="input-group-btn">
        <button id="gobtn" onclick="window.location.replace('./index.jsp?term='+$( '#searchText' ).val());" class="btn btn-default" type="button">Go!</button>
      </span>
    </div><!-- /input-group -->
 </div>
  </div>
            
</div>
  
<div class="text-center">
<div id="title">

</div>
<div id="upload">
</div>
<div id="date">
</div>
<div id="youtube">
</div>
<div id="video"> 

</div>
<div>
  <a class="lv-size" href="javascript:setFonts(30)">大</a>
  <a class="lv-size" href="javascript:setFonts(20)">中</a>
  <a class="lv-size" href="javascript:setFonts(18)">小</a>
</div>
<div id="edit">

</div>
<div>
<p id="lyricsContent">
</p>
</div>

</div>
<br><br>
<div id="disqus_thread" style="padding: 50px;"></div>

<script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
/*
var disqus_config = function () {
this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
*/
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = '//lyrics-verse.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                                
<footer class="container-fluid text-center">
   <p>Copyright © 2016 UM Inc. All rights reserved
</p>
</footer>
</body>
<script type="text/javascript">
      function setFonts(size){
        $('#lyricsContent').css('font-size',size);
      }

      /*
      * 送出表單
      */
      function getLyricsContent()
      {
          /*
          * Ajax
          */
         <%
          String vid = "0";
          if (request.getParameter("vid") == null) {
              out.println("This Verse not Exist");
              return;
          } else {
              vid = request. getParameter("vid");
          }
         %>

        var params = 'id='+'<%=vid%>';

        $.ajax({
                  url: 'API/getLyricsContent.jsp',
                  type:"post",
                  data: params,
                  success: function(data){
                      var data = JSON.parse(data);
                     
                    $('#title').append(data[0].title);
                    $('#lyricsContent').append('<p>'+data[0].verse+'</p>');
                    $('#date').append(data[0].uploadDate);
                    $('#upload').append(data[0].name+'['+data[0].account+']');

                    $('#youtube').append('<a href="'+data[0].link+'" target="_blank">'+data[0].link+'</a>');
                   document.getElementById("video").innerHTML = "<iframe width='560' height='315' src='"+"http://www.youtube.com/embed/"+data[0].screen+"' frameborder='0' allowfullscreen></iframe>";

                  }
          });
      }

      function getIsRight(){
         var params = 'id='+'<%=vid%>';
        $.ajax({
                  url: 'API/getIsRight.jsp',
                  type:"post",
                  data: params,
                  success: function(data){
                    var data = JSON.parse(data);
                    if(data.status == 'success'){
                       $('#edit').append('<a href="./edit.jsp?pid=<%=vid%>" >[E.D.I.T]</a>');
                    }
                  }
          });

      }
      $( document ).ready(function() {
          getLyricsContent();
          getIsRight();
          //sendSearch("INDEX8");
      });
       function logout(){
        var params = "";
        $.ajax({
                  url: 'API/logout.jsp',
                  type:"post",
                  data: params,
                  success: function(data){
                      location.reload();
                  }
          });

      }
      
</script>
<!--自動往上-->
  <style type="text/css">
    #gotop {
        display: none;
        position: fixed;
        right: 20px;
        bottom: 20px;    
        padding-left:15px; 
        padding-right:15px; 
        padding-top: 5px;  
        padding-bottom: 5px;
        font-size: 20px;
        background: #777;
        color: white;
        cursor: pointer;
        -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
    }
  </style>
  <!--自動往上-->
  <div id="gotop"><p>︿</p></div>
  <script type="text/javascript">
  $(function(){
      $("#gotop").click(function(){
          jQuery("html,body").animate({
              scrollTop:0
          },1000);
      });
      $(window).scroll(function() {
          if ($(this).scrollTop() > 250){
              $('#gotop').fadeIn("fast");
          } else {
              $('#gotop').stop().fadeOut("fast");
          }
      });
  });
  /**
  * 按ENTER可以直接送出訊息
  **/
    $("#searchText").keyup(function(event){
        if(event.keyCode == 13){
            window.location.replace('./index.jsp?term='+$( '#searchText' ).val());
        }
    });
  </script>
</html>
<!--load-->
<div id="overlay">
<div id="showload">
<span class="cssload-loader"><span class="cssload-loader-inner"></span></span>
</div>
</div>
<link rel="stylesheet" type="text/css" href="./UI/load.css">
<script type="text/javascript" src="./UI/load.js"></script>