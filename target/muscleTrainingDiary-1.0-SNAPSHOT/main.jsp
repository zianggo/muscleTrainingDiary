<%@ page import="org.json.simple.JSONArray" %>
<%--
  Created by IntelliJ IDEA.5
  User: xiyo
  Date: 2021/11/01
  Time: 11:36 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int[] monthData = (int[]) request.getAttribute("monthData");
    JSONArray jsonArray = new JSONArray();
    for(int i=0; i< monthData.length; i++)
        jsonArray.add(i, monthData[i]);
%>

<html>
<head>
    <title>MUSCLE TRAINING DIARY</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        let $monthDays = <%=jsonArray.toJSONString()%>;
        $(function () {
            let $tds = $('table td');
            $tds.each((index, elem) => {
                $(elem).text($monthDays[index])
            });
        });
    </script>
    <style>
        table, td, th {
            border : 1px solid black;
        }
    </style>
</head>
<body>
<h1>Muscle Training Diary</h1>
<table>
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
