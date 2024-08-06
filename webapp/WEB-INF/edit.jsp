<%@page import="com.Madhav.WebAppNotes.Notes"%>
<%@page import="com.Helper.WebAppNotes.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuickNotes : Edit Page</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
	<div class="container">
      <%@include file="navbar.jsp" %>
      <h1>This is Edit Page.</h1>
      <%
      	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
      	Session sess = FactoryProvider.getFactory().openSession();
      	Notes notes = (Notes) sess.get(Notes.class, noteId);
      %>
      
      <div class="card mt-4">
      <div class="card-body">
        <h1 class="card-title">Create your Notes here</h1>
        <!-- Create Note Form -->
        <form action="UpdateServlet" method="post">
        <input value="<%= notes.getId() %>" name="noteId" type="hidden" />
          <div class="form-group">
            <label for="title">Note Title</label>
            <input name="title" required type="text" class="form-control" id="title" placeholder="Your Note Title here" value="<%= notes.getTitle() %>" />
          </div>
          <div class="form-group">
            <label for="content">Note Content</label>
            <textarea name="content" required id="content" placeholder="Your Note here" class="form-control" style="height:300px"><%= notes.getContent() %></textarea>
          </div>
          <div class="text-center">
            <button type="submit" class="btn btn-success">Update</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
</html>
