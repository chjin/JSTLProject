<%--
  Created by IntelliJ IDEA.
  User: sist
  Date: 2016-03-29
  Time: 오후 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="EUC-KR" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <c:set var="vatName" value="varValue"/>
    변수이름: <c:out value="${vatName}"/>
    <br/>
    <c:remove var="vatName"/>
   <h3> 변수이름: <c:out value="${vatName}"/></h3>
    <hr/>

    <c:catch var="error">
        <%=2/0%>
    </c:catch>
    <br/>
    <c:out value="${error}"/>
    <br/>

    <c:if test="${1+2==3}">
    1+2=3
    </c:if>
    <br/>


    <c:if test="${1+2!=3}">
        1 +  2 !=3
    </c:if>

    <hr/>


    <c:forEach var="fEach" begin="0" end="30" step="3">
        ${fEach}
    </c:forEach>


</body>
</html>



































