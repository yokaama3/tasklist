<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>タスク詳細</title>
</head>
<body>
    <c:choose>
        <c:when test="${task != null}">
            <h2>ID: ${task.id} のタスク詳細ページ</h2>

            <table>
                <tbody>
                    <tr>
                        <th>ID</th>
                        <td>${task.id}</td>
                    </tr>
                    <tr>
                        <th>content（タスクの内容）</th>
                        <td>${task.content}</td>
                    </tr>
                    <tr>
                        <th>作成日時</th>
                        <td><fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                    </tr>
                    <tr>
                        <th>更新日時</th>
                        <td><fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                    </tr>
                </tbody>
            </table>

            <a href="<c:url value='/index'/>">一覧に戻る</a>
        </c:when>
        <c:otherwise>
            <h2>お探しのデータは見つかりませんでした。</h2>
        </c:otherwise>
    </c:choose>
</body>
</html>
