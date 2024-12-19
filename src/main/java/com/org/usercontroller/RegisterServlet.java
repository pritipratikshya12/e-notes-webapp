package com.org.usercontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    
		    String name = req.getParameter("username");
		    int age = Integer.parseInt(req.getParameter("age"));
		    long mobile = Long.parseLong(req.getParameter("mobile"));
		    String email = req.getParameter("email");
		    String password = req.getParameter("password");



		    UserDao dao = new UserDao();
		    Integer userId = (Integer) req.getSession().getAttribute("success");

	        User user;
	        if (userId == null) {
	           
	            user = new User(name, age, mobile, email, password);
	        } else {
	           
	            user = new User(userId, name, age, mobile, email, password);
	        }
	        
	        try {
	            dao.saveAndUpdateUser(user);
	            HttpSession session= req.getSession();
	            if(userId==null) {
	            	session.setAttribute("registered successfully", "msg");
	            	resp.sendRedirect("register.jsp");
	            }
	            else {
	            	session.setAttribute("updated successfully", "msg");
	            	resp.sendRedirect("updateProfile.jsp");
	            }
	        } catch (Exception e) {
	            req.getSession().setAttribute("msg", "error occurred: " + e.getMessage());
	           
	        }

	       
	    }
	}

