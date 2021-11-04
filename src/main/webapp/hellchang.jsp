<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: xiyo
  Date: 2021/11/02
  Time: 10:38 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int[] days = new int[42];
    LocalDate today = LocalDate.now();

    int month = LocalDate.now().getMonthValue();
    int year = LocalDate.now().getYear();

    LocalDate firstMonthDay = LocalDate.of(year, month,1);
    int weekInt = firstMonthDay.getDayOfWeek().getValue();
    LocalDate beforeMonthLastDay = firstMonthDay.minusDays(weekInt);
    for(int i = 0; i < days.length; i++) {
        days[i] = beforeMonthLastDay.plusDays(i).getDayOfMonth();
    }
%>
<html>
<head>
    <title>Title</title>
    <style>
        table, td, th {
            border : 1px solid black;
        }
    </style>
</head>
<body>

<table>
    <%
        int index = 0;
    %>

    <%
        for(int i=0; i<6; i++){
    %>
        <tr>
    <%
           for(int j=0; j<7; j++){
    %>
           <td>
               <%=days[index++]%>
           </td>
    <%
        }
    %>
           </tr>
    <%
    }
    %>

</table>

























<%--<table>--%>
<%--    <%--%>
<%--        int index = 0;--%>
<%--        for(int i=0; i<6; i++)  {--%>
<%--    %>--%>
<%--    <tr>--%>
<%--    <%--%>
<%--            for(int j=0; j<7; j++) {--%>
<%--    %>--%>
<%--        <td>--%>
<%--            <%= days[index++] %>--%>
<%--        </td>--%>
<%--    <%--%>
<%--            }--%>
<%--    %>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
<%--</table>--%>




    <tr>
        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    <tr>
        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    <tr>
        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    <tr>
        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    <tr>
        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    <tr>
        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
</table>

</body>
</html>
