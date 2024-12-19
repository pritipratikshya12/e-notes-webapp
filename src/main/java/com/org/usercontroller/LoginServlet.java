package com.org.usercontroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.org.dao.UserDao;
import com.org.dto.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		HttpSession session = req.getSession();
		UserDao dao=new UserDao();
		User loginUser = dao.loginUser(email, password);
		if(loginUser!=null) {
			session.setAttribute("success", loginUser.getId());
			resp.sendRedirect("home.jsp");
		}
		else
		{
			session.setAttribute("failed", "invalid username or password");
			resp.sendRedirect("login.jsp");
		}
	}

}
