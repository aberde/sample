<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles"   uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c"       uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui"      uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn"      uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt"     uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"    uri="http://www.springframework.org/tags/form" %>
<%
    String url = request.getRequestURL().toString();

    if ( url.startsWith("http://") && (url.indexOf("localhost") < 0) ) {
        response.sendRedirect("https://mseap.org:442/mseap/manage/login/manageLogin.jsp");
    }
%>
<!doctype html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>MSEAP</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/base.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/layout.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/common.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/index.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/sub.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/jquery.bxslider.css" />" />
    
    <script type="text/javascript" src="<c:url value="/js/jquery-1.11.0.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/js/common.js" />"></script>
    <script type="text/javascript" src="<c:url value="/js/main.js" />"></script>
    <script type="text/javascript" src="<c:url value="/js/sub.js" />"></script>
    <script type="text/javascript" src="<c:url value="/js/jquery.bxslider.js" />"></script>
    <script type="text/javascript" src="<c:url value="/js/egovframework/com/cmm/fms/EgovMultiFile.js" />"></script>
    
    <!--[if lte IE 8]>
    <script type="text/javascript" src="<c:url value="/js/html5.js" />"></script>
    <![endif]-->
</head>
<body>
    <div id="wrap">
        <tiles:insertAttribute name="header"/>
        <!-- 콘텐츠 시작  -->
	    <div id="container">
	        <div id="contents">
		        <tiles:insertAttribute name="left"/>
		        <tiles:insertAttribute name="content"/>
		    </div>
	    </div>    
	    <!-- 콘텐츠 끝 -->
        <tiles:insertAttribute name="footer"/>
    </div>
</body>
</html>