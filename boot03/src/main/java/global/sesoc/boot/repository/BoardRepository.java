package global.sesoc.boot.repository;

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
	
}
