<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles"   uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c"       uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui"      uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn"      uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt"     uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"    uri="http://www.springframework.org/tags/form" %>

<c:choose>
    <c:when test="${ searchVO.menuDepth1 eq 'aboutMSEAP' }">
        <!-- About MSEAP 왼쪽 메뉴 -->
	    <div id="lnb">
             <div class="lnb">
                 <h3 class="h3-title2">About <span>MSEAP</span></h3>
                 <ul>
                     <li><a href="<c:url value="/mseap/aboutMSEAP/MSEAP/mseapDetail.do"/>"              <c:if test="${ searchVO.menuDepth1 eq 'aboutMSEAP' && searchVO.menuDepth2 eq 'MSEAP' }">class="active"</c:if>>MSEAP</a></li>
                     <li><a href="<c:url value="/mseap/aboutMSEAP/listOfParticipants/listOfParticipantsDetail.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'aboutMSEAP' && searchVO.menuDepth2 eq 'listOfParticipants' }">class="active"</c:if>>List of Participants</a></li>
                     <li><a href="<c:url value="/mseap/aboutMSEAP/emblem/emblemDetail.do"/>"             <c:if test="${ searchVO.menuDepth1 eq 'aboutMSEAP' && searchVO.menuDepth2 eq 'emblem' }">class="active"</c:if>>Emblem</a></li>
                 </ul>
             </div>
         </div>
        <!-- /About MSEAP 왼쪽 메뉴 -->
    </c:when>
    <c:when test="${ searchVO.menuDepth1 eq 'events' }">
        <!-- Events 왼쪽 메뉴 -->
        <div id="lnb">
            <div class="lnb">
                <h3 class="h3-title2">Events</h3>
                <ul>
                    <li><a href="<c:url value="/mseap/events/pastEvents/pastEventsList3.do"/>"             <c:if test="${ searchVO.menuDepth1 eq 'events' && searchVO.menuDepth2 eq 'pastEvents' }">class="active"</c:if>>Past events</a></li>
                    <li><a href="<c:url value="/mseap/events/upcomingEvents/upcomingEventsList.do"/>"      <c:if test="${ searchVO.menuDepth1 eq 'events' && searchVO.menuDepth2 eq 'upcomingEvents' }">class="active"</c:if>>Upcoming events</a></li>
                    <li><a href="<c:url value="/mseap/events/calendarOfEvents/calendarOfEventsList.do"/>"  <c:if test="${ searchVO.menuDepth1 eq 'events' && searchVO.menuDepth2 eq 'calendarOfEvents' }">class="active"</c:if>>Calendar of events</a></li>
                    <li><a href="<c:url value="/mseap/events/photoGallery/photoGalleryList.do"/>"                  <c:if test="${ searchVO.menuDepth1 eq 'events' && searchVO.menuDepth2 eq 'photoGallery' }">class="active"</c:if>>Photo gallery</a></li>
                </ul>
            </div>
        </div>
        <!-- /Events 왼쪽 메뉴 -->
    </c:when>
    <c:when test="${ searchVO.menuDepth1 eq 'officialDocuments' }">
        <!-- Official Documents 왼쪽 메뉴 -->
        <div id="lnb">
            <div class="lnb">
                <h3 class="h3-title2">Official Doc</h3>
                <ul>
                    <li><a href="<c:url value="/mseap/officialDocuments/statutes/statutesList.do"/>"         <c:if test="${ searchVO.menuDepth1 eq 'officialDocuments' && searchVO.menuDepth2 eq 'statutes' }">class="active"</c:if>>Statutes</a></li>
                    <li><a href="<c:url value="/mseap/officialDocuments/declarations/declarationsList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'officialDocuments' && searchVO.menuDepth2 eq 'declarations' }">class="active"</c:if>>Declarations</a></li>
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
                    <li><a href="<c:url value="/mseap/news/news/newsList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'news' && searchVO.menuDepth2 eq 'news' }">class="active"</c:if>>News</a></li>
                    <li><a href="<c:url value="/mseap/news/resource/resourceList.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'news' && searchVO.menuDepth2 eq 'resource' }">class="active"</c:if>>Resource</a></li>
                </ul>
            </div>
        </div>
        <!-- /News 왼쪽 메뉴 -->
    </c:when>
    <c:when test="${ searchVO.menuDepth1 eq 'contactInfomation' }">
        <!-- Contact Information 왼쪽 메뉴 -->
        <div id="lnb">
            <div class="lnb">
                <h3 class="h3-title2">Contact Info</h3>
                <ul>
                    <li><a href="<c:url value="/mseap/contactInfomation/contactInfomation/contactInfomationDetail.do"/>" <c:if test="${ searchVO.menuDepth1 eq 'contactInfomation' && searchVO.menuDepth2 eq 'contactInfomation' }">class="active"</c:if>>Contact Information</a></li>
                </ul>
            </div>
        </div>
        <!-- /Contact Information 왼쪽 메뉴 -->
    </c:when>
</c:choose>