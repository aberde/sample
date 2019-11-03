<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles"   uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c"       uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui"      uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn"      uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt"     uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"    uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="index,follow">
    <meta name="author" content="창원시"/>
    <meta name="description" content="창원시">
    <meta name="keywords" content="창원시">

    <title>국공유지 모니터링 시스템</title>

    <!-- CSS -->
    <link media="all" type="text/css" rel="stylesheet" href="<c:url value="/css/font.css" />" />
    <link media="all" type="text/css" rel="stylesheet" href="<c:url value="/css/base.css" />" />
    <link media="all" type="text/css" rel="stylesheet" href="<c:url value="/css/layout.css" />" />

    <!-- JS -->
    <script type="text/javascript" src="<c:url value="/js/jquery-3.4.1.min.js" />"></script>
</head>
<body>
    <div id="skip_menu">
        <h1>바로가기 메뉴</h1>
        <ul>
            <li><a href="#content">본문 바로가기</a></li>
            <li><a href="#menu">주메뉴 바로가기</a></li>
        </ul>
    </div>
    <div id="wrap">
        <tiles:insertAttribute name="header"/>
        <!-- 콘텐츠 시작  -->
        <div id="container">
            <tiles:insertAttribute name="left"/>
            <div class="body_wrap">
                <tiles:insertAttribute name="content"/>
                <tiles:insertAttribute name="footer"/>
            </div>
        </div>
        <!-- 콘텐츠 끝 -->
    </div>
</body>
</html>