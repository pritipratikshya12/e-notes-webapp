<%@page import="com.org.dto.User"%>
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
        <h2>Login</h2>
        <form action="login" method="post">
        <%
           String s1=(String)session.getAttribute("failed");
           if(s1!=null){%>
              <p style='text-align:center;color:red;'><%=s1 %></p>
           <%session.removeAttribute("failed");}%>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>
            
            <input type="submit" value="Login">
            <p style="text-align:center;color:#FF007F;">don't have an account?<a href="register.jsp">create here</a></p>
        </form>
    </div>
</body>
</html>
