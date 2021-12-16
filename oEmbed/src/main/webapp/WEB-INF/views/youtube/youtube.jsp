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
    <link rel="stylesheet" href="/resources/css/common/table.css">
</head>
<body>
<section>
    <article>
        <table>
            <tr>
                <th>title</th>
                <td><h1></h1></td>
            </tr>
            <tr>
                <th>type</th>
                <td></td>
            </tr>
            <tr>
                <th>version</th>
                <td></td>
            </tr>
            <tr>
                <th>author_name</th>
                <td></td>
            </tr>
            <tr>
                <th>author_url</th>
                <td><a href=""></a></td>
            </tr>
            <tr>
                <th>provider_name</th>
                <td></td>
            </tr>
            <tr>
                <th>provider_url</th>
                <td><a href=""></a></td>
            </tr>
            <tr>
                <th>width</th>
                <td></td>
            </tr>
            <tr>
                <th>height</th>
                <td></td>
            </tr>
            <tr>
                <th>html</th>
                <td><iframe src="" frameborder="0"></iframe></td>
            </tr>
            <tr>
                <th>thumbnail_url</th>
                <td><img src="" alt=""></td>
            </tr>
            <tr>
                <th>thumbnail_width</th>
                <td></td>
            </tr>
            <tr>
                <th>thumbnail_height</th>
                <td></td>
            </tr>
        </table>
    </article>
</section>
</body>
</html>