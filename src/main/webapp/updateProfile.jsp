<%@page import="com.org.dto.User"%>
<%@page import="com.org.dao.UserDao"%>
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
      <%@ include file="components/homenavbar.jsp" %>
      <div class="container">
        <%int id=(Integer)session.getAttribute("success");
        UserDao dao=new UserDao();
        User user=dao.fetchUserById(id);%>
        <h2><%=user.getName()%>'s  Profile</h2><%
        String message=(String)session.getAttribute("msg");
        if(message!=null){%>
          <p style='text-align:center;color:green;'><%=message%></p>
          <%session.removeAttribute("msg");} %>
        <form action="register" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="<%=user.getName()%>"required><br><br>
            
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" value="<%=user.getAge()%>" required><br><br>
            
            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" value="<%=user.getMobile()%>" required><br><br>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%=user.getEmail()%>"  required><br><br>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" value="<%=user.getPassword()%>" readonly required><br><br>
            
            <input type="submit" value="update">
        </form>
    </div>
      
      
</body>
</html>