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


<div style="padding: 100px;">
  <form>
    <div class="form-group">
      <label for="formGroupExampleInput">Name</label>
      <input type="text" class="form-control" id="username" placeholder="Example input">
    </div>
    <div class="form-group">
      <label for="formGroupExampleInput2">Account</label>
      <input type="text" class="form-control" id="account" placeholder="Another input">
    </div>
    <div class="form-group">
      <label for="formGroupExampleInput2">Password</label>
      <input type="Password" class="form-control" id="password1" placeholder="Another input">
    </div>
   
    <div class="form-group">
      <label for="formGroupExampleInput2">Repassword</label>
      <input type="Password" class="form-control" id="password2" placeholder="Another input">
    </div>

 <div class="form-group">
   <label for="formGroupExampleInput2">Gender</label>
    <br>
    <label class="radio-inline"><input type="radio" name="gender" value="1">♂</label>
    <label class="radio-inline"><input type="radio" name="gender" value="0">♀</label>
    <label class="radio-inline"><input type="radio" name="gender" value="2">Secret</label>
   </div>
     <div class="form-group">
      <label for="formGroupExampleInput2">Tag</label>
      <input type="text" class="form-control" id="tag" placeholder="Another input">
    </div>
     <div class="form-group">
        <label for="comment">Intro</label>
        <textarea class="form-control" rows="5" id="intro"></textarea>
    </div>
    <div style="text-align: center;">
    <div class="checkbox">
      <label><input id="readCheck" type="checkbox" value="">同意相關條約</label>
    </div>
    <button type="button" class="btn btn-default" onclick="sendLogin();">Register</button>
    </div>
  </form>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>


<script type="text/javascript">
    /*
      * 送出表單
      */
      function sendLogin()
      {
          /*
          * Ajax
          */
          var username = $('#username').val();
          var account = $('#account').val();
          var password1 = $('#password1').val();
          var password2 = $('#password2').val();
          var tag = $('#tag').val();
          var intro = $('#intro').val();
          var gender = $("input[name='gender']:checked").val();


          if(password1!=password2){
            alert('password error');
            return;
          }

          var params = 'username='+username+
                        '&account='+account+
                        '&password='+password1+
                        '&tag='+tag+
                        '&intro='+intro+
                        '&gender='+gender;

        $.ajax({
                  url: 'API/register.jsp',
                  type:"post",
                  data: params,
                  success: function(data){
                      var data = JSON.parse(data);
                      if(data.status == 'success'){
                          alert('success');
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
</html>
