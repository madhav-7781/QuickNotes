package com.servlets.webAppNotes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Helper.WebAppNotes.FactoryProvider;
import com.Madhav.WebAppNotes.Notes;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Notes notes = new Notes(title, content, new Date());
			// Hibernate
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.save(notes);
			tx.commit();
			session.close();
			
			// Generate response with CSS
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Note Added</title>");
			out.println("<style>");
			out.println("body { font-family: Arial, sans-serif; background-color: #f8f9fa; margin: 0; padding: 0; }");
			out.println(".container { max-width: 600px; margin: 50px auto; padding: 20px; background-color: #fff; border-radius: 10px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); }");
			out.println("h1 { text-align: center; color: #28a745; }");
			out.println(".btn { display: inline-block; padding: 10px 20px; font-size: 16px; color: #fff; background-color: #007bff; border: none; border-radius: 5px; text-decoration: none; text-align: center; }");
			out.println(".btn:hover { background-color: #0056b3; }");
			out.println(".center { text-align: center; margin-top: 20px; }");
			out.println("</style>");
			out.println("</head>");
			out.println("<body>");
			out.println("<div class='container'>");
			out.println("<h1>Note Added Successfully</h1>");
			out.println("<div class='center'><a class='btn' href='all_notes.jsp'>View All Notes</a></div>");
			out.println("</div>");
			out.println("</body>");
			out.println("</html>");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
