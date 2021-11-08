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

    int temp;
    if (request.getParameter("month") == null)
        temp = 0;
    else
        temp = Integer.valueOf(request.getParameter("month"));

    LocalDate currentWatchMonth;

    if(request.getSession().getAttribute("currentWatchMonth") == null ||
    request.getParameter("isToday") != null) {
        currentWatchMonth = LocalDate.now();
    } else {
        currentWatchMonth = (LocalDate) request.getSession().getAttribute("currentWatchMonth");
    }

    int month = currentWatchMonth.plusMonths(temp).getMonthValue();
    int year = currentWatchMonth.plusMonths(temp).getYear();

    LocalDate firstMonthDay = LocalDate.of(year, month, 1);
    int weekInt = firstMonthDay.getDayOfWeek().getValue();
    LocalDate beforeMonthLastDay = firstMonthDay.minusDays(weekInt);
    for(int i = 0; i < days.length; i++) {
        days[i] = beforeMonthLastDay.plusDays(i).getDayOfMonth();
    }

    request.getSession().setAttribute("currentWatchMonth", firstMonthDay);
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
    <h1>
       <%= year%>
    </h1>
    <% /* TODO: 2021/11/07 디자인 요소 적용하기
                화살표 양쪽에 고정
                투데이 우측고정
         */
                %>
    <div>

        <a href="?month=-1"> <- </a>
        <%= firstMonthDay.getMonth()%>
        (<%= firstMonthDay.getMonthValue()%>)
        <a href="?month=1"> -> </a>
    </div>
    <div>
        <a href="?isToday=Y">today</a>
    </div>
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
            <% /* TODO: 해당 날짜에 대한 데이터를 동적으로 찾아서 바꾸기, 밑에 총 3개 있음*/
            %>
            <div>어제(<%=today.minusDays(1).getDayOfMonth() %>)</div>
            <div>등,어깨</div>
        </td>
        <td>
            <div>오늘(<%=today.getDayOfMonth()%>)</div>
            <div>가슴,팔</div>
        </td>
        <td>
            <div>내일(<%=today.plusDays(1).getDayOfMonth()%>)</div>
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
