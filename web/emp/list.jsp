<%@ page import="com.sist.dao.EmpDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.sist.dao.EmpDAO" %><%--
  Created by IntelliJ IDEA.
  User: sist
  Date: 2016-03-29
  Time: 오후 3:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="EUC-KR" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    List<EmpDTO> list= EmpDAO.empAllData();     //문제??
%>

<c:set var="list" value="<%=list%>"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <ul>
        <c:forEach var="dto" items="${list}">
            <li>${dto.empno}-${dto.ename}-${dto.job}</li>
        </c:forEach>
    </ul>
</body>
</html>

































































