<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuickNotes : Learn More</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
    <div class="container">
        <%@include file="navbar.jsp" %>
        <br>
        <h1 class="text-center">Learn More About QuickNotes</h1>
        <div class="row mt-4">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">What is QuickNotes?</h5>
                        <p class="card-text">
                            QuickNotes is a simple and efficient way to manage your notes online. Whether you're a student, a professional, or just someone who loves to stay organized, QuickNotes offers a user-friendly platform to create, edit, and view your notes.
                        </p>
                        <h5 class="card-title">Features</h5>
                        <ul class="card-text">
                            <li>Create and save notes with ease.</li>
                            <li>Edit your existing notes anytime.</li>
                            <li>Delete notes that are no longer needed.</li>
                            <li>Responsive design for use on any device.</li>
                        </ul>
                        <h5 class="card-title">How to Use</h5>
                        <p class="card-text">
                            Getting started with QuickNotes is easy. Simply navigate to the Create Note page, enter your note title and content, and click "Add". Your notes will be saved and displayed on the All Notes page. You can edit or delete notes as needed.
                        </p>
                        <div class="text-center">
                            <a href="create_notes.jsp" class="btn btn-primary">Create a Note</a>
                            <a href="all_notes.jsp" class="btn btn-success">View All Notes</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
