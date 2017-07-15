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

<c:if test="${not empty param.add}">
  <sql:update>
    insert into device (mac_address, model_no, employee_id) values (?, ?, ?)
    <sql:param value="${param.mac_address}" />
    <sql:param value="${param.model_no}" />
    <sql:param value="${param.employee_id}" />
  </sql:update>
  <c:redirect url="Device_search.jsp" />
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Add Device</title>
</head>
<body bgcolor="orange">
<form action="AddDevice.jsp" method="post">
MAC Address: <input type="text" name="mac_address" /> <br /><br><br>
Model number: <input type="text" name="model_no" /> <br /><br><br>
Employee ID: <input type="text" name="employee_id" /> <br /><br><br>
&emsp;&emsp;&emsp;&emsp;
<input type="submit" name="add" value="Add" />
&emsp;&emsp;&emsp;&emsp;
 <input type=button onClick="location.href='IT.jsp'" value = Close>

</form>
<br><br><br><br><br><br><br><br><br><br>
            <h3 align="right"; >RnRSolutions<h3></body>


</form>
</body>
</html>
