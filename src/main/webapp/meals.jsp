<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Meal List</title>
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
            <c:if test="${meal.exceed eq false}"> <tr style="color: #00acb4"></c:if>
            <c:if test="${meal.exceed}">          <tr style="color: #9c5560"></c:if>
                <td><c:out value="${localDateTimeFormat.format(meal.dateTime)}"></c:out></td>
                <td><c:out value="${meal.description}"></c:out></td>
                <td><c:out value="${meal.calories}"></c:out></td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
