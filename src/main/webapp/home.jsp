<%@page import="com.org.dao.UserDao"%>
<%@page import="com.org.dto.Notes"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="components/homecss.css">
</head>
<body>
      <%@ include file="components/homenavbar.jsp" %>
       <div class="container">
        <div class="sidebar">
            <a class="add-note-btn" href='addNotes.jsp'>Add New Note</a>
        </div>
        <div class="main-content">
<%
 String str=(String)session.getAttribute("nsave");
if(str!=null){
%>
<p style="text-align:center;"><%=str%></p>
<%session.removeAttribute("nsave"); }
Integer idObj=(Integer)session.getAttribute("success");
int id = (idObj != null) ? idObj : 0;
if(id!=0){
UserDao dao=new UserDao();
User user=dao.fetchUserById(id);
List<Notes> notes=user.getNote();
%>
            <h1>Welcome, <%= user.getName() %></h1>
        <%@ include file="components/search.jsp" %>
            <div class="notes-container">
                <% 
                    if (notes != null) 
                    {
                        for (Notes note : notes) 
                        {
                %>
                     <div class="note-card">
                <h2><%= note.getTitle() %></h2>
                <form action="updateNote" method="post">
                    <input type="hidden" name="id" value="<%= note.getId() %>">
                    <label>Title:</label>
                    <input type="text" name="title" value="<%= note.getTitle() %>" required>
                    <label>Description:</label>
                    <textarea name="description" required><%= note.getDescription() %></textarea>
                    <button type="submit">Update</button>
                </form>
                <form action="deleteNote" method="post">
                    <input type="hidden" name="id" value="<%= note.getId() %>">
                    <button type="submit">Delete</button>
                </form>
            </div>
        <% } } else { %>
            <p>No notes available.</p>
        <% } %>
                <%
                }else 
                	response.sendRedirect("login.jsp"); %>
            </div>
        </div>
    </div>
</body>
</html>