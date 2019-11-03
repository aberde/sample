<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles"   uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c"       uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui"      uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn"      uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt"     uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"    uri="http://www.springframework.org/tags/form" %>

	    <!-- 하단 시작 -->
	    <div id="ft">
	        <div class="footer">
	            <div class="logo"><a href="<c:url value="/mseap/main/main/main.do"/>"><img src="/img/common/ft-logo.png" alt="mseap 로고" /></a></div>
	            <div class="fnb">
	                <ul>
	                    <li class="fnb01"><a href="<c:url value="/mseap/aboutMSEAP/MSEAP/mseapDetail.do"/>">About MSEAP</a>
	                        <ul>
	                            <li><a href="<c:url value="/mseap/aboutMSEAP/MSEAP/mseapDetail.do"/>">MSEAP</a></li>
	                            <li><a href="<c:url value="/mseap/aboutMSEAP/listOfParticipants/listOfParticipantsDetail.do"/>">List of Participants</a></li>
	                            <li><a href="<c:url value="/mseap/aboutMSEAP/emblem/emblemDetail.do"/>">Emblem</a></li>
	                        </ul>
	                    </li>
	                    <li class="fnb02"><a href="<c:url value="/mseap/events/pastEvents/pastEventsList3.do"/>">Events</a>
	                        <ul>
	                            <li><a href="<c:url value="/mseap/events/pastEvents/pastEventsList3.do"/>">Past events</a></li>
	                            <li><a href="<c:url value="/mseap/events/upcomingEvents/upcomingEventsList.do"/>">Upcoming events</a></li>
	                            <li><a href="<c:url value="/mseap/events/calendarOfEvents/calendarOfEventsList.do"/>">Calendar of events</a></li>
	                            <li><a href="<c:url value="/mseap/events/photoGallery/photoGalleryList.do"/>">Photo gallery</a></li>
	                        </ul>
	                    </li>
	                    <li class="fnb03"><a href="<c:url value="/mseap/officialDocuments/statutes/statutesList.do"/>">Official Documents</a>
	                        <ul>
	                            <li><a href="<c:url value="/mseap/officialDocuments/statutes/statutesList.do"/>">Statutes</a></li>
	                            <li><a href="<c:url value="/mseap/officialDocuments/declarations/declarationsList.do"/>">Declarations</a></li>
	                        </ul>
	                    </li>
	                    <li class="fnb04"><a href="<c:url value="/mseap/news/news/newsList.do"/>">News</a>
	                        <ul>
                                <li><a href="<c:url value="/mseap/news/news/newsList.do"/>">News</a></li>
                                <li><a href="<c:url value="/mseap/news/resource/resourceList.do"/>">Resource</a></li>
                            </ul>
	                    </li>
	                    <li class="fnb05"><a href="<c:url value="/mseap/contactInfomation/contactInfomation/contactInfomationDetail.do"/>">Contact Information</a></li>
	                </ul>
	            </div>
	            <div class="mseap-info">
	                <address>1, Uisadang-daero, Yeongdeungpo-gu, Seoul, Republic of Korea</address>
	                <p>mseap@assembly.go.kr</p>
	            </div>
	            <div class="siteinfo">
	                <p>Copyright ⓒ 2017 MSEAP. All Rights Reserved.</p>
	            </div>
	        </div>
	    </div>    
	    <!-- 하단 끝 -->
