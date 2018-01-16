<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<%HttpSession s=request.getSession();
    if ((s.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
    response.sendRedirect("Index.jsp");	
    	
%>
<%} else {
%>
<body>
<head>
 <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/home.css" rel="stylesheet" />
<div class="container-fluid">
    <!-- Second navbar for categories -->
    <nav class="navbar navbar-default">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="Index.jsp">I-Farm</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Index.jsp">Home</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Notification</a></li>
            <li><a href="#">About Us</a></li>
            <li><button class="btn btn-danger dropdown-toggle btn-lg" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Menu
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="create.jsp">Create Farm</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="viewfarms.jsp">View Farms</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="viewmanager.jsp">View Managers</a></li>
  </ul></li>
            <li>
              <a class="btn btn-default btn-outline btn-circle"  href="logout.jsp" aria-expanded="false" aria-controls="nav-collapse1">Logout</a>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->
</div>
</body>
</html>
<%
    }
%>