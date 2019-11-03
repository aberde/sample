<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="tiles"   uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c"       uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui"      uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn"      uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt"     uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"    uri="http://www.springframework.org/tags/form" %>

    <!-- 상단 시작 -->
    <div id="hd">
        <h1 id="hd_h1">mseap</h1>
        <div id="skip_to_container"><a href="#content">본문내용 바로가기</a></div>
        <div id="top"></div>
        <div id="header">
            <div class="head">
                <div class="logo">
                    <a href="<c:url value="/mseap/manage/login/manageLogin.do" />" title="mseap 메인 화면으로 이동"><img src="<c:url value="/img/common/logo.jpg" />" alt="mseap 로고" /></a>
                </div>
                <div class="tnb">
                    <ul>
                        <li><a><c:out value="${ sessionScope.loginVO.userNm }" /></a></li>
                        <li><a href="<c:url value="/mseap/manage/login/manageLogoutProcess.do" />" title="logout mseap 메인 화면으로 이동">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div class="gnb">
                <h2 class="sound_only">메인메뉴</h2>
                <ul>
                    <c:if test="${ sessionScope.loginVO.superAdminYn eq 'Y' }">
                    <li><a href="<c:url value="/mseap/manage/userMng/codeMng/codeMngForm.do"/>"                               <c:if test="${ searchVO.menuDepth1 eq 'userMng' }">class="active"</c:if>>회원관리</a></li>
                    </c:if>
                    <c:if test="${ fn:length(sessionScope.loginVO.authCdArr) > 0 }">
                    <li><a href="<c:url value="/mseap/manage/events/upcomingEvents/upcomingEventsList.do"/>"                  <c:if test="${ searchVO.menuDepth1 eq 'events' }">class="active"</c:if>>Events</a></li>
                    </c:if>
                    <c:if test="${ sessionScope.loginVO.superAdminYn eq 'Y' }">
                    <li><a href="<c:url value="/mseap/manage/officialDocuments/declarations/declarationsList.do"/>"           <c:if test="${ searchVO.menuDepth1 eq 'officialDocuments' }">class="active"</c:if>>Official Documents</a></li>
                    </c:if>
                    <c:if test="${ sessionScope.loginVO.superAdminYn eq 'Y' }">
                    <li><a href="<c:url value="/mseap/manage/news/news/newsList.do"/>"                                        <c:if test="${ searchVO.menuDepth1 eq 'news' }">class="active"</c:if>>News</a></li>
                    </c:if>
                    <li><a href="<c:url value="/mseap/manage/secretBbs/secretBbs/secretBbsList.do"/>"                         <c:if test="${ searchVO.menuDepth1 eq 'secretBbs' }">class="active"</c:if>>Board</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 상단 끝 -->