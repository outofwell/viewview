package global.sesoc.boot.dao;

import global.sesoc.boot.vo.Board;

public interface BoardDAO {
	
	// 글 등록
	public int write(Board board) throws Exception;
	
}
