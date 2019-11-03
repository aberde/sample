package geoai.cm.bbs.service;

import java.util.List;
import java.util.Map;

import egovframework.rte.fdl.cmmn.exception.FdlException;

public interface BoardService {

	Map<String, Object> selectBoardList(BoardVO boardVO);

	BoardVO selectBoardDetail(BoardVO boardVO);

	void insertBoard(Board board) throws FdlException;

	void updateBoard(Board board);

	void deleteBoard(Board board) throws Exception;

	List<BoardVO> selectNoticeBoardList(BoardVO boardVO);

	Map<String, Object> selectGuestBoardList(BoardVO vo);

	/*
	 * 블로그 관련
	 */
	BoardVO selectBoardCnOne(BoardVO boardVO);

	List<BoardVO> selectBlogNmList(BoardVO boardVO);

	Map<String, Object> selectBlogListManager(BoardVO boardVO);

	List<BoardVO> selectBoardDetailDefault(BoardVO boardVO);

	int selectBoardDetailDefaultCnt(BoardVO boardVO);

	List<BoardVO> selectBoardDetailCn(BoardVO boardVO);

	int selectLoginUser(BoardVO boardVO);
}
