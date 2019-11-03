package geoai.cm.bbs.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.FileVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.cmmn.exception.FdlException;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;
import geoai.cm.bbs.service.Board;
import geoai.cm.bbs.service.BoardService;
import geoai.cm.bbs.service.BoardVO;

@Service("boardService")
public class BoardServiceImpl extends EgovAbstractServiceImpl implements BoardService {

	@Resource(name = "boardDAO")
    private BoardDAO boardDao;

    @Resource(name = "EgovFileMngService")
    private EgovFileMngService fileService;

    @Resource(name = "propertiesService")
    protected EgovPropertyService propertyService;

    @Resource(name = "egovNttIdGnrService")
    private EgovIdGnrService nttIdgenService;

	@Override
	public Map<String, Object> selectBoardList(BoardVO boardVO) {
		List<?> list = boardDao.selectBoardList(boardVO);


		int cnt = boardDao.selectBoardListCnt(boardVO);

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("resultList", list);
		map.put("resultCnt", Integer.toString(cnt));

		return map;
	}

	@Override
	public BoardVO selectBoardDetail(BoardVO boardVO) {
	    int iniqireCo = boardDao.selectMaxInqireCo(boardVO);

	    boardVO.setInqireCo(iniqireCo);
	    boardDao.updateInqireCo(boardVO);

		return boardDao.selectBoardDetail(boardVO);
	}

	@Override
	public BoardVO selectBoardCnOne(BoardVO boardVO) {
		return boardDao.selectBoardCnOne(boardVO);
	}

	@Override
	public List<BoardVO> selectBoardDetailDefault(BoardVO boardVO) {
		return boardDao.selectBoardDetailDefault(boardVO);
	}

	@Override
	public int selectBoardDetailDefaultCnt(BoardVO boardVO){
		return boardDao.selectBoardDetailDefaultCnt(boardVO);
	}

	@Override
	public List<BoardVO> selectBoardDetailCn(BoardVO boardVO) {
		return boardDao.selectBoardDetailCn(boardVO);
	}

	@Override
	public void insertBoard(Board board) throws FdlException {

		if ("Y".equals(board.getReplyAt())) {
		    // 답글인 경우 1. Parnts를 세팅, 2.Parnts의 sortOrdr을 현재글의 sortOrdr로 가져오도록, 3.nttNo는 현재 게시판의 순서대로
		    // replyLc는 부모글의 ReplyLc + 1

		    board.setNttId(nttIdgenService.getNextIntegerId());	// 답글에 대한 nttId 생성
		    boardDao.replyBoard(board);

		} else {
		    // 답글이 아닌경우 Parnts = 0, replyLc는 = 0, sortOrdr = nttNo(Query에서 처리)
		    board.setParnts("0");
		    board.setReplyLc("0");
		    board.setReplyAt("N");
		    board.setNttId(nttIdgenService.getNextIntegerId());//2011.09.22

		    boardDao.insertBoard(board);
		}
	}

	@Override
	public void updateBoard(Board board) {
		boardDao.updateBoard(board);
	}

	@Override
	public void deleteBoard(Board board) throws Exception {
		FileVO fvo = new FileVO();

		fvo.setAtchFileId(board.getAtchFileId());

		board.setNttSj("이 글은 작성자에 의해서 삭제되었습니다.");

		boardDao.deleteBoard(board);

		if (!"".equals(fvo.getAtchFileId()) || fvo.getAtchFileId() != null) {
		    fileService.deleteAllFileInf(fvo);
		}

	}

	@Override
	public List<BoardVO> selectNoticeBoardList(BoardVO boardVO) {
		return boardDao.selectNoticeBoardList(boardVO);
	}

	@Override
	public List<BoardVO> selectBlogNmList(BoardVO boardVO) {
		return boardDao.selectBlogNmList(boardVO);
	}

	@Override
	public Map<String, Object> selectGuestBoardList(BoardVO vo) {
		List<?> list = boardDao.selectGuestBoardList(vo);


		int cnt = boardDao.selectGuestBoardListCnt(vo);

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("resultList", list);
		map.put("resultCnt", Integer.toString(cnt));

		return map;
	}

	@Override
	public int selectLoginUser(BoardVO boardVO){
		return boardDao.selectLoginUser(boardVO);
	}

	@Override
	public Map<String, Object> selectBlogListManager(BoardVO vo) {
		List<?> result = boardDao.selectBlogListManager(vo);
		int cnt = boardDao.selectBlogListManagerCnt(vo);

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("resultList", result);
		map.put("resultCnt", Integer.toString(cnt));

		return map;
	}

}
