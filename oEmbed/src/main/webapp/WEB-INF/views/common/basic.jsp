<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%response.setContentType("text/html;charset=utf-8");%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>서비스 오류 페이지</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/common/basic.css">
</head>
<body>
<div class="clearfix">
    <div class="notice">
        고객님, 죄송합니다. <br/>
        현재 <span class="highlight">
                <strong>Instagram</strong>,<strong>Youtube</strong>,<strong>Vimeo</strong>,
                <strong>Twitter</strong>
            </span> 에 대한 oEmbed만이 제공되고 있습니다. <br/>
        추후 해당 도메인으로의 확장을 신속하게 제공해드리도록 하겠습니다.<br/>
        죄송합니다.
    </div>
</div>
<button class="home" onclick="location.href='/oEmbed/'"><i class="fas fa-home"></i></button>
</body>
</html>