<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        font-weight:;
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
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Staff</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <%
        if(session.getAttribute("TOKEN")==null){
out.print("<li><a href='login.jsp'><span class='glyphicon glyphicon-log-in'></span> Login</a></li>");
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
        <button onclick="window.location.replace('./index.jsp?term='+$( '#searchText' ).val());" class="btn btn-default" type="button">Go!</button>
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
<div>
<pre id="lyricsContent">
</pre>
</div>

</div>
<br><br>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
<script type="text/javascript">
     
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
                    $('#youtube').append('<a href="'+data[0].link+'">'+data[0].link+'</a>');
                  }
          });
      }

    
       $( document ).ready(function() {
          getLyricsContent();
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
</html>
