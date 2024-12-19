<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="components/noteadd.css">
</head>
<body>
      <%@ include file="components/homenavbar.jsp" %>
       <div class="container">
        <h2>New Note</h2>
        <form action="addnotes" method="post">
            <label for="description">Title:</label>
            <input type="text" id="title" name="title" required><br><br>
            
            <label for="description">Description:</label>
            <textarea rows="4" cols="4" id="description" name="description"  required></textarea><br><br>
            <input type="submit" value="Save">
        </form>
    </div>
</body>
</html>