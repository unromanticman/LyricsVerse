<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 request.setCharacterEncoding("UTF-8");
%>
<% 
  //check user login
  if(session.getAttribute("TOKEN")==null){
   out.print("Please login to Post.");
   out.print("<script>window.location.href='./login.jsp'</script>");
   return;

  }
 %>

<!DOCTYPE html>
<html lang="en">
<head>  <title>Lyrics Verse</title>

  <meta charset="utf-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./UI/bootstrap.min.css">
  <script src="./UI/jquery.min.js"></script>
  <script src="./UI/bootstrap.min.js"></script>
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
        <li><a href="./about.jsp">About</a></li>
        <li><a href="./staff.jsp">Staff</a></li>
        <%
        if(session.getAttribute("TOKEN")!=null){
        out.print(
        "<li class='active'><a href='post.jsp'>Post Lyrics</a></li>");
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


<div style="padding: 100px;">
  <form>
    <div class="form-group">
      <label for="formGroupExampleInput">Lyrics Name</label>
      <input type="text" class="form-control" id="lyricsname" placeholder="Lyrics Name..." required>
    </div>
    <div class="form-group">
      <label for="formGroupExampleInput2">Author Info</label>
      <input type="text" class="form-control" id="info" placeholder="Author Info..." required>
    </div>
    <div class="form-group">
      <label for="formGroupExampleInput2">link</label>
      <input type="text" class="form-control" id="link" placeholder="Youtube link...">
    </div>
    <div class="form-group">
        <label for="comment">Lyrics</label>
        <textarea class="form-control" rows="15" id="lyrics" placeholder="Lyrics..."></textarea>
    </div>
    <div style="text-align: center;">
    <button onclick="sendPost();" type="button" class="btn btn-default">Post</button>
    </div>
  </form>
</div>

<footer class="container-fluid text-center">
   <p>Copyright © 2016 UM Inc. All rights reserved
</p>
</footer>
<script type="text/javascript">
    /*
      * 送出表單
      */
      function sendPost()
      {
          /*
          * Ajax
          */
          var lyricsname = $('#lyricsname').val();
          var info = $('#info').val();
          var lyrics = $('#lyrics').val();
          var link = $('#link').val();
          var params = 'lyricsname='+lyricsname+
                        '&info='+info+
                        '&lyrics='+lyrics+
                        '&link='+link;

          if(lyricsname === ""){
            swal(
                              'Error',
                              'Please input Lyrics Name',
                              'error'
            )
            return;
          }
        $.ajax({
                  url: 'API/lyricsPost.jsp',
                  type:"post",
                  data: params,
                  success: function(data){
                      var data = JSON.parse(data);
                      if(data.status == 'success'){

                           swal(
                              'Success',
                              'Start Your Life.',
                              'success'
                            ).then(
                              function () {
                                window.location.replace("./index.jsp");
                              },
                              // handling the promise rejection
                              function (dismiss) {
                               
                              } 
                          )
                      }
                  }
          });
      }
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
</body>
</html>
<!--load-->
<div id="overlay">
<div id="showload">
<span class="cssload-loader"><span class="cssload-loader-inner"></span></span>
</div>
</div>
<link rel="stylesheet" type="text/css" href="./UI/load.css">
<script type="text/javascript" src="./UI/load.js"></script>