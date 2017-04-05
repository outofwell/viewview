package global.sesoc.boot.dao;

import java.util.ArrayList;

import global.sesoc.boot.vo.Board;

public interface BoardDAO {
	
	//글 등록
	public int write(Board board) throws Exception;

	//글 목록(개인)
	public ArrayList<Board> boardList(String id);

	//글 목록(전체)
	public ArrayList<Board> list();

	//글 수정
	public int updateBoard(Board board) throws Exception;
	
	//글 삭제
	public int deleteBoard(int boardnum) throws Exception;
	
	//글 검색
	public Board searchBoard(String search) throws Exception;
}
