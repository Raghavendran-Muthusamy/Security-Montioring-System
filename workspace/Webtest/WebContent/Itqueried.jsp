<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%-- set data source --%>
<sql:setDataSource
    driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost/cs320stu31"
    user="cs320stu31"
    password="6979"/>

<%-- query --%>
<sql:query var="items">
SELECT * FROM VIOLATION_HISTORY where emp_id = (?)
<sql:param value="${param.search0}" />
</sql:query>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>View_Search (JSTL SQL)</title>
</head>
<body>


<c:if test="${items.rowCount > 0}">
<table border="1">
<tr><th>Mac_Address</th><th>Issue</th><th>Violation_Date</th><th>Domain_IP</th><th>TRAINING REQUIRED</th><th>Model_No</th><th>Employee_ID</th></tr>
<c:forEach items="${items.rowsByIndex}" var="row">
<tr>
  <c:forEach items="${row}" var="col">
  <td>${col}</td>
  </c:forEach>
</tr>
</c:forEach>
</table>
</c:if>
<ul>
<a href = "Violation_history.jsp" > 
  <button>Close</button>
  </a>
</ul>


</BODY>
</HTML>

