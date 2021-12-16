<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");%>
<%response.setContentType("text/html;charset=utf-8");%>
<%@ include file=".././common/header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>인스타그램 oEmbed 서비스</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/common/table.css">
</head>
<style>
    textarea{
        width:600px;
    }
    .home{
        position:fixed;
        right: 50px;
        bottom:50px;
        width: 50px;
        height: 50px;
    }

    .fa-home{
        display: flex;
        justify-content: center;
    }
</style>
<body>
<section>
    <article>
        <table>
            <tr>
                <th>title</th>
                <td><h1>${instagram.title}</h1></td>
            </tr>
            <tr>
                <th>type</th>
                <td>${instagram.type}</td>
            </tr>
            <tr>
                <th>version</th>
                <td>${instagram.version}</td>
            </tr>
            <tr>
                <th>author_name</th>
                <td>${instagram.authorName}</td>
            </tr>
            <tr>
                <th>author_url</th>
                <td><a href="${instagram.authorUrl}" target="_blank">${instagram.authorUrl}</a></td>
            </tr>
            <tr>
                <th>author_id</th>
                <td>${instagram.authorId}</td>
            </tr>
            <tr>
                <th>media_id</th>
                <td>${instagram.mediaId}</td>
            </tr>
            <tr>
                <th>provider_name</th>
                <td>${instagram.providerName}</td>
            </tr>
            <tr>
                <th>provider_url</th>
                <td><a href="${instagram.providerUrl}" target="_blank">${instagram.providerUrl}</a></td>
            </tr>
            <tr>
                <th>width</th>
                <td>${instagram.width}</td>
            </tr>
            <tr>
                <th>height</th>
                <td>${instagram.height}</td>
            </tr>
            <tr>
                <th>html</th>
                <td>
                    <textarea rows="10" cols="50" readonly>${instagram.html}</textarea>
                    <div>${instagram.html}</div>
                </td>
            </tr>
            <tr>
                <th>thumbnail_url</th>
                <td>
                    <a href="${instagram.thumbnailUrl}" target="_blank">${instagram.thumbnailUrl}</a><br/>
                    <img src="${instagram.thumbnailUrl}" alt="${instagram.thumbnailUrl}" onerror="this.src='https://image.freepik.com/free-vector/red-prohibited-sign_1284-42862.jpg'">
                </td>
            </tr>
            <tr>
                <th>thumbnail_width</th>
                <td>${instagram.thumbnailWidth}</td>
            </tr>
            <tr>
                <th>thumbnail_height</th>
                <td>${instagram.thumbnailHeight}</td>
            </tr>
        </table>
    </article>
</section>
<button class="home" onclick="location.href='/oEmbed/'"><i class="fas fa-home"></i></button>
</body>
</html>