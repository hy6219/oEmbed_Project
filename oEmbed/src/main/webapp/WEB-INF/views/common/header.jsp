<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%response.setContentType("text/html;charset=utf-8");%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/common/header.css">
</head>
<body>
<header>
    <nav>
        <div class="title">
            <h1>oEmbed Test</h1>
        </div>
        <div class="search-form">
            <div class="search-content">
                <span><i class="fa fa-link icon"></i></span>
                <input type="text" name="contents-url" placeholder="https://www.youtube.com/watch?v=dBD54EZIrZo">
                <input type="button" value="확인" onclick="searchContent();">
            </div>
        </div>
    </nav>
</header>
</body>
<script>
    function searchContent(){
        let url=document.getElementsByName("contents-url")[0].value;//url값 가져오기 위함
        location.href="/oEmbed/find?url="+url;
    }
</script>
</html>