<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%response.setContentType("text/html;charset=utf-8");%>
<%@ include file=".././common/header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>유튜브 oEmbed 서비스</title>
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
                <td><h1>${youtube.title}</h1></td>
            </tr>
            <tr>
                <th>type</th>
                <td>${youtube.type}</td>
            </tr>
            <tr>
                <th>version</th>
                <td>${youtube.version}</td>
            </tr>
            <tr>
                <th>author_name</th>
                <td>${youtube.authorName}</td>
            </tr>
            <tr>
                <th>author_url</th>
                <td><a href="${youtube.authorUrl}" target="_blank">${youtube.authorUrl}</a></td>
            </tr>
            <tr>
                <th>provider_name</th>
                <td>${youtube.providerName}</td>
            </tr>
            <tr>
                <th>provider_url</th>
                <td><a href="${youtube.providerUrl}" target="_blank">${youtube.providerUrl}</a></td>
            </tr>
            <tr>
                <th>width</th>
                <td>${youtube.width}</td>
            </tr>
            <tr>
                <th>height</th>
                <td>${youtube.height}</td>
            </tr>
            <tr>
                <th>html</th>
                <td>
                    <textarea rows="10" cols="50" readonly>${youtube.html}</textarea>
                    <div>${youtube.html}</div>
                </td>
            </tr>
            <tr>
                <th>thumbnail_url</th>
                <td>
                    <a href="${youtube.thumbnailUrl}" target="_blank">${youtube.thumbnailUrl}</a><br/>
                    <img src="${youtube.thumbnailUrl}" alt="${youtube.thumbnailUrl}" onerror="this.src='https://image.freepik.com/free-vector/red-prohibited-sign_1284-42862.jpg'">
                </td>
            </tr>
            <tr>
                <th>thumbnail_width</th>
                <td>${youtube.thumbnailWidth}</td>
            </tr>
            <tr>
                <th>thumbnail_height</th>
                <td>${youtube.thumbnailHeight}</td>
            </tr>
        </table>
    </article>
</section>
<button class="home" onclick="location.href='/oEmbed/'"><i class="fas fa-home"></i></button>
</body>
</html>