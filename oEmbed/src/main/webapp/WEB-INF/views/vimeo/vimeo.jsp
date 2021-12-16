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
    <title>vimeo oEmbed 서비스</title>
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
                <td><h1>${vimeo.title}</h1></td>
            </tr>
            <tr>
                <th>type</th>
                <td>${vimeo.type}</td>
            </tr>
            <tr>
                <th>version</th>
                <td>${vimeo.version}</td>
            </tr>
            <tr>
                <th>provider_name</th>
                <td>${vimeo.providerName}</td>
            </tr>
            <tr>
                <th>provider_url</th>
                <td><a href="${vimeo.providerUrl}" target="_blank">${vimeo.providerUrl}</a></td>
            </tr>
            <tr>
                <th>author_name</th>
                <td>${vimeo.authorName}</td>
            </tr>
            <tr>
                <th>author_url</th>
                <td><a href="${vimeo.authorUrl}" target="_blank">${vimeo.authorUrl}</a></td>
            </tr>
            <tr>
                <th>is_plus</th>
                <td>${vimeo.isPlus}</td>
            </tr>
            <tr>
                <th>account_type</th>
                <td>${vimeo.accountType}</td>
            </tr>
            <tr>
                <th>html</th>
                <td>
                    <textarea rows="10" cols="50" readonly>${vimeo.html}</textarea>
                    <div>${vimeo.html}</div>
                </td>
            </tr>
            <tr>
                <th>width</th>
                <td>${vimeo.width}</td>
            </tr>
            <tr>
                <th>height</th>
                <td>${vimeo.height}</td>
            </tr>
            <tr>
                <th>duration</th>
                <td>${vimeo.duration}</td>
            </tr>
            <tr>
                <th>description</th>
                <td>${vimeo.description}</td>
            </tr>
            <tr>
                <th>thumbnail_url</th>
                <td>
                    <a href="${vimeo.thumbnailUrl}" target="_blank">${vimeo.thumbnailUrl}</a><br/>
                    <img src="${vimeo.thumbnailUrl}" alt="${vimeo.thumbnailUrl}" onerror="this.src='https://image.freepik.com/free-vector/red-prohibited-sign_1284-42862.jpg'">
                </td>
            </tr>
            <tr>
                <th>thumbnail_width</th>
                <td>${vimeo.thumbnailWidth}</td>
            </tr>
            <tr>
                <th>thumbnail_height</th>
                <td>${vimeo.thumbnailHeight}</td>
            </tr>
            <tr>
                <th>thumbnail_url_with_play_button</th>
                <td><a href="${vimeo.thumbnailUrlWithPlayButton}" target="_blank">${vimeo.thumbnailUrlWithPlayButton}</a></td>
            </tr>
            <tr>
                <th>upload_date</th>
                <td>${vimeo.uploadDate}</td>
            </tr>
            <tr>
                <th>video_id</th>
                <td>${vimeo.videoId}</td>
            </tr>
            <tr>
                <th>uri</th>
                <td>${vimeo.uri}</td>
            </tr>
        </table>
    </article>
</section>
<button class="home" onclick="location.href='/oEmbed/'"><i class="fas fa-home"></i></button>
</body>
</html>