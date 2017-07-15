<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Manager Page</title>
</head>
<body bgcolor="orange">
<%

String a = (String) request.getSession().getAttribute("user");

%>

Welcome  <%= a %>
<br></br>

 
<ul>
  <a href = "View_Subordinates.jsp" > 
  <button>View Suborinates History</button>
  </a>
  <br></br>
  
  <a href = "View_Employee_History.jsp" > 
  <button>View_own history</button>
  </a>
  <br></br>
  <a href = "Logout.html" > 
  <button>Log out</button>
  </a>
  <br></br>
  
  
</ul>>
<br><br><br><br><br><br><br><br><br><br>
            <h3 align="right"; >RnRSolutions<h3>
</body>


</html>