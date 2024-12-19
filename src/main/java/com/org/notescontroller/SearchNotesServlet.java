package com.org.notescontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.NotesDao;
import com.org.dto.Notes;

@WebServlet("/searchNotes")
public class SearchNotesServlet extends HttpServlet{
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String search = req.getParameter("search");
	NotesDao dao=new NotesDao();
	List<Notes> title = dao.fetchNotesByTitle(search);
	HttpSession session=req.getSession();
	session.setAttribute("notes", title);
	resp.sendRedirect("notes.jsp");
}
}
