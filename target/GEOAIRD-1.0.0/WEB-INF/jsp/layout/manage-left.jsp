<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles"   uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c"       uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui"      uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn"      uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt"     uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"    uri="http://www.springframework.org/tags/form" %>

<c:choose>
    <c:when test="${ searchVO.menuDepth1 eq 'userMng' }">
        <!-- 회원관리 왼쪽 메뉴 -->
	    <div id="lnb">
             <div class="lnb">
                 <h3 class="h3-title2">회원관리</h3>
                 <ul>
                     <li><a href="<c:url value="/mseap/manage/userMng/codeMng/codeMngForm.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'userMng' && searchVO.menuDepth2 eq 'codeMng' }">class="active"</c:if>>코드관리</a></li>
                     <li><a href="<c:url value="/mseap/manage/userMng/authMng/authMngList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'userMng' && searchVO.menuDepth2 eq 'authMng' }">class="active"</c:if>>권한관리</a></li>
                     <li><a href="<c:url value="/mseap/manage/userMng/cmmCodeMng/cmmCodeMngList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'userMng' && searchVO.menuDepth2 eq 'cmmCodeMng' }">class="active"</c:if>>공통코드관리</a></li>
                     <li><a href="<c:url value="/mseap/manage/userMng/bannerMng/bannerMngList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'userMng' && searchVO.menuDepth2 eq 'bannerMng' }">class="active"</c:if>>배너관리</a></li>
                     <li><a href="<c:url value="/mseap/manage/userMng/loginLog/loginLogList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'userMng' && searchVO.menuDepth2 eq 'loginLog' }">class="active"</c:if>>접속자통계</a></li>
                     <li><a href="<c:url value="/mseap/manage/userMng/menuLog/menuLogList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'userMng' && searchVO.menuDepth2 eq 'menuLog' }">class="active"</c:if>>메뉴별통계</a></li>
                 </ul>
             </div>
         </div>
        <!-- /회원관리 왼쪽 메뉴 -->
    </c:when>
    <c:when test="${ searchVO.menuDepth1 eq 'events' and fn:length(sessionScope.loginVO.authCdArr) > 0 }">
        <!-- Events 왼쪽 메뉴 -->
        <div id="lnb">
            <div class="lnb">
                <h3 class="h3-title2">Events</h3>
                <ul>
                    <c:if test="${ fn:contains(fn:join(sessionScope.loginVO.authCdArr, ','), '001') }">
                    <li><a href="<c:url value="/mseap/manage/events/upcomingEvents/upcomingEventsList.do"/>"    <c:if test="${ searchVO.menuDepth1 eq 'events' && searchVO.menuDepth2 eq 'upcomingEvents' }">class="active"</c:if>>Upcoming events</a></li>
                    </c:if>
                    <c:if test="${ fn:contains(fn:join(sessionScope.loginVO.authCdArr, ','), '002') }">
                    <li><a href="<c:url value="/mseap/manage/events/calendarOfEvents/calendarOfEventsList.do"/>"  <c:if test="${ searchVO.menuDepth1 eq 'events' && searchVO.menuDepth2 eq 'calendarOfEvents' }">class="active"</c:if>>Calendar of events</a></li>
                    </c:if>
                    <c:if test="${ fn:contains(fn:join(sessionScope.loginVO.authCdArr, ','), '003') }">
                    <li><a href="<c:url value="/mseap/manage/events/photoGallery/photoGalleryList.do"/>"      <c:if test="${ searchVO.menuDepth1 eq 'events' && searchVO.menuDepth2 eq 'photoGallery' }">class="active"</c:if>>Photo gallery</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
        <!-- /Events 왼쪽 메뉴 -->
    </c:when>
    <c:when test="${ searchVO.menuDepth1 eq 'officialDocuments' }">
        <!-- Official Documents 왼쪽 메뉴 -->
        <div id="lnb">
            <div class="lnb">
                <h3 class="h3-title2">Official Documents</h3>
                <ul>
                    <li><a href="<c:url value="/mseap/manage/officialDocuments/declarations/declarationsList.do"/>"     <c:if test="${ searchVO.menuDepth1 eq 'officialDocuments' && searchVO.menuDepth2 eq 'declarations' }">class="active"</c:if>>Declarations</a></li>
                </ul>
            </div>
        </div>
        <!-- /Official Documents 왼쪽 메뉴 -->
    </c:when>
    <c:when test="${ searchVO.menuDepth1 eq 'news' }">
        <!-- News 왼쪽 메뉴 -->
        <div id="lnb">
            <div class="lnb">
                <h3 class="h3-title2">News</h3>
                <ul>
                    <li><a href="<c:url value="/mseap/manage/news/news/newsList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'news' && searchVO.menuDepth2 eq 'news' }">class="active"</c:if>>News</a></li>
                    <li><a href="<c:url value="/mseap/manage/news/resource/resourceList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'news' && searchVO.menuDepth2 eq 'resource' }">class="active"</c:if>>Resource</a></li>
                </ul>
            </div>
        </div>
        <!-- /News 왼쪽 메뉴 -->
    </c:when>
    <c:when test="${ searchVO.menuDepth1 eq 'secretBbs' }">
        <!-- 비밀 게시판 왼쪽 메뉴 -->
        <div id="lnb">
            <div class="lnb">
                <h3 class="h3-title2">Board</h3>
                <ul>
                    <li><a href="<c:url value="/mseap/manage/secretBbs/secretBbs/secretBbsList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'secretBbs' && searchVO.menuDepth2 eq 'secretBbs' }">class="active"</c:if>>Board</a></li>
                </ul>
            </div>
        </div>
        <!-- /비밀 게시판 왼쪽 메뉴 -->
    </c:when>
</c:choose>