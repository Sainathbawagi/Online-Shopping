<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
     <select name="securityQuestion">
     <option value="name of your first school">Name of Your First School</option>
   <option value="name of your favourite food">Name of Your Favourite Food</option>
   <option value="name of youe pet">Name of Your Pet</option>
   <option value="name of your favourite Teacher">Name of Your Favourite Teacher</option>
   </select>
   <input type="text" name="answer" placeholder="Enter Answer" required>
   <input type="password" name="newPassword" placeholder="Enter New Password" required>
   <input type="submit" value="save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg))
  {
 %>
 
<h1>Password Changed Successfully!</h1>
<% }%>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>