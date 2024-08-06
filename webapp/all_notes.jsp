<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.Helper.WebAppNotes.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.Madhav.WebAppNotes.Notes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuickNotes : Your Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
    <div class="container">
        <%@include file="navbar.jsp" %>
        <br>
        <h1 class="text-uppercase text-center">All Notes</h1>
        <div class="row mt-4">
            <%
                Session session2 = FactoryProvider.getFactory().openSession();
                Query q = session2.createQuery("from Notes");
                List<Notes> list = q.list();
                for(Notes note : list) {
            %>
            <div class="col-md-4">
                <div class="card mt-3">
                    <img class="card-img-top p-4" src="img/notes.png" alt="Card image cap" style="max-width:100px; margin: 0 auto;">
                    <div class="card-body">
                        <h5 class="card-title"><%= note.getTitle() %></h5>
                        <p class="card-text"><%= note.getContent() %></p>
                        <p class="text-muted"><%= note.getAddedDate() %></p>
                        <div class="d-flex justify-content-between">
                            <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Edit</a>
                            <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
            <%    
                }
                session2.close();
            %>
        </div>
    </div>
</body>
</html>
