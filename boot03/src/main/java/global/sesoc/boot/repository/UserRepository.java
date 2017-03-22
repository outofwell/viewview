package global.sesoc.boot.repository;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

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
	
	// 아이디로 회원 정보 가져오기 Repository
	public void selectOne(String id, Model model) {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		User u = null;
		try {
			u = dao.selectOne(id);
			model.addAttribute("User", u);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 로그인 Repository
	public String login(String userid, String password, Model model, HttpSession session) {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		User u = null;
		try {
			u = dao.selectOne(userid);
			if (u != null) {
				if(u.getPassword().equals(password)) {
					session.setAttribute("loginId", u.getUserid());
				}
			}
			else {
				model.addAttribute("errorMsg", "ID 또는 비밀번호가 틀립니다.");
				return "/login";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/";
	}
}
