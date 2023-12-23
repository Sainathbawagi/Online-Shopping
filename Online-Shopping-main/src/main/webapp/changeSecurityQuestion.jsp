<%@ page import="project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<% if("wrong".equals(msg)){%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Security Question</h3>
 <select class="input-style" name="securityQuestion">
  <option value="name of your first school">Name of Your First School</option>
   <option value="name of your favourite food">Name of Your Favourite Food</option>
   <option value="name of youe pet">Name of Your Pet</option>
   <option value="name of your favourite Teacher">Name of Your Favourite Teacher</option>
 </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="enter Your Answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="enter Your password" required>
<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>