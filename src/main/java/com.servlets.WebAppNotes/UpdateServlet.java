package com.servlets.webAppNotes;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Helper.WebAppNotes.FactoryProvider;
import com.Madhav.WebAppNotes.Notes;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public UpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			Notes notes = (Notes) session.get(Notes.class, noteId);
			
			notes.setTitle(title);
			notes.setContent(content);
			notes.setAddedDate(new Date());
			
			tx.commit();
			session.close();
			
			response.sendRedirect("all_notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
