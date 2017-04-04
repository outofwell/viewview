package global.sesoc.boot.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.boot.dao.BoardDAO;
import global.sesoc.boot.dao.UserDAO;
import global.sesoc.boot.vo.Board;

@Repository
public class BoardRepository {

	@Autowired
	SqlSession sqlSession;
	
	//글 작성
	public int write(Board board){
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		int result = 0;

		try {
			dao.write(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//글 목록(개인)
	public ArrayList<Board> boardList(String id) {
		ArrayList<Board> list = new ArrayList<>();
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		list = dao.boardList(id);
		return list;
	}
	
}
