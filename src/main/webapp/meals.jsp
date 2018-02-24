<%-- <%@ page import="ru.javawebinar.topjava.util.DateTimeUtil" %>  --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://topjava.javawebinar.ru/functions" %>
<html>
<head>
    <title>Meal List</title>
    <style>
        .green {color: #00acb4;}
        .red   {color: #9c5560;}
    </style>
</head>
<body>
<h2><a href="index.html">Home</a></h2>

<h2>Meal List</h2>
<table border="1">
    <thead>
    <tr>
        <th>Дата</th>
        <th>Назва прийому їжі</th>
        <th>Калорії</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${meals}" var="meal">
            <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealWithExceed" />
            <tr class="${meal.exceed ? 'red' : 'green'}">
                <td>
                    <%-- <fmt:parsedate value="${meal.dateTime}" pattern="y-M-dd'T'H:m" var="parseDate" /> --%>
                    <%-- <fmt:formatdate value="${parseDate}" pattern="yyyy.MM.dd HH:mm" /> --%>
                    <%-- ${meal.dateTime.toLocalDate()} ${meal.dateTime.toLocalTime()} --%>
                    <%-- <%=TimeUtil.toString(meal.getDateTime())%> --%>
                            ${fn:formatDateTime(meal.dateTime)}
                </td>
                <td><c:out value="${meal.description}"></c:out></td>
                <td><c:out value="${meal.calories}"></c:out></td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
