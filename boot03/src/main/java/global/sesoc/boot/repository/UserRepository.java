package global.sesoc.boot.repository;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.boot.dao.UserDAO;
import global.sesoc.boot.vo.User;

@Repository
public class UserRepository {
	private static final Logger logger = LoggerFactory.getLogger(UserRepository.class);

	@Autowired
	SqlSession sqlSession;

	// 회원가입 Repository
	public int join(User user) {
		logger.info("data 수집 완료 ==> " + user.toString());

		UserDAO dao = sqlSession.getMapper(UserDAO.class);

		int result = 0;

		try {
			result = dao.join(user);
			logger.info("insert count ==> " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
}
