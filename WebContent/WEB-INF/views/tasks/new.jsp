<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>新規タスク作成</title>
</head>
<body>
    <h1>新規タスク作成</h1>

    <form action="<%=request.getContextPath()%>/create" method="post">
        <input type="hidden" name="_token" value="<%= request.getSession().getId() %>">

        <label for="content">タスク内容:</label>
        <input type="text" name="content" id="content" required>

        <input type="submit" value="作成">
    </form>

    <p><a href="<%=request.getContextPath()%>/index">タスク一覧に戻る</a></p>
</body>
</html>