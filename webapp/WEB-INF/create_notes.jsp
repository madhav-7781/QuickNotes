<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuickNotes : Create Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
  <div class="container">
    <%@include file="navbar.jsp" %>
    <br>
    <div class="card mt-4">
      <div class="card-body">
        <h1 class="card-title">Create your Notes here</h1>
        <!-- Create Note Form -->
        <form action="SaveNoteServlet" method="post">
          <div class="form-group">
            <label for="title">Note Title</label>
            <input name="title" required type="text" class="form-control" id="title" placeholder="Your Note Title here" />
          </div>
          <div class="form-group">
            <label for="content">Note Content</label>
            <textarea name="content" required id="content" placeholder="Your Note here" class="form-control" style="height:300px"></textarea>
          </div>
          <div class="text-center">
            <button type="submit" class="btn btn-primary">Add</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
</html>
