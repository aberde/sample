package geoai.cm.bbs.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import geoai.cm.bbs.service.Board;
import geoai.cm.bbs.service.BoardVO;

@Repository("boardDAO")
public class BoardDAO extends EgovComAbstractDAO {

	public List<?> selectBoardList(BoardVO boardVO) {
		return list("board.selectBoardList", boardVO);
	}

	public int selectBoardListCnt(BoardVO boardVO) {
		return (Integer)selectOne("board.selectBoardListCnt", boardVO);
	}

	public int selectMaxInqireCo(BoardVO boardVO) {
		return (Integer)selectOne("board.selectMaxInqireCo", boardVO);
	}

	public void updateInqireCo(BoardVO boardVO) {
		update("board.updateInqireCo", boardVO);
	}

	public BoardVO selectBoardDetail(BoardVO boardVO) {
		return (BoardVO) selectOne("board.selectBoardDetail", boardVO);
	}

	public void replyBoard(Board board) {
		insert("board.replyBoard", board);
	}

	public void insertBoard(Board board) {
		insert("board.insertBoard", board);
	}

	public void updateBoard(Board board) {
		update("board.updateBoard", board);
	}

	public void deleteBoard(Board board) {
		update("board.deleteBoard", board);

	}

	public List<BoardVO> selectNoticeBoardList(BoardVO boardVO) {
		return (List<BoardVO>) list("board.selectNoticeBoardList", boardVO);
	}

	public List<?> selectGuestBoardList(BoardVO vo) {
		return list("board.selectGuestBoardList", vo);
	}

	public int selectGuestBoardListCnt(BoardVO vo) {
		return (Integer)selectOne("board.selectGuestBoardListCnt", vo);
	}

	/*
	 * 블로그 관련
	 */
	public BoardVO selectBoardCnOne(BoardVO boardVO) {
		return (BoardVO) selectOne("board.selectBoardCnOne", boardVO);
	}

	public List<BoardVO> selectBlogNmList(BoardVO boardVO) {
		return (List<BoardVO>) list("board.selectBlogNmList", boardVO);
	}

	public List<?> selectBlogListManager(BoardVO vo) {
		return list("board.selectBlogListManager", vo);
	}

	public int selectBlogListManagerCnt(BoardVO vo) {
		return (Integer)selectOne("board.selectBlogListManagerCnt", vo);
	}

	public List<BoardVO> selectBoardDetailDefault(BoardVO boardVO) {
		return (List<BoardVO>) list("board.selectBoardDetailDefault", boardVO);
	}

	public int selectBoardDetailDefaultCnt(BoardVO boardVO) {
		return (Integer)selectOne("board.selectBoardDetailDefaultCnt", boardVO);
	}

	public List<BoardVO> selectBoardDetailCn(BoardVO boardVO) {
		return (List<BoardVO>) list("board.selectBoardDetailCn", boardVO);
	}

	public int selectLoginUser(BoardVO boardVO) {
		return (Integer)selectOne("board.selectLoginUser", boardVO);
	}


}
