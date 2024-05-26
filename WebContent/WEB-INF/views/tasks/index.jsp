<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Task List</title>
</head>
<body>
    <h1>タスクリスト</h1>
    <ul>
        <c:forEach var="task" items="${tasks}">
            <li>
                <a href="<c:url value='/show?id=${task.id}'/>">${task.content}</a>
            </li>
        </c:forEach>
    </ul>
    <p><a href="<c:url value='/new'/>">新規タスクの作成</a></p>
</body>
</html>