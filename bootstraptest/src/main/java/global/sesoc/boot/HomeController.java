package global.sesoc.boot;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.boot.dao.UserDAO;
import global.sesoc.boot.repository.UserRepository;
import global.sesoc.boot.vo.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/*
	 * @Autowired UserRepository userRepository;
	 */

	@Autowired
	SqlSession sqlSession;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/comu", method = RequestMethod.GET)
	public String comu() {
		return "comu";
	}

	@RequestMapping(value = "/hicu", method = RequestMethod.GET)
	public String hicu() {
		return "hicu";
	}

	@RequestMapping(value = "/testing", method = RequestMethod.GET)
	public String testing() {
		return "testing";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(User user) {
		logger.info("data 수집 완료 ==> " + user.toString());

		UserDAO dao = sqlSession.getMapper(UserDAO.class);

		int result = 0;

		try {
			result = dao.insert(user);
			logger.info("insert count ==> " + result);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/";
	}
}
