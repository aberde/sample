<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles"   uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c"       uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui"      uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn"      uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt"     uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"    uri="http://www.springframework.org/tags/form" %>

    <div id="menu" class="side_wrap">
        <nav>
            <ul class="snb">
                <li><a href="#" class="home"><span>HOME</span></a></li>
                <li class="on"><a href="/cm/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000001"><span>공지사항</span></a></li>
                <li><a href="/cm/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000002"><span>자료실</span></a></li>
                <li><a href="#"><span>사용자관리</span></a></li>
                <li>
                    <a href="#" class=""><span>로그관리</span></a>
                    <ul>
                        <li><a href="#">시스템 접속현황 조회</a></li>
                        <li><a href="#">월별 접속현황 조회</a></li>
                    </ul>
                </li>
                <li><a href="#"><span>권한관리</span></a></li>
            </ul>
        </nav>
    </div>
