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

<div>
    <%
        // TODO: 2021/11/04 월 전환 이벤트 생성
    %>
    <
    <%= firstMonthDay.getMonth()%>
    >
</div>
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

<table>

    <tr>
        <td>
            <div><%=today.minusDays(1).getDayOfMonth() %></div>
            <% // TODO: 해당 날짜에 대한 데이터를 동적으로 찾아서 바꾸기, 밑에 총 3개 있음 %>
            <div>등,어깨</div>
        </td>
        <td>
            <div><%=today.getDayOfMonth()%></div>
            <div>가슴,팔</div>
        </td>
        <td>
            <div><%=today.plusDays(1).getDayOfMonth()%></div>
            <div>하체,어깨</div>
        </td>
    </tr>

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
