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
select e.emp_id, d.mac_address, e.emp_lname, e.emp_fname, e.group_id ,group_team.MANAGER_id, emp.emp_fname as manager
from device d, employee e, group_team, employee emp
where emp.emp_id=(select manager_id from group_team where GROUP_ID = (
select GROUP_ID  from  employee where EMP_ID = (?)
 )) and group_team.manager_id=(select manager_id from group_team where GROUP_ID = (
select GROUP_ID  from  employee where EMP_ID = (?)
 )) and 
e.group_id= group_team.group_id and 
d.employee_id=(?) and e.emp_id=(?)

<sql:param value="${param.search1}" />
<sql:param value="${param.search1}" />
<sql:param value="${param.search1}" />
<sql:param value="${param.search1}" />

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
<tr><th>EMPLOYEE_ID</th><th>F_NAME</th><th>L_NAME</th><th>PHONE</th><th>MAC_ADDRESS</th><th>GROUP_ID</th><th>Manager</th>></tr>
<c:forEach items="${items.rowsByIndex}" var="row">
<tr>
  <c:forEach items="${row}" var="col">
  <td>${col}</td>
  </c:forEach>
</tr>
</c:forEach>
</table>
</c:if>
<br>
<br>

<ul>

<input type=button onClick="location.href='IT.jsp'" value = Close></ul>


</BODY>
</HTML>

