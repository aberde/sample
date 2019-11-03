<%
 /**
  * @Class Name : boardRegist.jsp
  * @Description : boardRegist 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2019.11.03   mglee              최초 생성
  *
  * @version 1.0
  * @see
  *
  */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>

    <div class="mask">
        <div class="popup evaluation">
            <header>
                <h3><c:out value="${boardMasterVO.bbsNm}"/> 추가</h3>
                <div class="box_r">
                    <a href="#" onclick="fnClose(); return false;" class="close" title="<c:out value="${boardMasterVO.bbsNm}"/> 추가 팝업닫기">닫기</a>
                </div>
            </header>
            <form:form commandName="boardVO" id="inputForm" name="inputForm" method="post" enctype="multipart/form-data">
                <input type="hidden" name="pageIndex"  value="<c:out value='${searchVO.pageIndex}'/>"/>
                <input type="hidden" name="bbsTyCode" value="<c:out value='${boardMasterVO.bbsTyCode}'/>" />
                <input type="hidden" name="replyPosblAt" value="<c:out value='${boardMasterVO.replyPosblAt}'/>" />
                <input type="hidden" name="fileAtchPosblAt" value="<c:out value='${boardMasterVO.fileAtchPosblAt}'/>" />
                <input type="hidden" id="atchPosblFileNumber" name="atchPosblFileNumber" value="<c:out value='${boardMasterVO.atchPosblFileNumber}'/>" />
                <input type="hidden" name="atchPosblFileSize" value="<c:out value='${boardMasterVO.atchPosblFileSize}'/>" />
                <input type="hidden" name="tmplatId" value="<c:out value='${boardMasterVO.tmplatId}'/>" />
                <input type="hidden" name="blogId" value="<c:out value='${searchVO.blogId}'/>" />
                <input type="hidden" name="blogAt" value="<c:out value='${boardVO.blogAt}'/>"/>
                <input type="hidden" name="cmd" value="<c:out value='save'/>">
                <input type="hidden" name="bbsId" value="<c:out value='${boardVO.bbsId}'/>">

                <fieldset>
                    <label for="nttSj"><spring:message code="cmBbs.boardVO.regist.nttSj"/></label>
                    <form:input path="nttSj" placeholder="" size="70" maxlength="70" />
                </fieldset>
                <fieldset>
                    <label for="nttCn"><spring:message code="cmBbs.boardVO.regist.nttCn"/></label>
                    <form:textarea path="nttCn" cols="50" rows="20" />
                </fieldset>
                <c:if test="${boardMasterVO.fileAtchPosblAt == 'Y'}">
                <!-- 첨부파일  -->
                <fieldset>
                    <label for="nttCn"><spring:message code="cmBbs.boardVO.regist.atchFile"/></label>
                    <div class="file_wrap">
                        <input id="egovComFileUploader" name="egovComFileUploader" type="file" onchange="$('egovComFileUploader_view').val(this.value)" title="<spring:message code="cmBbs.boardVO.regist.atchFile"/>" />
                        <input name="egovComFileUploader_view" id="egovComFileUploader_view" type="text" placeholder="파일을 첨부해 주세요" />
                        <label for="egovComFileUploader">파일찾기</label>
                    </div>
                    <div id="egovComFileList"></div>
                </fieldset>
                </c:if>
                <div class="btn_wrap">
                    <button type="button" onclick="fnInsert();">추가</button>
                    <button type="button" onclick="fnClose();">취소</button>
                </div>
            </form:form>
        </div>

        <script type="text/javascript">
            /* ********************************************************
             * 등록처리
             ******************************************************** */
            function fnInsert() {
                $("#inputForm").attr("action", "<c:url value='/cm/bbs/insertBoard.do'/>");
                $("#inputForm").submit();
            }
            /* ********************************************************
             * 삭제처리
             ******************************************************** */
            function fnClose() {
            	$("#content article .mask").remove();
            }
        </script>

        <!-- 첨부파일 업로드 가능화일 설정 Start..-->
        <script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/fms/EgovMultiFile.js'/>" ></script>
        <script type="text/javascript">
            var maxFileNum = $("#atchPosblFileNumber").val();
            if ( maxFileNum == null || maxFileNum == "" ) {
                maxFileNum = 3;
            }
            var multi_selector = new MultiSelector( $("#egovComFileList")[0], maxFileNum );
            multi_selector.addElement($("#egovComFileUploader")[0]);
        </script>
        <!-- 첨부파일 업로드 가능화일 설정 End.-->

    </div>
