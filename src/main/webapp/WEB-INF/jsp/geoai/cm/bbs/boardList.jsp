<%
 /**
  * @Class Name : boardList.jsp
  * @Description : boardList 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  *   2019.11.03   mglee              최초 생성
  * @version 1.0
  * @see
  *
  */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

    <div id="content">
        <article class="sub01 evaluation">
            <header>
                <h2><c:out value="${boardMasterVO.bbsNm}"/></h2>
                <p><c:out value="${boardMasterVO.bbsNm}"/> 페이지 입니다.</p>
            </header>

            <div class="conts">

                <%-- 검색 --%>
                <form id="searchForm" name="searchForm" action="<c:url value='/cm/bbs/selectBoardList.do'/>" method="post" class="search" >
                    <input id="bbsId" name="bbsId" type="hidden" value="<c:out value="${boardMasterVO.bbsId}" />" />
                    <input id="pageIndex" name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>" />
                    <input id="nttId" name="nttId" type="hidden" value="0" />
                    <input id="temp" name="temp" type="text" value="" style="display: none;" />

                    <fieldset>
                        <select id="searchCnd" name="searchCnd" title="<spring:message code="title.searchCondition" /> <spring:message code="input.cSelect" />">
                            <option value="0"  <c:if test="${searchVO.searchCnd == '0'}">selected="selected"</c:if> ><spring:message code="cmBbs.boardVO.list.nttSj" /></option><!-- 글 제목  -->
                            <option value="1"  <c:if test="${searchVO.searchCnd == '1'}">selected="selected"</c:if> ><spring:message code="cmBbs.boardVO.list.nttCn" /></option><!-- 글 내용 -->
                            <option value="2"  <c:if test="${searchVO.searchCnd == '2'}">selected="selected"</c:if> ><spring:message code="table.reger" /></option><!-- 작성자 -->
                        </select>
                        <label for="searchWrd"></label>
                        <input id="searchWrd" name="searchWrd" type="text" placeholder="search" maxlength="155" title="<spring:message code="title.search" /> <spring:message code="input.input" />" value="<c:out value="${searchVO.searchWrd}"/>" />
                        <button id="searchBtn" type="button" onclick="fnSearch();">검색</button>
                    </fieldset>
                    <div class="add box_r">
                        <a href="#" onclick="fnInsertView(); return false;" title="게시글 추가하기">추가</a>
                    </div>
                </form>
                <%-- /검색 --%>

                <table class="table" summary="<spring:message code="common.summary.list" arguments="${pageTitle}" />">
                    <caption>${pageTitle} <spring:message code="title.list" /></caption>
                    <colgroup>
                        <col style="width: 9%;" />
                        <col />
                        <col style="width: 13%;" />
                        <col style="width: 13%;" />
                        <col style="width: 13%;" />
                        <col style="width: 13%;" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col"><spring:message code="table.num" /></th><!-- 번호 -->
                            <th scope="col"><spring:message code="cmBbs.boardVO.list.nttSj" /></th><!--글 제목  -->
                            <th scope="col"><spring:message code="table.reger" /></th><!-- 작성자명 -->
                            <th scope="col"><spring:message code="table.regdate" /></th><!-- 작성시각 -->
                            <th scope="col"><spring:message code="cmBbs.boardVO.list.inqireCo" /></th><!-- 조회수  -->
                            <th scope="col"></th><!-- 수정/삭제  -->
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${resultList}" var="resultInfo" varStatus="status">
                        <tr class="<c:out value="${status.index % 2 == 0 ? 'even' : 'odd'}" />">
                            <td><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}" /></td>
                            <td><c:out value="${resultInfo.nttSj}" /></td>
                            <td><c:out value="${resultInfo.frstRegisterNm}" /></td>
                            <td><c:out value="${resultInfo.frstRegisterPnttm}" /></td>
                            <td><c:out value="${resultInfo.inqireCo}" /></td>
                            <td>
                                <a href="#" onclick="fnUpdateView(this); return false;" class="btn btn-outline-secondary btn-sm"
                                    data-bbsid="<c:out value="${resultInfo.bbsId}" />"
                                    data-nttid="<c:out value="${resultInfo.nttId}" />"
                                >편집</a>
                                <a href="#" onclick="fnUpdateView(this); return false;" class="btn btn-outline-secondary btn-sm"
                                    data-bbsid="<c:out value="${resultInfo.bbsId}" />"
                                    data-nttid="<c:out value="${resultInfo.nttId}" />"
                                >삭제</a>
                            </td>
                        </tr>
                        </c:forEach>

                        <c:if test="${fn:length(resultList) == 0}">
                        <!-- 글이 없는 경우 -->
                        <tr>
                            <td colspan="6"><spring:message code="common.nodata.msg" /></td>
                        </tr>
                        </c:if>

                    </tbody>
                </table>

                <!-- paging navigation -->
                <div class="pagination">
                    <ul>
                        <ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fnPaging"/>
                    </ul>
                </div>

            </div>

        </article>
    </div>


<script type="text/javascript">
    /*********************************************************
     * 초기화
     ******************************************************** */
    function fnInit(){
        // 첫 입력란에 포커스..
        $("#searchForm #searchWrd").focus();
    }

    /*********************************************************
     * 페이징 처리 함수
     ******************************************************** */
    function fnPaging(pageNo){
    	$("#searchForm #pageIndex").val(pageNo);
        $("#searchForm").attr("action", "<c:url value='/cm/bbs/selectBoardList.do'/>");
        $("#searchForm").submit();
    }
    /*********************************************************
     * 조회 처리 함수
     ******************************************************** */
    function fnSearch(){
    	$("#searchForm #pageIndex").val(1);
    	$("#searchForm").submit();
    }
    /* ********************************************************
     * 등록화면 이동 함수
     ******************************************************** */
    function fnInsertView() {
        $.ajax({
        	url : "<c:url value='/cm/bbs/insertBoardView.do'/>",
        	data : $("#searchForm").serialize(),
        	success : function(data) {
    		   $("#content article").append(data);
    		   $("#content article .mask").show();
        	},
        	error: function(response, status, error){
        		alert(status + " : " + error);
            }
        });
    }
    /* ********************************************************
     * 수정화면 처리 함수
     ******************************************************** */
    function fnUpdateView(target) {
        // 사이트 키값(siteId) 셋팅.
        $("#searchForm #bbsId").val($(target).data("bbsid"));
        $("#searchForm #nttId").val($(target).data("nttid"));

        $.ajax({
        	url : "<c:url value='/cm/bbs/updateBoardView.do'/>",
        	data : $("#searchForm").serialize(),
        	success : function(data) {
    		   $("#content article").append(data);
    		   $("#content article .mask").show();
        	},
        	error: function(response, status, error){
                alert(status + " : " + error);
            }
        });
    }
    /* ********************************************************
     * 삭제 처리 함수
     ******************************************************** */
    function fnDelete(target) {
        // 사이트 키값(siteId) 셋팅.
        $("#searchForm #bbsId").val($(target).data("bbsid"));
        $("#searchForm #nttId").val($(target).data("nttid"));
        $("#searchForm").attr("action", "<c:url value='/cm/bbs/deleteBoard.do'/>");
        $("#searchForm").submit();
    }

    $(document).ready(function() {
    	fnInit();
    });
</script>