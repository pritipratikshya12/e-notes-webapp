<%@page import="com.org.dao.UserDao"%>
<%@page import="com.org.dto.User"%>
<%@page import="com.org.dto.Notes"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="components/homecss.css"></head>
<body>
<%int id=(Integer)session.getAttribute("success");
UserDao dao=new UserDao();
User user=dao.fetchUserById(id); %>
      <%@ include file="components/homenavbar.jsp" %>
      <div class="container">
        <div class="sidebar">
            <a class="add-note-btn" href='addNotes.jsp'>Add New Note</a>
        </div>
        <div class="main-content">
            <h1>Welcome, <%= user.getName() %></h1>
        <%@ include file="components/search.jsp" %>
            <div class="notes-container">
               <% 
             List<Notes> notes = (List<Notes>) session.getAttribute("notes");
             if (notes != null) {
        	 for(Notes note:notes){
    %>
        <div class="note-card">
        <h2 class="note-title" onclick="openModal('<%= note.getId() %>')"><%= note.getTitle() %></h2>

        <!-- Modal for each note -->
        <div class="modal" id="modal-<%= note.getId() %>">
            <div class="modal-content">
                <span class="close-btn" onclick="closeModal('<%= note.getId() %>')">&times;</span>
                
                <!-- Editable Form for Title and Description -->
                <form action="updateNote" method="post">
                    <input type="hidden" name="id" value="<%= note.getId() %>">
                    
                    <!-- Editable Title Field -->
                    <label for="title-<%= note.getId() %>">Title:</label>
                    <input type="text" id="title-<%= note.getId() %>" name="title" value="<%= note.getTitle() %>" class="note-title-input">
                    
                    <!-- Editable Description Field -->
                    <label for="description-<%= note.getId() %>">Description:</label>
                    <textarea id="description-<%= note.getId() %>" name="description" class="note-description-input"><%= note.getDescription() %></textarea>
                    
                    <!-- Update and Delete Buttons -->
                    <div class="card-buttons">
                        <button type="submit" class="update-btn">Save Changes</button>
                    </div>
                </form>
                
                <!-- Separate Form for Delete Action -->
                <form action="deleteNote" method="post">
                    <input type="hidden" name="id" value="<%= note.getId() %>">
                    <button type="submit" class="delete-btn">Delete</button>
                </form>
            </div>
        </div>
    </div>
                    <%}
        	 }
             else{%>
        		 <p>No notes available....</p>
        		 <%
        	 }%>
            </div>
        </div>
    </div>
 
</body>
</html>
