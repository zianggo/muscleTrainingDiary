<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: xiyo
  Date: 2021/11/08
  Time: 9:27 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    boolean isCheck;
    if (request.getParameter("isCheck") == null)
        isCheck = false;
    else
        isCheck = request.getParameter("isCheck").equals("true") ? true : false;

    String targetDate;
    if (request.getSession().getAttribute("targetDate") == null) {
        targetDate = request.getParameter("targetDate");
        request.getSession().setAttribute("targetDate", targetDate);
    } else {
        targetDate = (String) request.getSession().getAttribute("targetDate");
    }
%>
<html>
<head>
    <title>최대중량 기록</title>
</head>
<body>
<div>
    <%= targetDate%>
</div>
<h1>등 + 어깨</h1>
<table>
    <tr>
        <td>muscle training</td>
        <td>max weight</td>
    </tr>
    <tr>
        <td>dead lift</td>
        <td>80kg</td>
    </tr>
    <tr>
        <td>add</td>
        <td>max weight</td>
    </tr>
</table>

<button onclick="location.href='?isCheck=<%= !isCheck %>'">

    <% if (isCheck) {%> uncheck
    <% } else {%> check
    <% } %>
<%--    <button type="button" onclick="location.href='joinUs.jsp' ">회원가입</button> --%>
</button>
</body>
</html>
