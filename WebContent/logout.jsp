<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<title>Logout</title>
</head>
<body>
<%
HttpSession s=request.getSession();
s.setAttribute("username", null);
s.invalidate();
response.sendRedirect("Index.jsp");
%>
</body>
</html>