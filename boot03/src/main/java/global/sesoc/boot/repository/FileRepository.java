package global.sesoc.boot.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.boot.dao.BoardDAO;
import global.sesoc.boot.dao.FileDAO;
import global.sesoc.boot.vo.Board;
import global.sesoc.boot.vo.Files;

@Repository
public class FileRepository {

	@Autowired
	SqlSession sqlSession;
	
	public int save(Files file){
		FileDAO dao = sqlSession.getMapper(FileDAO.class);
		
		int result = 0;

		try {
			dao.save(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public ArrayList<Files> fileList(){
		ArrayList<Files> list = new ArrayList();
		FileDAO dao = sqlSession.getMapper(FileDAO.class);
		try {
			list = dao.fileList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
}
