<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="components/form.css">
</head>
<body>
    <%@ include file="components/navbar.jsp" %>
    <div class="container">
        <h2>Register</h2>
        <%String message=(String)session.getAttribute("msg");
        if(message!=null){%>
          <p style='text-align:center;color:green;'><%=message%></p>
          <%session.removeAttribute("msg");} %>
        <form action="register" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>
            
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required><br><br>
            
            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" required><br><br>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>
            
            <input type="submit" value="Register">
            <p style="text-align:center;color:#FF007F;">already an user?<a href="login.jsp">login here</a></p>
        </form>
    </div>
</body>
</html>

