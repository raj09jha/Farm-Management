<%   HttpSession s=request.getSession();
    if ((s.getAttribute("username") != null)) {
    	response.sendRedirect("Home.jsp");
%>

<%} else{%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<head>
	<title>I-Farm</title>
	
	
	
	<link href="css/bootstrap.min.css" rel="stylesheet" />
  	<script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
    <style type="text/css">
 	li{font-size:18px;} 
    </style>
</head>
<body>
<div class="container-fluid"> 
	<div class="row">
		<div class="col-md-12"> 			
            <nav class="navbar navbar-inverse">
              <div class="container">
                <div class="navbar-header">                 
                  <a class="navbar-brand" style="font-weight:bold;color:white;font-size:22px;"></span>I-Farm</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                  <ul class="nav navbar-nav">              
                  </ul>
                </div>
              </div>
            </nav>       
    	</div>
	</div>
    <div class="row">
		<div class="col-md-12"> 
        	 
             <div style="text-align:center;">
                <div class="starter-template">
                  <h1>I-Farm</h1>
                </div>  
             </div>
          
             
        </div>
    </div>
    <div class="row" style="border: ;">
       <div class="col-md-12" style="border: ;">       
  
  			<div style="border:;text-align:center;">
            	<div style="width:400px;border:;display:inline-block;">
                    <form class="form-signin" method="post" action="Login.spring" style="border:;"> 
                        <h2 class="form-signin-heading">Sign In</h2>
                        <br />
                        <label for="inputEmail" class="sr-only">Email address</label>
                        <input type="email" id="inputEmail" name="u" class="form-control" placeholder="Email Address" style="font-size:18px;" required autofocus><br/>
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input type="password" id="inputPassword" name="p" class="form-control" placeholder="Password" style="font-size:18px;" required> 
                        <br />
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>
                    </form>
                    <br /><br />
                    <h3>Not a member? <a href="Register.jsp">Register</a></h3>
                </div>    
             </div> 	  
       
       </div>
    </div>
</div>
</body>
</html>
</body>
</html>
<%}%>