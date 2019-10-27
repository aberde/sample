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
                    <a href="<c:url value="/mseap/main/main/main.do" />" title="mseap 메인 화면으로 이동"><img src="<c:url value="/img/common/logo.jpg" />" alt="mseap 로고" /></a>
                </div>
                <div class="tnb">
                    <ul>
                        <li><a href="<c:url value="/mseap/main/main/main.do" />">Home</a></li>
                        <li><a href="javascript:bookmark();">Bookmark</a></li>
                    </ul>
                </div>
            </div>
            <div class="gnb">
                <h2 class="sound_only">메인메뉴</h2>
                <ul>
                    <li class="rootMenu"><a href="<c:url value="/mseap/aboutMSEAP/MSEAP/mseapDetail.do"/>"                      <c:if test="${ searchVO.menuDepth1 eq 'aboutMSEAP' }">class="active"</c:if>>About MSEAP</a>
                        <div class="submenu">
                            <ul>
                                <li><a href="<c:url value="/mseap/aboutMSEAP/MSEAP/mseapDetail.do"/>">MSEAP</a></li>
                                <li><a href="<c:url value="/mseap/aboutMSEAP/listOfParticipants/listOfParticipantsDetail.do"/>">List of Participants</a></li>
                                <li><a href="<c:url value="/mseap/aboutMSEAP/emblem/emblemDetail.do"/>">Emblem</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="rootMenu"><a href="<c:url value="/mseap/events/pastEvents/pastEventsList3.do"/>"             <c:if test="${ searchVO.menuDepth1 eq 'events' }">class="active"</c:if>>Events</a>
                        <div class="submenu">
                            <ul>
                                <li><a href="<c:url value="/mseap/events/pastEvents/pastEventsList3.do"/>">Past events</a></li>
                                <li><a href="<c:url value="/mseap/events/upcomingEvents/upcomingEventsList.do"/>">Upcoming events</a></li>
                                <li><a href="<c:url value="/mseap/events/calendarOfEvents/calendarOfEventsList.do"/>">Calendar of events</a></li>
                                <li><a href="<c:url value="/mseap/events/photoGallery/photoGalleryList.do"/>">Photo gallery</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="rootMenu"><a href="<c:url value="/mseap/officialDocuments/statutes/statutesList.do"/>"       <c:if test="${ searchVO.menuDepth1 eq 'officialDocuments' }">class="active"</c:if>>Official Documents</a>
                        <div class="submenu">
                            <ul>
                                <li><a href="<c:url value="/mseap/officialDocuments/statutes/statutesList.do"/>">Statutes</a></li>
                                <li><a href="<c:url value="/mseap/officialDocuments/declarations/declarationsList.do"/>">Declarations</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="rootMenu"><a href="<c:url value="/mseap/news/news/newsList.do"/>"                             <c:if test="${ searchVO.menuDepth1 eq 'news' }">class="active"</c:if>>News</a>
                        <div class="submenu">
                            <ul>
                                <li><a href="<c:url value="/mseap/news/news/newsList.do"/>">News</a></li>
                                <li><a href="<c:url value="/mseap/news/resource/resourceList.do"/>">Resource</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="rootMenu"><a href="<c:url value="/mseap/contactInfomation/contactInfomation/contactInfomationDetail.do"/>"   <c:if test="${ searchVO.menuDepth1 eq 'contactInfomation' }">class="active"</c:if>>Contact Information</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 상단 끝 -->